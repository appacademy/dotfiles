require 'erb'

REPO = File.expand_path("../..", __FILE__)

HOME = ENV['HOME']

FILES = [
  "atom/config.cson",
  "aliases",
  "bash_profile",
  "bashrc",
  "eslintrc",
  "gemrc",
  "gitconfig",
  "gitignore",
  "pryrc",
  "railsrc",
  "rspec",
  "rubocop.yml",
  "sqliterc"
].freeze

class Dotfile
  DIR = File.join(REPO, "dot")

  attr_reader :name

  def self.record_aa_config_dir
    File.write(File.join(HOME, ".aa_config_dir"), DIR)
  end

  def self.remove_broken_symlinks
    # clean up old symlinks from previous architecture
    `find -L "#{HOME}" -maxdepth 1 -type l -exec rm {} +`
  end

  def initialize(name)
    @name = name
    @diffed = false
  end

  def text
    @text ||= ERB.new(File.read(source_path)).result(binding)
  end

  def diff
    @diff ||= compile_diff
  end

  def changed?
    !diff.empty?
  end

  def install
    ensure_parent_dir
    File.write(target_path, text)
  end

  def source_path
    File.join(DIR, name)
  end

  def target_path
    File.join(HOME, ".#{name}")
  end

  private

  def compiled_path
    File.expand_path("../.diff_#{File.basename(source_path)}", source_path)
  end

  def compile_diff
    File.write(compiled_path, text)
    diff = `diff -B \
      --unchanged-line-format= \
      --new-line-format= \
      --old-line-format='%L' \
      #{target_path} #{compiled_path} 2>/dev/null`.chomp
    File.delete(compiled_path)
    diff
  end

  def ensure_parent_dir
    `mkdir -p "$(dirname "#{target_path}")"`
  end
end

class GitConfig
  class << self
    attr_reader :user_name, :user_email
  end

  def self.[](key)
    result = `git config --global #{key}`.chomp
    result = nil if result.empty?
    result
  end

  def self.[]=(key, value)
    `git config --global #{key} "#{value}"`
  end

  def self.fetch_user_info
    @user_name = self['user.name']
    @user_email = self['user.email']
  end

  def initialize
    raise NotImplementedError, "class not meant to be instantiated"
  end
end

def main
  GitConfig.fetch_user_info

  dotfiles = FILES.map do |name|
    Dotfile.new(name)
  end

  changed = dotfiles.select(&:changed?)

  if changed.empty? || user_consents?(changed)
    install_dotfiles(dotfiles)
  else
    puts "Dotfiles installation cancelled."
  end
end

def install_dotfiles(dotfiles)
  dotfiles.each(&:install)
  Dotfile.record_aa_config_dir
  Dotfile.remove_broken_symlinks
  puts "Dotfiles successfully installed!"
end

def user_consents?(changed_dotfiles)
  puts diff_warning(changed_dotfiles)
  puts "\n\nContinue? (y/n)"
  input = gets
  input.nil? || input.downcase.include?('y')
end

def diff_warning(changed_dotfiles)
  diffs = changed_dotfiles.map do |dotfile|
    title = dotfile.target_path
    "#{title}\n#{'=' * title.length}\n#{dotfile.diff}"
  end
  "#{DIFF_WARNING}\n#{diffs.join("\n\n")}"
end

DIFF_WARNING = <<WARNING.freeze
#{File.basename(__FILE__)} will modify the following config files, \
overwriting these lines. If you want to keep any of this \
configuration, please backup these files before continuing. You can \
merge in your changes afterward.

(Note: You can add custom bash configuration to `#{HOME}/.profile` and \
it will be automatically loaded.)
WARNING

main if __FILE__ == $PROGRAM_NAME

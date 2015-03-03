ln -sf ~/.dotfiles/aliases ~/.aliases
ln -sf ~/.dotfiles/atom ~/.atom
ln -sf ~/.dotfiles/bashrc ~/.bashrc
ln -sf ~/.dotfiles/gemrc ~/.gemrc
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/gitignore ~/.gitignore
ln -sf ~/.dotfiles/inputrc ~/.inputrc
ln -sf ~/.dotfiles/irbrc ~/.irbrc
ln -sf ~/.dotfiles/jshintrc ~/.jshintrc
ln -sf ~/.dotfiles/profile ~/.profile
ln -sf ~/.dotfiles/pryrc ~/.pryrc
ln -sf ~/.dotfiles/rdebugrc ~/.rdebugrc
ln -sf ~/.dotfiles/rubocop.yml ~/.rubocop.yml
ln -sf ~/.dotfiles/sqliterc ~/.sqliterc
ln -sf ~/.dotfiles/vimrc ~/.vimrc
cp ~/.dotfiles/atom/config.cson ~/.atom/config.cson
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "~/.dotfiles/shortcuts.png"'
sudo ln -sF ~/.dotfiles/shortcuts.png /System/Library/CoreServices/DefaultDesktop.jpg
sudo rm -rf /Library/Caches/com.apple.desktop.admin.png

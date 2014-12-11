linterPath = atom.packages.getLoadedPackage('linter').path
Linter = require "#{linterPath}/lib/linter"
findFile = require "#{linterPath}/lib/util"

class LinterBootlint extends Linter
  # The syntax that the linter handles. May be a string or
  # list/tuple of strings. Names should be all lowercase.
  @syntax: ['text.html.basic', 'text.html.twig']

  # A string, list, tuple or callable that returns a string, list or tuple,
  # containing the command line (with arguments) used to lint.
  cmd: 'bootlint'

  linterName: 'bootlint'

  # A regex pattern used to extract information from the executable's output.
  regex:
    '.+?:(?<line>\\d+)?' +
    '(:(?<col>\\d+))?' +
    ' (?<message>((?<error>E)|(?<warning>W)).+?)\\n'

  regexFlags: 's'

  isNodeExecutable: yes

  constructor: (editor) ->
    super(editor)

    atom.config.observe 'linter-bootlint.bootlintExecutablePath', =>
      @executablePath = atom.config.get 'linter-bootlint.bootlintExecutablePath'

  destroy: ->
    atom.config.unobserve 'linter-bootlint.bootlintExecutablePath'

module.exports = LinterBootlint

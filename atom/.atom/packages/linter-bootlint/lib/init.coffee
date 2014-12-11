path = require 'path'

module.exports =
  configDefaults:
    bootlintExecutablePath: path.join __dirname, '..', 'node_modules', '.bin'

  activate: ->
    console.log 'activate linter-bootlint'

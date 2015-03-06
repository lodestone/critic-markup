module.exports =
  activate: ->
    atom.commands.add 'atom-text-editor', "critic-markup:addition": => @addition()

  addition: ->
    # Assumes active pane item is an editor
    editor = atom.workspace.getActivePaneItem()
    editor.insertText("{++++}")

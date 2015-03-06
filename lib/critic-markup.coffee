module.exports =
  activate: ->
    atom.commands.add 'atom-workspace', "critic-markup:addition": => @addition()
    atom.commands.add 'atom-workspace', "critic-markup:subtraction": => @subtraction()

  addition: ->
    # Assumes active pane item is an editor
    editor = atom.workspace.getActivePaneItem()
    editor.insertText("{++++}")

  subtraction: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText("{----}")

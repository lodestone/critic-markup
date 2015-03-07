module.exports =
  activate: ->
    atom.commands.add 'atom-workspace', "critic-markup:addition": => @addition()
    atom.commands.add 'atom-workspace', "critic-markup:deletion": => @deletion()
    atom.commands.add 'atom-workspace', "critic-markup:substitution": => @substitution()
    atom.commands.add 'atom-workspace', "critic-markup:highlight": => @highlight()
    atom.commands.add 'atom-workspace', "critic-markup:comment": => @comment()

  addition: ->
    # Assumes active pane item is an editor
    editor = atom.workspace.getActivePaneItem()
    editor.insertText("{++++}")

  deletion: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText("{----}")

  substitution: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText("{~~ ~> ~~}")

  highlight: ->
    editor = atom.workspace.getActivePaneItem()
    console.log editor
    editor.insertText("{====}{>><<}")

  comment: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText("{>><<}")

module.exports =
  activate: ->
    atom.commands.add 'atom-workspace',
      "critic-markup:addition": =>
        @addition()
      "critic-markup:deletion": =>
        @deletion()
      "critic-markup:substitution": =>
        @substitution()
      "critic-markup:highlight": =>
        @highlight()
      "critic-markup:comment": =>
        @comment()

  addition: ->
    editor = atom.workspace.getActivePaneItem()
    selection = editor.getLastSelection()
    text = selection.getText()
    editor.insertText("{++"+text+"++}")

  deletion: ->
    editor = atom.workspace.getActivePaneItem()
    selection = editor.getLastSelection()
    text = selection.getText()
    editor.insertText("{--"+text+"--}")

  substitution: ->
    editor = atom.workspace.getActivePaneItem()
    selection = editor.getLastSelection()
    text = selection.getText()
    editor.insertText("{~~"+text+"~> ~~}")

  highlight: ->
    editor = atom.workspace.getActivePaneItem()
    selection = editor.getLastSelection()
    text = selection.getText()
    editor.insertText("{=="+text+"==}{>><<}")

  comment: ->
    editor = atom.workspace.getActivePaneItem()
    selection = editor.getLastSelection()
    text = selection.getText()
    editor.insertText("{>>"+text+"<<}")

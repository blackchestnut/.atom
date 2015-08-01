# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

jumpTo = (row_diff) ->
  return unless editor = atom.workspace.getActiveTextEditor()
  cursor = editor.getCursorScreenPosition()
  cursor.row += row_diff
  editor.setCursorScreenPosition(cursor)

atom.commands.add 'atom-text-editor', 'custom:vim-jump-up', ->
  jumpTo(-10)

atom.commands.add 'atom-text-editor', 'custom:vim-jump-down', ->
  jumpTo(10)

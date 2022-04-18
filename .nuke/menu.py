import nuke

toolbar = nuke.toolbar("Nodes")

toolbar.addCommand( "Channel/Shuffle1", "nuke.createNode('Shuffle')")
toolbar.addCommand( "Channel/ShuffleCopy", "nuke.createNode('ShuffleCopy')")

##Grain_CB
nuke.menu("Nodes").addCommand("Draw/Grain_CB", "nuke.createNode('Grain_CB')", icon="~/.nuke/Grain_CB/GrainCB.png")


try:
    import shortcuteditor
    shortcuteditor.nuke_setup()
    import pixelfudger
except Exception:
    import traceback
    traceback.print_exc()

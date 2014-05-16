panelopen = (event) ->
    if event.srcElement.classList
        if 'cli-status' in event.srcElement.classList
            panel = atom.workspaceView.horizontal.find('.cli-status')
            panel.fadeToggle(300)

panelclosed = (event) ->
    if event.srcElement.classList
        if 'cli-status' in event.srcElement.classList
            panel = atom.workspaceView.horizontal.find('.cli-status')
            panel.fadeToggle(300)

document.querySelector('.vertical').addEventListener('DOMNodeInserted', panelopen, false)
document.querySelector('.vertical').addEventListener('DOMNodeRemoved', panelclosed, false)

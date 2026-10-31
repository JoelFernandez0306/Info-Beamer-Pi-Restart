-- this package has no visual output. the restart logic lives in "service".
gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

function node.render()
    gl.clear(0, 0, 0, 1)
end

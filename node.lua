-- this package draws nothing. the restart logic lives in "service".
-- it must not clear the screen, as it can run nested inside a player package.
gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

function node.render()
end

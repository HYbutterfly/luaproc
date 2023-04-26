local core = require "luaproc"


local luaproc = setmetatable({}, {__index = core})


function luaproc.newproc(filename)
    local f = assert(io.open(filename))
    local s = f:read("all")
    f:close()
    return core.newproc(s)
end




return luaproc
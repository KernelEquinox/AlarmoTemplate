local TimeSignalCharacters = include("utility/clock/TimeSignalCharacters")
local character = {}
setmetatable(character, {
    __index = TimeSignalCharacters
})

function character:getGameObjects(A1_2)
    local child = self:createChild(self:getViewportId(), "character")
    local tbl = {}
    table.insert(tbl, child)
    return tbl
end

return character

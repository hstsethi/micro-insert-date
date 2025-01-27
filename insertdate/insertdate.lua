local buffer = import("micro/buffer")
local micro = import("micro")
local config = import("micro/config")

function init()
    config.MakeCommand("insertDate", insertDate, config.NoComplete)
end

function insertDate(bp)
    local buf = bp.Buf
    local cursor = bp.Cursor
    local loc = buffer.Loc(cursor.Loc.X, cursor.Loc.Y)
    local date = os.date("%Y-%m-%d")

    buf:Insert(loc, date)
end

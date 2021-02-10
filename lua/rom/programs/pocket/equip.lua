if not pocket then
    printError("Requires a Pocket Computer")
    return
end

local ok, err = pocket.equipBack()
if not ok then
    printError(err)
else
    print("Item equipped")
end

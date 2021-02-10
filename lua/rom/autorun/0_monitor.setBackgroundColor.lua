local nativePeripheralCall = peripheral.call
function peripheral.call(name, method, ...)
    if method == "setBackgroundColor" or method == "setBackgroundColour" then
        if peripheral.isPresent (name) and peripheral.getType(name) == "monitor" then
            if not nativePeripheralCall(name,"isColor") then
                local color = ...
                if 2 <= color and color <= 64 then
                    color = 256
                elseif 16384 >= color and color >= 512 then
                    color = 128
                end
                return nativePeripheralCall(name, method, color)
            end
        end
    end
    return nativePeripheralCall(name, method, ...)
end

local nativeTermSetBackgroundColor = term.setBackgroundColor
function term.setBackgroundColor(color)
    if not term.isColor() then
        if 2 <= color and color <= 64 then
            color = 256
        elseif 16384 >= color and color >= 512 then
            color = 128
        end
    end
    return nativeTermSetBackgroundColor(color)
end
term.setBackgroundColour = term.setBackgroundColor

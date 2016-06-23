--- create some shaders to build a shaderSprite
-- @author zrong(zengrong.net)
-- Creation 2014-03-31

--------------------------------
-- @module shader

--[[--


]]

local shader = {}

shader.colorAdjust = {dnp.ColorAdjustSprite}
shader.tail        = {dnp.TailSprite}
shader.laser        = {dnp.LaserSprite}
shader.ripple        = {dnp.RippleSprite}
shader.lightning        = {dnp.LightningSprite}
shader.shatter        = {dnp.ShatterSprite}

function shader.newShader(__shaderName, __texture)
    local __cls = unpack(__shaderName)
    return __cls:create(__texture)
end

return shader

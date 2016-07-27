--------------------------------
--
--@module RippleView
--@extend ViewBase
local RippleView = class("RippleView", cc.load("mvc").ViewBase)


function RippleView:onCreate()
    self.sp =   display.newShaderSprite("Resource/background.png", shader.ripple)
    self:add(self.sp)
     self.sp:setPosition(display.center)
    self:enTouch()
end


function RippleView:onClick( path,node,funcName)
end


----------------
--游戏的控制逻辑
--
--@function [parent=#src.app.controllers.ShapeController] registerTouchEvent
function RippleView:touch(event)

    if event.name == "began" then
        self.sp:doTouch(cc.p(event.x,event.y),500,20)
        return true
    elseif event.name == "moved" then
    --    self.sp:setPosition(event.x,event.y)
    elseif event.name == "ended" then
    end

end


return RippleView

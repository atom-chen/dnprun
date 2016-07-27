--------------------------------
--
--@module GhostView
--@extend ViewBase
local GhostView = class("GhostView", cc.load("mvc").ViewBase)


function GhostView:onCreate()
    self.sp =   display.newShaderSprite("Resource/background.png", shader.ghost)
    self:addChild(self.sp,1,1)
    self.sp:setPosition(500,900)
end


function GhostView:onClick( path,node,funcName)
end


----------------
--游戏的控制逻辑
--
--@function [parent=#src.app.controllers.ShapeController] registerTouchEvent
function GhostView:touch(event)

    if event.name == "began" then
        self.sp =   display.newShaderSprite("r2.png", shader.tail)
        self:addChild(self.sp,1,1)
        self.sp:setPosition(event.x,event.y)
        self.sp:setMinDis(14)
        
--        self.sp:runAction(ac.ccEasing(cc.MoveBy:create(0.2,cc.p(500,1000)),12))
        return true
    elseif event.name == "moved" then
    self.sp:setPosition(event.x,event.y)
    elseif event.name == "ended" then
    end

end


return GhostView

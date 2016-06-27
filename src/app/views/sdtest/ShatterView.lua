--------------------------------
--
--@module ShatterView
--@extend ViewBase
local ShatterView = class("ShatterView", cc.load("mvc").ViewBase)


function ShatterView:onCreate()
    self.sp =   display.newShaderSprite("Resource/background.png", shader.shatter)
    self:add(self.sp)
    self.sp:setPosition(display.center)
    self:enTouch()
end


function ShatterView:onClick( path,node,funcName)
end


----------------
--游戏的控制逻辑
--
--@function [parent=#src.app.controllers.ShapeController] registerTouchEvent
function ShatterView:touch(event)

    if event.name == "began" then
       self.sp:setOpacity(0)
--       self.sp:stopAllActions()
      self.sp:startShatter(4)
      
        local function call(parameters)
      	
            self.sp:setOpacity(255)
      end
      
      ac.ccDellayToCall(self,5,call)
        
--        self.sp:runAction(ac.ccEasing(cc.MoveBy:create(0.2,cc.p(500,1000)),12))
        return true
    elseif event.name == "moved" then
    self.sp:setPosition(event.x,event.y)
    elseif event.name == "ended" then
    end

end


return ShatterView

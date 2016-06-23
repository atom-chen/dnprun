--------------------------------
--
--@module LaserView
--@extend ViewBase
local LaserView = class("LaserView", cc.load("mvc").ViewBase)


function LaserView:onCreate()
    self.sp1 =   display.newShaderSprite("demoRes/light2.png", shader.laser,{"demoRes/laserRes/mask.png","demoRes/laserRes/mask2.png","demoRes/laserRes/noise.png","demoRes/laserRes/noise2.png"})
    self:addChild(self.sp1,1,1)
    self.sp1:setPosition(600,700)
    self.sp1:setPorN(-1);
    self.sp1:setScaleY(1.3);
    self.sp1:setBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
    self.sp1:setGlowColor(1.6)
    self.sp1:setLightColor(0)
    self.sp1:setNoiseScale(2.2)
    self.sp1:setStart(cc.p(500,500))
    self.sp1:setEnd(cc.p(500,1500))

    self.sp2 =   display.newShaderSprite("demoRes/light2.png", shader.laser,{"demoRes/laserRes/mask.png","demoRes/laserRes/mask2.png","demoRes/laserRes/noise.png","demoRes/laserRes/noise2.png"})
    self:addChild(self.sp2,1,1)
    self.sp2:setPosition(600,700)
    self.sp2:setScaleY(1.3);
    self.sp2:setPorN(1);
    self.sp2:setBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
    self.sp2:setGlowColor(1.6)
    self.sp2:setLightColor(0)
    self.sp2:setNoiseScale(2.2)
    
    self.sp2:setStart(cc.p(500,500))
    self.sp2:setEnd(cc.p(500,1500))

    self.sp3 =   display.newShaderSprite("demoRes/light2.png", shader.laser,{"demoRes/laserRes/mask.png","demoRes/laserRes/mask2.png","demoRes/laserRes/noise.png","demoRes/laserRes/noise2.png"})
    self:addChild(self.sp3,1,1)
    self.sp3:setPosition(600,700)
    self.sp3:setScaleY(0.4);
    self.sp3:setPorN(1);
    self.sp3:setBlendFunc(GL_ONE, GL_ONE);
    self.sp3:setGlowColor(2.5)
    self.sp3:setLightColor(0.5)
    self.sp3:setNoiseScale(1.5)
    self.sp3:setStart(cc.p(500,500))
    self.sp3:setEnd(cc.p(500,1500))
    
    self.sp4 =   display.newShaderSprite("demoRes/light2.png", shader.laser,{"demoRes/laserRes/mask.png","demoRes/laserRes/mask2.png","demoRes/laserRes/noise.png","demoRes/laserRes/noise2.png"})
    self:addChild(self.sp4,1,1)
    self.sp4:setPosition(600,700)
    self.sp4:setScaleY(0.4);
    self.sp4:setPorN(-1);
    self.sp4:setBlendFunc(GL_ONE, GL_ONE);
    self.sp4:setGlowColor(2.5)
    self.sp4:setLightColor(0.5)
    self.sp4:setNoiseScale(1.5)  --setNoiseScale
    self.sp4:setStart(cc.p(500,500))
    self.sp4:setEnd(cc.p(500,1500))
--    self:enTouch()
end


function LaserView:onClick( path,node,funcName)
end


----------------
--游戏的控制逻辑
--
--@function [parent=#src.app.controllers.ShapeController] registerTouchEvent
function LaserView:touch(event)

    if event.name == "began" then
        self.sp =   display.newShaderSprite("r2.png", shader.tail)
        self:addChild(self.sp,1,1)
        self.sp:setPosition(event.x,event.y)
        self.sp:setMinDis(14)

        self.sp:runAction(ac.ccEasing(cc.MoveBy:create(0.2,cc.p(500,1000)),12))
        return true
    elseif event.name == "moved" then
    --    self.sp:setPosition(event.x,event.y)
    elseif event.name == "ended" then
    end

end


return LaserView

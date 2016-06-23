--------------------------------
--
--@module LightningView
--@extend ViewBase
local LightningView = class("LightningView", cc.load("mvc").ViewBase)


function LightningView:onCreate()
    self.sp1 =   display.newShaderSprite("demoRes/lightingSeg.png", shader.lightning)
    self:addChild(self.sp1,1,1)
    self.sp1:setPosition(600,700)
    self.sp1:setStartAndEnd(cc.p(-789,1360),cc.p(1747,1360))
    self.sp1:genLighting()

    local  oneFlashTime=0.7
    local startOpacity=255;
    local endOpacity=80;

    local jitterTimeOfOneFlash=oneFlashTime/4;
    local jitterInterval=oneFlashTime/6;
    local isDoJitter=true;

    local fadeTp = ac.ccFadeTo(oneFlashTime,endOpacity)
    local genl =  function()
        self.sp1:genLighting()
    end

    local jitter =  function()
        self.sp1:doJitter()
    end
    local resetOpacity =  function()
        self.sp1:setOpacity(startOpacity)
    end


    local action1 = ac.ccSeq(
        ac.ccCall(resetOpacity),fadeTp,ac.ccCall(genl)
    )
    local action2 = ac.ccSeq(
        ac.ccDelay(jitterInterval), ac.ccCall(jitter), ac.ccDelay(jitterInterval),ac.ccCall(jitter), ac.ccDelay(jitterInterval),ac.ccCall(jitter), ac.ccDelay(jitterInterval),ac.ccCall(jitter)
    )

    ac.execute(self.sp1,cc.RepeatForever:create(cc.Spawn:create(action1,action2)))

end


function LightningView:onClick( path,node,funcName)
end


----------------
--游戏的控制逻辑
--
--@function [parent=#src.app.controllers.ShapeController] registerTouchEvent
function LightningView:touch(event)

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


return LightningView

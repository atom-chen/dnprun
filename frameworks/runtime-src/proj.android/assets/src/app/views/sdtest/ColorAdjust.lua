--------------------------------
--
--@module ColorAdjust
--@extend ViewBase
local ColorAdjust = class("ColorAdjust", cc.load("mvc").ViewBase)

ColorAdjust.RESOURCE_FILENAME = "sd.color_adjust.lua"

function ColorAdjust:onCreate()
    self.sp =   display.newShaderSprite("Resource/background.png", shader.colorAdjust)
    self:addChild(self.sp,1,1)
    self.sp:setPosition(600,900)
--    
--    
--    display.loadSpriteFrames("Resource/common.plist","Resource/common.png")
--    self.sp:addChild(display.newSprite("#l-1.png"))
    
    
    
--    local kitty = sp.SkeletonAnimation:create("Resource/skeleton.json","Resource/skeleton.atlas",0.2)
----    kitty:setSkin("01")
--    kitty:setSlotsToSetupPose()
--    kitty:setPosition(500,800)
--    kitty:addAnimation(0,"animation", true)
--
--    self:addChild(kitty)
    
end


function ColorAdjust:onClick( path,node,funcName)
      if node:getName()=="sd1" then
        local function btnCallback(  node,eventType,value  )
            local percent = node:getPercent()*3.6 -180
            self.t1:setString(percent)
            self.sp:setDH(percent)
        end
        return btnCallback
      elseif node:getName()=="sd2" then
        local function btnCallback(  node,eventType,value  )
            local percent = node:getPercent()/50 -1
            self.t2:setString(percent)
            self.sp:setDS(percent)
        end
        return btnCallback
    elseif node:getName()=="sd3" then
        local function btnCallback(  node,eventType,value  )
            local percent = node:getPercent()/50-1
            self.t3:setString(percent)
            self.sp:setDL(percent)
        end
        return btnCallback
    end
end


return ColorAdjust

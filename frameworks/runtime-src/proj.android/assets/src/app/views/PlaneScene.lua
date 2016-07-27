
local PlaneScene = class("PlaneScene", cc.load("mvc").ViewBase)

local GamePlaneView = import(".plane.GamePlaneView")
--local GamePlaneMainView = import(".plane.GamePlaneMainView")

function PlaneScene:onCreate()
    display.newSprite("f1.png")
    :move(400,400)
    :addTo(self)
    
    self:onGame()
end

function PlaneScene:onClick( path,node,funcName)
    printf("onClick")
    --    if path == "PlaneScene.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
    local function btnCallback(  node,eventType  )
    --TODO
    end
    return btnCallback
        --        end
end


function PlaneScene:onGame()
    GamePlaneView:create(self:getApp(),"plane")
        :addTo(self)

--    GamePlaneMainView:create(self:getApp(),"main")
--        :addTo(self)

--    local s = dnp.ColorAdjustSprite:create("Resource/background.png")
--    s:setShader()
--    
--    local s =   display.newShaderSprite("Resource/background.png", shader.colorAdjust)
--    
--    self:addChild(s,1,1)
--    
--    s:setPosition(500,900)
--    s:setDH(500)
end





return PlaneScene


local PlaneScene = class("PlaneScene", cc.load("mvc").ViewBase)

local GamePlaneView = import(".plane.GamePlaneView")
local GamePlaneMainView = import(".plane.GamePlaneMainView")

function PlaneScene:onCreate()

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
--    GamePlaneView:create(self:getApp(),"plane")
--        :register()
--        :addTo(self)
--
--    GamePlaneMainView:create(self:getApp(),"main")
--        :register()
--        :addTo(self)

--    local s = dnp.ColorAdjustSprite:create("Resource/background.png")
--    s:setShader()
--    
    local s =   display.newShaderSprite("Resource/background.png", shader.colorAdjust)
    
    self:addChild(s,1,1)
    
    s:setPosition(500,900)
    s:setDH(500)
end





return PlaneScene

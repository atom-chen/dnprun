
local ShaderScene = class("ShaderScene", cc.load("mvc").ViewBase)

ShaderScene.RESOURCE_FILENAME = "sd.shaderTest.lua"

local ColorAdjust = import("app.views.sdtest.ColorAdjust")
local TailView = import("app.views.sdtest.TailView")
local LaserView = import("app.views.sdtest.LaserView")
local RippleView = import("app.views.sdtest.RippleView")
local LightningView = import("app.views.sdtest.LightningView")
local ShatterView = import("app.views.sdtest.ShatterView")
local GhostView = import("app.views.sdtest.GhostView")

function ShaderScene:onCreate()
    self.testLayer = {ColorAdjust,TailView,LaserView,RippleView,LightningView,ShatterView,GhostView}
    self.curLayer = 1

    --    ColorAdjust:create(self:getApp(),"level")
    --        :addTo(self)
    --    TailView:create(self:getApp(),"tail")
    --        :addTo(self)
    --    LaserView:create(self:getApp(),"LaserView")
    --        :addTo(self)

    self:createLayer()
end

function ShaderScene:onClick( path,node,funcName)
    printf("onClick")
    if  funcName =="preClick" then
        local function btnCallback(  node,eventType  )
            self.curLayer = self.curLayer + 1
            if self.curLayer> #self.testLayer then
                self.curLayer = 1
            end
            self:createLayer()
        end
        return btnCallback
    elseif  funcName =="backClick" then
        local function btnCallback(  node,eventType  )
            self.curLayer = self.curLayer - 1
            if self.curLayer <=0 then
                self.curLayer = #self.testLayer
            end
            self:createLayer()
        end
        return btnCallback
    end
end




function ShaderScene:createLayer()
    if self.cl  then
        self.cl:closeSelf()
    end
    self.cl =  self.testLayer[self.curLayer]:create(self:getApp(),"level")
        :addTo(self)

end





return ShaderScene

--------------------------------
--
--@module GamePlaneView
--@extend ViewBase
local GamePlaneView = class("GamePlaneView", cc.load("mvc").ViewBase)

GamePlaneView.RESOURCE_FILENAME = "plane.layer_plane.lua"


function GamePlaneView:bingRescource()
    self.plane = self:getChild("plane")
end

function GamePlaneView:onCreate()
    self:bingRescource()
    self:setSpeed(0.7)
    self:runAnimation("animation0",true)


    self.plane:move(display.width/2,self.plane:getContentSize().height/2)
    self.bullets = {}


    self:enUpdate()
--    self:unscheduleUpdate()

--    local layer =  display.newLayer()
--        --        :onTouch(handler(self, self.onTouch))
--        :onTouch(handler(self, self.onTouch))--多点，开启moved，ended
--        :addTo(self)
--    layer:setTouchEnabled(false)

    self:enTouch()
end

local bultDt = 0.1

local bulletTime = bultDt

function GamePlaneView:update(dt)
    bulletTime = bulletTime-dt
    if bulletTime<=0 then
        local bt =  display.newSprite("Resource/atlas/bullet-1.png",self.plane:getPositionX(),self.plane:getPositionY()+50)
            :addTo(self)

        table.insert(self.bullets,bt)

        bulletTime = bultDt
    end

    for _, bullet in pairs(self.bullets) do
        bullet:setPositionY(bullet:getPositionY()+12)
    end
end

function GamePlaneView:onClick( path,node,funcName)
    --    printf("onClick")
    --    if path == "GamePlaneView.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
    local function btnCallback(  node,eventType  )
        --TODO
        print("test"..funcName)
    end
    return btnCallback
        --        end
end

local beginX,beginY
local planeX,planeY

function GamePlaneView:touch(event)
    if event.name == "began" then
        --需要返回true
        planeX,planeY = self.plane:getPosition()
        beginX = event.x
        beginY =  event.y
        return true
    elseif event.name == "moved" then
        self.plane:setPositionX(planeX+(event.x-beginX))
        self.plane:setPositionY(planeY+(event.y-beginY))
    elseif event.name == "ended" then
        beginX=nil
        beginY=nil
        planeX=nil
        planeY=nil
    end
end

return GamePlaneView

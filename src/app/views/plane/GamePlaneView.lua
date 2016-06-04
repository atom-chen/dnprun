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

    local bultDt = 0.1

    local bulletTime = bultDt
    local function update(dt)
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
    self:onUpdate(update)


    local layer =  display.newLayer()
        --        :onTouch(handler(self, self.onTouch))
        :onTouch(handler(self, self.onTouch),true)--多点，开启moved，ended
        :addTo(self)

end

function GamePlaneView:mm( path,node,funcName)

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

function GamePlaneView:onTouch(event)
    if event.name == "began" then
        --需要返回true
        planeX,planeY = self.plane:getPosition()
        beginX = event.points[0].x
        beginY =  event.points[0].y
    elseif event.name == "moved" then
        self.plane:setPositionX(planeX+(event.points[0].x-beginX))
        self.plane:setPositionY(planeY+(event.points[0].y-beginY))

    elseif event.name == "ended" then
        beginX=nil
        beginY=nil
        planeX=nil
        planeY= nil
    end
end

return GamePlaneView

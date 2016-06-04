--------------------------------
--
--@module GamePlaneView
--@extend ViewBase
local GamePlaneView = class("GamePlaneView", cc.load("mvc").ViewBase)

GamePlaneView.RESOURCE_FILENAME = "layer_plane.lua"


function GamePlaneView:bingRescource()
    self.plane = self:getChild("plane")
end

function GamePlaneView:onCreate()
    self:bingRescource()
--    self:runAnimation("animation0",true)
    self.plane:move(display.width/2,self.plane:getContentSize().height/2)
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


return GamePlaneView

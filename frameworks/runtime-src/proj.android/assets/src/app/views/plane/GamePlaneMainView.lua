--------------------------------
--
--@module GamePlaneMainView
--@extend ViewBase
local GamePlaneMainView = class("GamePlaneMainView", cc.load("mvc").ViewBase)

GamePlaneMainView.RESOURCE_FILENAME = "plane.layer_plane_main.lua"

GamePlaneMainView.RESOURCE_BINDING = {
    touches = nil,
    actions = {enterAni = "enter",enterEvent = nil,exitAni = "exit",exitEvent = "exitEnd"}
}


function GamePlaneMainView:bingRescource()
end

function GamePlaneMainView:onCreate()
--    self:runAnimation("play",true)
    
--    helper.saveSloterData("testandroind","android123")
--    
--    local text =  self:getChild("text")
--    local t = helper.getSloterData("testandroind")
--    text:setString(t)
end


function GamePlaneMainView:onClick( path,node,funcName)
    if  node:getName()=="Button_1" and funcName =="onStartClick" then
        local function btnCallback(  node,eventType  )
            --            self:setVisible(false)
            --            cc.Application:getInstance():openURL("http://www.baidu.com")
--            local function callback(re)
--                print(re)
--            end
--
--            gamer:playVungleAd(callback)
--            gamer:wxShareWeb(1,"http://www.baidu.con","111","2222")
        end
        return btnCallback
    end
end


return GamePlaneMainView

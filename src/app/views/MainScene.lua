
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

MainScene.RESOURCE_FILENAME = "scene_main.lua"

local GameView = import(".GameView")
local MapView = import(".MapView")
local KTGroundView = import(".KTGroundView")
local KTTopView = import(".KTTopView")
local KTBottomView = import(".KTBottomView")

function MainScene:onCreate()

    --    local layer = GameView:create(self:getApp(),"game")
    --                :addTo(self)




    --    local layer = MapView:create(self:getApp(),"map")
    --                :addTo(self)

    --##################################################
--    local function callback()
--    end
--    timer:start(callback, 2, 10)

    dump(sloter)
    sloter:setValueItem("12","1111")
    dump(sloter)
    sloter:save()



    local layer1 = KTGroundView:create(self:getApp(),"map")
        :addTo(self)
        
--    local layer1 = AppViews:addViewByName("app.views.KTGroundView","back",self)
        
--    local layer2 = KTTopView:create(self:getApp(),"top")
--        :register()
--        :addTo(self)
--    layer2:get():setPosition(display.width/2,display.height)
--
--    local layer3 = KTBottomView:create(self:getApp(),"bottom")
--        :addTo(self)
--    layer3:get():setPosition(display.width/2,0)

    --动作
    local sp = display.newSprite("#l-0.png")
        :addTo(self)

    ac.execute(sp, ac.ccMoveBy(2,cc.p(400,600)), {easing = 1})
    ac.execute(sp,ac.ccSeq(
        ac.ccDelay(4),ac.ccEasing(ac.ccMoveBy(3,cc.p(200,-400)),12)
    ))
    
    --计时器
--    local function callback()
----        layer1:removeSelf()
----        AppViews:getView("top"):closeSelf()
--    print("timer")
--    end
--    timer:start(callback,4,10)
--    
       local function callback()
    ----        layer1:removeSelf()
    ----        AppViews:getView("top"):closeSelf()
        print("timer")
        self:removeTimer("TEST_TIMER")
       end 
    self:addTimer("TEST_TIMER", 2 , 10 , callback )
    
    local function call()
        print("1222")
    end
    event:addEventListener("122",handler(self,call))
    event:dispatchEvent({name = "122"})
end


function MainScene:onClick( path,node,funcName)
    printf("onClick")
    --    if path == "MainScene.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
    local function btnCallback(  node,eventType  )
    --TODO
    end
    return btnCallback
        --        end
end


return MainScene

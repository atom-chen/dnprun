
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

MainScene.RESOURCE_FILENAME = "scene_main.lua"

local GameView = import(".GameView")
local MapView = import(".MapView")
local KTGroundView = import(".KTGroundView")
local KTTopView = import(".KTTopView")
local KTBottomView = import(".KTBottomView")
--local GamePlaneView = import(".GamePlaneView")

function MainScene:onCreate()

    --    local layer = GameView:create(self:getApp(),"game")
    --                :addTo(self)




    --    local layer = MapView:create(self:getApp(),"map")
    --                :addTo(self)

    --##################################################
    --    local function callback()
    --    end
    --    timer:start(callback, 2, 10)
    --
    --    local function call()
    --
    --    end
    --    self:addSelfEventListener("TAST_CALL", call)
    --
    --    event:dispatchEvent({name = "TAST_CALL"})


    --    layer2:get():setPosition(display.width/2,display.height)
    --
    --    local layer3 = KTBottomView:create(self:getApp(),"bottom")
    --        :addTo(self)
    --    layer3:get():setPosition(display.width/2,0)

    --动作
    --    local sp = display.newSprite("#l-0.png")
    --        :addTo(self)
    --
    --
    --    ac.execute(sp, ac.ccMoveBy(2,cc.p(400,600)), {easing = 1})
    --    ac.execute(sp,ac.ccSeq(
    --        ac.ccDelay(4),ac.ccEasing(ac.ccMoveBy(3,cc.p(200,-400)),12)
    --    ))
    --
    --    --计时器
    --    local function callback()
    ----        layer1:removeSelf()
    ----        AppViews:getView("top"):closeSelf()
    --    print("timer")
    --    end
    --    timer:start(callback,1,200000)
    ----
    --       local function callback()
    --    ----        layer1:removeSelf()
    --    ----        AppViews:getView("top"):closeSelf()
    --        print("timer")
    --        self:removeTimer("TEST_TIMER")
    --       end
    --    self:addTimer("TEST_TIMER", 2 , 10 , callback )
    --
    --    local function call()
    --        print("1222")
    --    end
    --    event:addEventListener("122",handler(self,call))
    --    event:dispatchEvent({name = "122"})
    --
    --
    --    local t =  crypto.encryptXXTEA("rest11", "123")
    --    print(crypto.decryptXXTEA(t, "123"))
    --
    --
    --    local tab = {}
    --    tab["Himi"]="himigame.com"
    --    tab["age"]="23"
    --
    local enjson =  json.encode(tab)
    print(enjson)
    helper.saveSloterData("test","123")

    local ts =  helper.getSloterData("test")
    print(ts)

    dump(sloter:value())


    --    local eventDispatcher = cc.Director:getInstance():getEventDispatcher()
    --    local customListenerBg = cc.EventListenerCustom:create("APP_ENTER_BACKGROUND_EVENT",
    --        handler(self, self.onEnterBackground))
    --    eventDispatcher:addEventListenerWithFixedPriority(customListenerBg, 1)


    self:onGame()
    
--    self:onTest()  


    local kitty = sp.SkeletonAnimation:create("Resource/projects/diceman.json","Resource/projects/diceman.atlas",0.2)
    kitty:setSkin("01")
    kitty:setSlotsToSetupPose()
    kitty:setPosition(500,500)
    kitty:addAnimation(0,"animation", true)

    self:addChild(kitty)


--    local function onButtonClicked()
--        print("DDDDDDDDD")
--    end
--    
--    device.showAlert("Confirm Exit", "Are you sure exit game ?", {"YES", "NO"}, onButtonClicked)
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


function MainScene:onGame()
--    local layer1 = AppViews:addViewByName("app.views.KTGroundView","back",self)
--    local layer4 = GamePlaneView:create(self:getApp(),"plane")
--        :register()
--        :addTo(self)
--        
--    local layer1= KTGroundView:create(self:getApp(),"map")
--        :addTo(self)
--    
--    local layer2= KTBottomView:create(self:getApp(),"map")
--        :addTo(self)
--    layer2:get():setPosition(display.width/2,0)
--    local layer3 = KTTopView:create(self:getApp(),"top")
--        :register()
--        :addTo(self)
--
--    layer3:get():setPosition(display.width/2,display.height)
end
function MainScene:onTest()
    local test =   display.newSprite("studio/Resource/atlas/tmw_desert_spacing.png")
    :move(500,500)

    local program = cc.GLProgram:create("shaders/colorAdjustHSL.fsh", "shaders/colorAdjustHSL.fsh")
--    program:bindAttribLocation(cc.ATTRIBUTE_NAME_POSITION, cc.VERTEX_ATTRIB_POSITION) 
--    program:bindAttribLocation(cc.ATTRIBUTE_NAME_TEX_COORD, cc.VERTEX_ATTRIB_TEX_COORD)
    program:link()
    program:updateUniforms()
   
    local glNode  = gl.glNodeCreate()
    self:addChild(glNode)
    glNode:setGLProgram( program )
    
    local function majoriDraw(transform, transformUpdated)
        local glProgramState = test:getGLProgramState()
        glNode:getGLProgramState():setUniformVec2("u_dH", 1)
        glNode:getGLProgramState():setUniformVec2("u_dS", 1)
        glNode:getGLProgramState():setUniformVec2("u_dL",1)
    end

--    glNode:scheduleUpdateWithPriorityLua(majoriDraw,0)
    glNode:registerScriptDrawHandler(majoriDraw)
--    
    
    glNode:addChild(test)
end






return MainScene

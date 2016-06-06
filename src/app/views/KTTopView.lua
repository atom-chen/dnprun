
local KTTopView = class("KTTopView", cc.load("mvc").ViewBase)

KTTopView.RESOURCE_FILENAME = "node_top.lua"
KTTopView.RESOURCE_BINDING = {
    touches = nil,
    actions = {enterAni = "enter",enterEvent = nil,exitAni = "exit",exitEvent = "exitEnd"}
}

local KTDialogView = import(".KTDialogView")

function KTTopView:onCreate()
--    printf("resource node = %s", tostring(self:getResourceNode()))
    
    --[[ you can create scene with following comment code instead of using csb file.
    -- add background image
    display.newSprite("HelloWorld.png")
        :move(display.center)
        :addTo(self)

    -- add HelloWorld label
    cc.Label:createWithSystemFont("Hello World", "Arial", 40)
        :move(display.cx, display.cy + 200)
        :addTo(self)
    ]]
--   local s =  self:getChild("top_1")
--    local s = ccui.Helper:seekWidgetByName(self:get(), "Panel_1")
----   local s  = self.resourceNode_:getChildByName("top_1")
--   s:hide()
end


function KTTopView:onClick( path,node,funcName)
--    printf("onClick")
    if  node:getName()=="Button_1" and funcName =="onHeadClick" then
            local function btnCallback(  node,eventType  )
            --TODO
        print("test"..funcName)
        
            local layer= KTDialogView:create(self:getApp(),"dialog")
                :addTo(self)
            end
            return btnCallback
        end
end


return KTTopView

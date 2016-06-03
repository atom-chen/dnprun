
local KTTopView = class("KTTopView", cc.load("mvc").ViewBase)

KTTopView.RESOURCE_FILENAME = "node_top.lua"

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

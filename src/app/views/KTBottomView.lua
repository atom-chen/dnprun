
local KTBottomView = class("KTBottomView", cc.load("mvc").ViewBase)

KTBottomView.RESOURCE_FILENAME = "node_bottom.lua"

function KTBottomView:onCreate()
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
    
    self:runAnimation("start")
end


function KTBottomView:onClick( path,node,funcName)
--    printf("onClick")
--    if path == "KTBottomView.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
            local function btnCallback(  node,eventType  )
            --TODO
        print("test"..funcName)
            end
            return btnCallback
--        end
end


return KTBottomView

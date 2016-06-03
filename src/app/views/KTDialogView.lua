
local KTDialogView = class("KTDialogView", cc.load("mvc").ViewBase)

KTDialogView.RESOURCE_FILENAME = "layer_dialog.lua"

function KTDialogView:onCreate()
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


function KTDialogView:onClick( path,node,funcName)
--    printf("onClick")
    if  node:getName()=="Button_1" and funcName =="onCloseClick" then
            local function btnCallback(  node,eventType  )
            --TODO
        print("test"..funcName)
        
            self:closeSelf()
            end
            return btnCallback
        end
end


return KTDialogView

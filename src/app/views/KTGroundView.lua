
local KTGroundView = class("KTGroundView", cc.load("mvc").ViewBase)

KTGroundView.RESOURCE_FILENAME = "layer_back.lua"

function KTGroundView:onCreate()
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

    helper.scrollable(self:get():getChildByName("background_1"), 2000)
end


function KTGroundView:onClick( path,node,funcName)
    printf("onClick")
    if path == "layer_back.lua" and node:getName()=="Button_1" and funcName =="onButton" then
        local function btnCallback(  node,eventType  )
            --TODO
            self:setSpeed(0.3)
            self:runAnimation("animation0")
        end
        return btnCallback
    else
        local function btnCallback(  node,eventType  )
            print("Button:"..node:getName().."   funcName:"..funcName)
        end
        return btnCallback
    end
    return
end




return KTGroundView

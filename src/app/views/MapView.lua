
local MapView = class("MapView", cc.load("mvc").ViewBase)

MapView.RESOURCE_FILENAME = "layer_map.lua"

function MapView:onCreate()
    --
    self._tileMap =   self:get():getChildByName("Map_1")
    local objects =  self._tileMap:getObjectGroup("Object")
    local spwanPoint =  objects:getObject("SpwanPoint")

    self.player = display.newSprite("Resource/atlas/Player.png")
        :move(spwanPoint.x,spwanPoint.y)
        :addTo(self:get())

    local layer =  display.newLayer()
        :onTouch(handler(self, self.onTouch))
--        :onTouch(handler(self, self.onTouch),true)--多点，开启moved，ended
        :addTo(self)
     
     --障碍曾   
    self._metaLayer =  self._tileMap:getLayer("Meta")
    self._metaLayer:setVisible(false)
    
--    local index =  _metaLayer:getTileGIDAt(cc.p(0,0))
--       dump(index) 
end


function MapView:tileCoordFromPosition(pos)
    local  x =math.floor( pos.x / self._tileMap:getTileSize().width)
    local y = math.floor((self._tileMap:getMapSize().height*self._tileMap:getTileSize().height-pos.y)/self._tileMap:getTileSize().height)
    return cc.p(x,y)
end


function MapView:onClick( path,node,funcName)
    --    printf("onClick")
    --    if path == "MapView.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
    local function btnCallback(  node,eventType  )
        --TODO
        print("test"..funcName)
    end
    return btnCallback
        --        end
end

function MapView:onTouch(event)
    --log("eventType = "..tostring(eventType))
    dump(event)
    if event.name == "began" then
        --需要返回true
        local titleCoord =  self:tileCoordFromPosition(cc.p(event.x,event.y))
        dump(titleCoord)
        
        local tileGid = self._metaLayer:getTileGIDAt(titleCoord)
        print(tileGid)
        if tileGid >0 then
            local porperty = self._tileMap:getPropertiesForGID(tileGid)
            print(porperty.collidable)
            
            if porperty.collidable then
            	return false
            end
            
        end
        
        gamer:gdtShowSplashAd()
        self.player:setPosition(event.x,event.y)
        printf("began")
    end
    if event.name == "moved" then
        printf("moved")
    elseif event.name == "ended" then
        printf("ended")
    end
end


return MapView


local ViewBase = class("ViewBase", cc.Node)

function ViewBase:ctor(app, name)
    self:enableNodeEvents()
    self.app_ = app
    self.name_ = name
    
    self.tag         = tagen:get()
    
    self.resourceExtend_ = nil
    
    self.events = {}
    self.timers = {}
    self.tables = {}

    -- check CSB resource file
    local res = rawget(self.class, "RESOURCE_FILENAME")
    if res then
        self:createResoueceNode(res)
    end

    local binding = rawget(self.class, "RESOURCE_BINDING")
    if res and binding then
        self:createResoueceBinding(binding)
    end

    if self.onCreate then self:onCreate() end
end

function ViewBase:getApp()
    --    return self.app_
    return DNP_APP.appName
end

function ViewBase:getName()
    return self.name_
end

--------------------
--获取最底层节点
--
--@function [parent=#.ViewBase] get
function ViewBase:get()
    return self.resourceNode_
end

--------------------
--获取整个studio文件资源，root，animation
--
--@function [parent=#.ViewBase] getExtend
function ViewBase:getExtend()
    return self.resourceExtend_
end



function ViewBase:onClick( path,node,funcName)
--    printf("onClick11")
--    if path == "MainScene.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
--            local function btnCallback(  node,eventType  )
--            --TODO
--            end
--            return btnCallback
--        end
end



function ViewBase:createResoueceNode(resourceFilename)
    if self.resourceNode_ then
        self.resourceNode_:removeSelf()
        self.resourceNode_ = nil
    end

    local  csLuaScene = require(resourceFilename).create(handler(self,self.onClick))
    self.resourceExtend_  = csLuaScene  --所有资源，root，animation
    self.resourceNode_ = csLuaScene["root"]  --底层节点
    if csLuaScene['animation'] then
        self:get():runAction(csLuaScene['animation'])
    end
    local s =  self.resourceNode_:getContentSize()
    self.resourceNode_:setAnchorPoint(cc.p(0.5,0.5))
    self.resourceNode_:setPosition(display.width/2,display.height/2)
    assert(self.resourceNode_, string.format("ViewBase:createResoueceNode() - load resouce node from file \"%s\" failed", resourceFilename))
    self:addChild(self.resourceNode_)
end

function ViewBase:createResoueceBinding(binding)
    assert(self.resourceNode_, "ViewBase:createResoueceBinding() - not load resource node")
    for nodeName, nodeBinding in pairs(binding) do
        local node = self.resourceNode_:getChildByName(nodeName)
        if nodeBinding.varname then
            self[nodeBinding.varname] = node
        end
        for _, event in ipairs(nodeBinding.events or {}) do
            if event.event == "touch" then
                node:onTouch(handler(self, self[event.method]))
            end
        end
    end
end

function ViewBase:showWithScene(transition, time, more)
    self:setVisible(true)
    local scene = display.newScene(self.name_)
    scene:addChild(self)
    --######################QHZF####################
    AppViews:clearAll()
    AppViews:setScene(scene):registerView(self)
    --######################QHZF####################
    display.runScene(scene, transition, time, more)
    return self
end


function ViewBase:onEnter()
    print("onEnter_")
end

function ViewBase:onExit_()
    print("onExit_")
end

function ViewBase:onCleanup_()
    print("onCleanup_")
    
    if next(self.events) ~=nil then
        for eventName,evt in pairs(self.events) do
            event.removeEventListenersByEvent(eventName)
        end
    end
    
    if next(self.timers) ~=nil then
        for _, time in pairs(self.timers) do
            timer:kill(time)
        end
    end
    
    if next(self.tables) ~=nil then
        for _,table in pairs(self.tables) do
            table:removeEventListenersByTag(self.tag)
        end
    end
    
end

---------------------------
--关闭视图的方法
--@function [parent=#ViewBase] closeSelf
--@param self
--@return ViewBase#ViewBase 自身句柄
function ViewBase:closeSelf()
    self:removeSelf()
end


---------------------------
--视图动画播放方法
--@function [parent=#ViewBase] runAnimation
--@param self
--@return ViewBase#ViewBase 自身句柄
function ViewBase:runAnimation(name,loop)
    self.resourceExtend_['animation']:play(name,loop or false)
end


---------------------------
--视图动画播放速度
--@function [parent=#ViewBase] setSpeed
--@param self
--@return ViewBase#ViewBase 自身句柄
function ViewBase:setSpeed(speed)
    self.resourceExtend_['animation']:setTimeSpeed(speed)
end



---------------------------
--注册自己到视图管理器
--@function [parent=#ViewBase] register
--@param self
--@return ViewBase#ViewBase 自身句柄
function ViewBase:register()
    AppViews:registerView(self)
    return self
end

---------------------------
--添加面板的事件监听
--@function [parent=#ViewBase] addEventListener
--@param self
--@param string#string resourceFilename 资源文件名
--@return ViewBase#ViewBase 自身句柄
function ViewBase:addEventListener(eventName, listener)
    event:addEventListener(eventName, listener)
    return self
end


---------------------------
--添加该面板的事件监听
--@function [parent=#ViewBase] addSelfEventListener
--@param self
--@param string#string eventName 事件命名
--@param function#function func 回调函数
function ViewBase:addSelfEventListener(eventName, func)
    self.events[eventName] = func
    self:addEventListener(eventName,func)
    return self
end



---------------------------
--添加该面板的计数器
--@function [parent=#ViewBase] addTimer
--@param self
--@param string#string eventName 事件命名
--@param number#number runCount 执行次数
--@param number#number interval 间隔
--@param function#function func 回调函数
function ViewBase:addTimer(eventName, interval , runCount , func , data)
    local timerId = timer:start(eventName,func,interval, runCount, data)
    self.timers[eventName] = timerId
end


---------------------------
--停掉面板计数器
--@function [parent=#ViewBase] addTimer
--@param self
--@param string#string timerName 事件命名
function ViewBase:removeTimer(timerName)
    timer:kill(timerName)
    self.timers[timerName] = nil
end


---------------------------
--添加该面板的数据表更新时间监听
--@function [parent=#ViewBase] addDatatableWatch
--@param self
--@param string#string tableName 数据表命名
function ViewBase:addDatatableWatch(dataTable, listener)
    dataTable:addDataListener(listener, self.tag)
    self.tables[dataTable:getEventName()] = dataTable
end


-----------------------------
----更新界面标签元素
----@function [parent=#ViewBase] updateLable
----@param self
----@param DataTable#DataTable data 提供更新数据的表
--function ViewBase:updateLable(data)
--
--    for key, var in pairs(self.delegate) do
--        if string.find(key,"lbl") == 1 then
--            local dataItem = string.gsub(key,"^lbl",'',1):lower()
--            local temp = data[dataItem]
--            if temp then
--                local lbl = tolua.cast(self.delegate[key],"cc.LabelTTF") or tolua.cast(self.delegate[key],"cc.LabelBMFont")
--                lbl:setString(temp)
--            end
--        end
--    end
--end

return ViewBase

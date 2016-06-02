
---------------------------
--应用级别的全局工具类
--
--@type app
local app = class("app")

app.events = {}

app.events.APP_ENTER_BACKGROUND_EVENT = "APP_ENTER_BACKGROUND_EVENT"
app.events.APP_ENTER_FOREGROUND_EVENT = "APP_ENTER_FOREGROUND_EVENT"

function app:ctor()

--    timer:kill("MEMERY_DUMP_TIMER")
    local function onMemoryTimer(event)
        printInfo("collect")
        collectgarbage("collect")
        collectgarbage("setstepmul", DNP_APP.gcBlock)
        
    end

    timer:start("MEMERY_DUMP_TIMER",onMemoryTimer, DNP_APP.gcInterval,10000000)

end

function app:exit()
    cc.Director:getInstance():endToLua()
    if device.platform == "windows" or device.platform == "mac" then
        os.exit()
    end
end

function app:dumpMemory()
    return string.format("%0.4f", collectgarbage("count")/1024)
end


function app.onEnterBackground()
    app.isPaused = true
    event:dispatchEvent({name = app.events.APP_ENTER_BACKGROUND_EVENT})
end

function app.onEnterForeground()
    app.isPaused = false
    event:dispatchEvent({name = app.events.APP_ENTER_FOREGROUND_EVENT})
end

return app

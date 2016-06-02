
-- 0 - disable debug info, 1 - less debug info, 2 - verbose debug info
DEBUG = 2

--######## 应用区域 #######--
DNP_APP = {
    appName = "DnpRun", 
    
    slotKey = "D*N@P#L0NGL1FE",         -- 存档加密
    confuseKey = 10240806,              -- 内存混淆
    gcInterval = 10,                    -- 垃圾回收频度(秒)
    gcBlock = 5000,                     -- 垃圾回收颗粒度(单元)
}

-- use framework, will disable all deprecated API, false - use legacy API
CC_USE_FRAMEWORK = true

-- show FPS on screen
CC_SHOW_FPS = true

-- disable create unexpected global variable
CC_DISABLE_GLOBAL = false

-- for module display
CC_DESIGN_RESOLUTION = {
    width = 640,
    height = 960,
    autoscale = "FIXED_WIDTH",
    callback = function(framesize)
        local ratio = framesize.width / framesize.height
        if ratio >= 768/1024 then
            -- iPad 768*1024(1536*2048) is 4:3 screen
            return {autoscale = "FIXED_HEIGHT"}
        end
    end
}

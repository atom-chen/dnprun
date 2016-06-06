local gamer = class("gamer")

if device.platform == device.PLATFORM.IOS then
    lucaoc =   require("cocos.cocos2d.luaoc")
end


function gamer:init()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        if DNP_AD.target.gdt then
            lucaoc.callStaticMethod("GdtAdManager","init")
        end
        if DNP_AD.target.vungle then
            lucaoc.callStaticMethod("VungleAdManager","init",{id=DNP_AD.vungle.ios})
        end
        if DNP_AD.target.unity then
            lucaoc.callStaticMethod("UnityAdManager","init",{id=DNP_AD.unity.ios})
        end
    end
end

---------------------------
-- gdt插屏广告
--
--@function [parent=#gamer] gdtLoadInerAd
function gamer:playGdtInerAd()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("GdtAdManager","playInterAd")
    end
end

---------------------------
-- gdt全屏广告
--
--@function [parent=#gamer] gdtShowSplashAd
function gamer:playGdtSplashAd()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("GdtAdManager","playSplashAd")
    end
end


---------------------------
-- 播放 UnityAd 广告
--
--@function [parent=#gamer] playUnityAd
function gamer:playUnityAd(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("UnityAdManager","playAd" ,{callback = callback})
    end
end

---------------------------
-- 查询是否 UnityAd 广告
--
--@function [parent=#gamer] isUnityAdReady
function gamer:isUnityAdReady(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("UnityAdManager","isReady",{callback = callback})
    end
end



---------------------------
-- 播放 VungleAd 广告
--
--@function [parent=#gamer] playVungleAd
function gamer:playVungleAd(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("VungleAdManager","play",{callback = callback})
    end
end


---------------------------
-- 查询是否 VungleAd 广告
--
--@function [parent=#gamer] isVungleReady
function gamer:isVungleReady(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("VungleAdManager","isReady",{callback = callback})
    end
end


return gamer

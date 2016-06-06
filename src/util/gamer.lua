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
--        if DNP_AD.target.vungle then
--            lucaoc.callStaticMethod("VungleAdManager","init",{id=DNP_AD.vungle.ios})
--        end
--        if DNP_AD.target.unity then
--            lucaoc.callStaticMethod("UnityAdManager","init",{id=DNP_AD.unity.ios})
--        end
    end
end


---------------------------
-- gdt插屏广告
--
--@function [parent=#gamer] gdtLoadInerAd
function gamer:gdtShowInerAd()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("GdtAdManager","playInterAd")
    end
end


---------------------------
-- gdt全屏广告
--
--@function [parent=#gamer] gdtShowSplashAd
function gamer:gdtShowSplashAd()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        lucaoc.callStaticMethod("GdtAdManager","playSplashAd")
    end
end


return gamer

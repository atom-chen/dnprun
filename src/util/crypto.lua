---------------------------
-- 加解密、数据编码的全局模块
--
-- @module crypto
local crypto = {}

crypto.confuseKey = 10240806


---------------------------
--混淆内存数字
--@function [parent=#crypto] confuse
--@param number#number intValue 
--@return number#number 
function crypto.confuse(intValue)
    local bit = require("bit")
    return bit.bxor(intValue, crypto.confuseKey) + crypto.confuseKey
end


---------------------------
--混淆内存数字增加值
--@function [parent=#crypto] confuse
--@param number#number confuseValue 
--@param number#number plusValue 
--@return number#number 
function crypto.confusePlus(confuseValue, plusValue)
    local bit = require("bit")
    local tmp = bit.bxor(confuseValue - crypto.confuseKey , crypto.confuseKey)
    return bit.bxor(tmp + plusValue, crypto.confuseKey) + crypto.confuseKey
end


---------------------------
--反混淆内存数字
--@function [parent=#crypto] confuse
--@param number#number intValue 
--@return number#number 
function crypto.deConfuse(intValue)
    local bit = require("bit")
    return bit.bxor(intValue - crypto.confuseKey , crypto.confuseKey)
end



return crypto

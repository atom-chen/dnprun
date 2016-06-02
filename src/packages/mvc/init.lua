
local _M = {}

_M.AppBase  = import(".AppBase")
_M.ViewBase = import(".ViewBase")

AppViews = require("packages.mvc.AppViews").new()
AppViews:setApp(DNP_APP.appName)

return _M

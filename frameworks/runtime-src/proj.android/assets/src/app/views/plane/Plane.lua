local Plane = class("Plane")

function Plane:ctor()
    self.type = nil
    self.width = nil
    self.height = nil
    self.x =nil
    self.y = nil
    self.bullet = nil
    
    self.power = 1 --子弹发射动力
end

return Plane
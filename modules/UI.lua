local a=game:GetService("TweenService")local b=game:GetService("Players")local c=b.LocalPlayer local d=c:GetMouse()local e={Color={Add=function(a,b)local c=math.min((a.R+b.R)*255,255)local d=math.min((a.G+b.G)*255,255)local e=math.min((a.B+b.B)*255,255)return Color3.fromRGB(c,d,e)end,Sub=function(a,b)local c=math.max((a.R-b.R)*255,0)local d=math.max((a.G-b.G)*255,0)local e=math.max((a.B-b.B)*255,0)return Color3.fromRGB(c,d,e)end;ToFormat=function(a)local b=math.floor(math.min(a.R*255,255))local c=math.floor(math.min(a.G*255,255))local d=math.floor(math.min(a.B*255,255))return("rgb(%d, %d, %d)"):format(b,c,d)end}}e.Create=function(a,b,c)local d=Instance.new(a)for a,b in next,b do if a~="Parent"then if typeof(b)=="Instance"then b.Parent=d else d[a]=b end end end if c then local a=Instance.new("UICorner",d)a.CornerRadius=c end return d end e.MakeDraggable=function(b,c,e)local f=nil local g=false c.InputBegan:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then g=true f=Vector2.new(d.X-b.AbsolutePosition.X,d.Y-b.AbsolutePosition.Y)end end)c.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then g=false end end)d.Move:Connect(function()if g then(a:Create(b,TweenInfo.new(math.clamp(e,0,1),Enum.EasingStyle.Sine),{Position=UDim2.new(0,d.X-f.X,0,d.Y-f.Y)})):Play()end end)end return e
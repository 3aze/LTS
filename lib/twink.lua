local a=game.Players.LocalPlayer local b=a:GetMouse()local c=game.TweenService local d=game.UserInputService local e=game.CoreGui local f=game.RunService local g=game.TextService local h=.1 local i=1 local j=TweenInfo.new(h)local k=TweenInfo.new(h,Enum.EasingStyle.Sine,Enum.EasingDirection.Out)local l="rbxassetid://297774371"local m=1 local n="rbxassetid://3926305904"local o="rbxassetid://3926307971"local p=Enum.Font.Ubuntu local function q(a)local c,d=b.X-a.AbsolutePosition.X,b.Y-a.AbsolutePosition.Y local e,f=a.AbsoluteSize.X,a.AbsoluteSize.Y c,d=math.clamp(c,0,e),math.clamp(d,0,f)return c,d,c/e,d/f end local function r(a)local b=Instance.new(a and"ImageButton"or"ImageLabel")b.Name="TitleIcon"b.BackgroundTransparency=1 b.Image=n b.ImageRectOffset=Vector2.new(524,764)b.ImageRectSize=Vector2.new(36,36)b.Size=UDim2.new(0,14,0,14)b.Position=UDim2.new(1,-17,0,3)b.Rotation=180 b.ZIndex=i return b end local function s(a)local b=Instance.new(a and"ImageButton"or"ImageLabel")b.Name="TickIcon"b.BackgroundTransparency=1 b.Image="rbxassetid://3926305904"b.ImageRectOffset=Vector2.new(312,4)b.ImageRectSize=Vector2.new(24,24)b.Size=UDim2.new(1,-6,1,-6)b.Position=UDim2.new(0,3,0,3)b.ZIndex=i return b end local function t(a)local b=Instance.new(a and"ImageButton"or"ImageLabel")b.Name="DropdownIcon"b.BackgroundTransparency=1 b.Image=o b.ImageRectOffset=Vector2.new(324,364)b.ImageRectSize=Vector2.new(36,36)b.Size=UDim2.new(0,16,0,16)b.Position=UDim2.new(1,-18,0,2)b.ZIndex=i return b end local function u(a)local b=Instance.new(a and"ImageButton"or"ImageLabel")b.Name="SearchIcon"b.BackgroundTransparency=1 b.Image=n b.ImageRectOffset=Vector2.new(964,324)b.ImageRectSize=Vector2.new(36,36)b.Size=UDim2.new(0,16,0,16)b.Position=UDim2.new(0,2,0,2)b.ZIndex=i return b end local function v(a,b)local c=Instance.new(b and"ImageButton"or"ImageLabel")c.BackgroundTransparency=1 c.Image="rbxassetid://3570695787"c.SliceCenter=Rect.new(100,100,100,100)c.SliceScale=math.clamp((a or 5)*.01,.01,1)c.ScaleType=Enum.ScaleType.Slice c.ZIndex=i return c end local function w()local a=Instance.new("ImageLabel")a.Name="DropShadow"a.BackgroundTransparency=1 a.Image=l a.ImageTransparency=m a.Size=UDim2.new(1,0,1,0)a.ZIndex=i return a end local function x()local a=Instance.new("Frame")a.BorderSizePixel=0 a.ZIndex=i return a end local function y()local a=Instance.new("ScrollingFrame")a.BackgroundTransparency=1 a.BorderSizePixel=0 a.ScrollBarThickness=0 a.ZIndex=i return a end local function z(a,b)local c=Instance.new("TextButton")c.Text=a c.AutoButtonColor=false c.Font=p c.TextColor3=Color3.fromRGB(255,255,255)c.BackgroundTransparency=1 c.TextSize=b or 12 c.Size=UDim2.new(1,0,1,0)c.ZIndex=i return c end local function A(a,b)local c=Instance.new("TextBox")c.Text=a c.Font=p c.TextColor3=Color3.fromRGB(255,255,255)c.BackgroundTransparency=1 c.TextSize=b or 12 c.Size=UDim2.new(1,0,1,0)c.ZIndex=i return c end local function B(a,b)local c=Instance.new("TextLabel")c.Text=a c.Font=p c.TextColor3=Color3.fromRGB(255,255,255)c.BackgroundTransparency=1 c.TextSize=b or 12 c.Size=UDim2.new(1,0,1,0)c.ZIndex=i c.RichText=true return c end local function C(a,b)local d=c:Create(a,j,b)d:Play()return d end local D={}function D.Load(c)local j=f:IsStudio()and a:WaitForChild("PlayerGui")or e local k=j:FindFirstChild(c)if k then k:Destroy()end local l,n,o,p l=Instance.new("ScreenGui")l.Name=c l.Parent=j n=x()n.Name="ContainerFrame"n.Size=UDim2.new(0,500,0,300)n.Position=UDim2.new(.5,-250,.5,-150)n.BackgroundTransparency=1 n.Parent=l o=w()o.Name="Shadow"o.Parent=n i=i+1 p=v(5)p.ClipsDescendants=true p.Name="MainFrame"p.Size=UDim2.new(1,-50,1,-30)p.Position=UDim2.new(0,25,0,15)p.ImageColor3=Color3.fromRGB(30,30,30)p.Parent=n local D,E,F D=y()D.Name="MenuBar"D.BackgroundTransparency=.7 D.BackgroundColor3=Color3.fromRGB(20,20,20)D.Size=UDim2.new(0,100,0,235)D.Position=UDim2.new(0,5,0,30)D.CanvasSize=UDim2.new(0,0,0,0)D.Parent=p E=v(5)E.Name="Display"E.ImageColor3=Color3.fromRGB(20,20,20)E.Size=UDim2.new(1,-115,0,235)E.Position=UDim2.new(0,110,0,30)E.Parent=p F=v(5)F.Name="TitleBar"F.ImageColor3=Color3.fromRGB(40,40,40)F.Size=UDim2.new(1,-10,0,20)F.Position=UDim2.new(0,5,0,5)F.Parent=p i=i+1 local G,H local I=true G=r(true)G.Name="Minimise"G.Parent=F H=z(c,14)H.Name="TitleButton"H.Size=UDim2.new(1,-20,1,0)H.Parent=F G.MouseButton1Down:Connect(function()I=not I if not I then C(p,{Size=UDim2.new(1,-50,0,30)})C(G,{Rotation=0})C(o,{ImageTransparency=1})else C(p,{Size=UDim2.new(1,-50,1,-30)})C(G,{Rotation=180})C(o,{ImageTransparency=m})end end)H.MouseButton1Down:Connect(function()local a,c=b.X,b.Y local e,f e=b.Move:Connect(function()local d,e=b.X,b.Y local f,g=d-a,e-c n.Position=n.Position+UDim2.new(0,f,0,g)a,c=d,e end)f=d.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then e:Disconnect()f:Disconnect()end end)end)i=i+1 local J J=Instance.new("UIListLayout")J.SortOrder=Enum.SortOrder.LayoutOrder J.Padding=UDim.new(0,5)J.Parent=D local K=0 local L={}function L.AddPage(a,c)local e=c==nil and true or c local f=v(5)f.Name=a f.Size=UDim2.new(1,0,0,20)f.LayoutOrder=K f.ImageColor3=K==0 and Color3.fromRGB(50,50,50)or Color3.fromRGB(40,40,40)f.Parent=D local i=z(a,14)i.Name=a.."Button"i.TextTransparency=K==0 and 0 or.5 i.Parent=f i.MouseButton1Down:Connect(function()spawn(function()for a,b in next,D:GetChildren()do if b:IsA("GuiObject")then local a=string.find(b.Name:lower(),f.Name:lower())local c=b:FindFirstChild(b.Name.."Button")C(b,{ImageColor3=a and Color3.fromRGB(50,50,50)or Color3.fromRGB(40,40,40)})C(c,{TextTransparency=a and 0 or.5})end end end)spawn(function()for a,b in next,E:GetChildren()do if b:IsA("GuiObject")then b.Visible=string.find(b.Name:lower(),f.Name:lower())end end end)end)local j=y()j.Visible=K==0 j.Name=a j.Size=UDim2.new(1,0,1,0)j.Parent=E K=K+1 local k=Instance.new("UIListLayout")k.SortOrder=Enum.SortOrder.LayoutOrder k.Padding=UDim.new(0,5)k.Parent=j;(k:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()local a=k.AbsoluteContentSize.Y local b=j.AbsoluteWindowSize.Y j.CanvasSize=UDim2.new(0,0,a/b+.05,0)end)local l=Instance.new("UIPadding")l.PaddingBottom=UDim.new(0,5)l.PaddingTop=UDim.new(0,5)l.PaddingLeft=UDim.new(0,5)l.PaddingRight=UDim.new(0,5)l.Parent=j if e then local a=v(5)a.Name="SearchBar"a.ImageColor3=Color3.fromRGB(35,35,35)a.Size=UDim2.new(1,0,0,20)a.Parent=j local b=A("Search...")b.Name="SearchInput"b.Position=UDim2.new(0,20,0,0)b.Size=UDim2.new(1,-20,1,0)b.TextTransparency=.5 b.TextXAlignment=Enum.TextXAlignment.Left b.Parent=a local c=u()c.Parent=a;(b:GetPropertyChangedSignal("Text")):Connect(function()local a=b.Text for b,c in next,j:GetChildren()do if c:IsA("Frame")then if not string.find(c.Name:lower(),"label")then if string.find(c.Name:lower(),a:lower())then c.Visible=true else c.Visible=false end end end end end)end local m={}function m.AddButton(a,b,c,d)local e=x()e.Name=a.."BUTTON"e.Size=UDim2.new(1,0,0,20)e.BackgroundTransparency=1 e.Parent=c or j local f=v(5)f.Name="ButtonForeground"f.Size=UDim2.new(1,0,1,0)f.ImageColor3=Color3.fromRGB(35,35,35)f.Parent=e if d then local b=g:GetTextSize(a,12,Enum.Font.Ubuntu,Vector2.new(0,0))local c=x()c.Size=UDim2.new(0,b.X,0,1)c.Position=UDim2.new(.5,-b.X/2-1,1,-1)c.BackgroundColor3=Color3.fromRGB(255,255,255)c.BackgroundTransparency=.5 c.Parent=f end local i=z(a,12)i.Parent=f i.MouseButton1Down:Connect(function()b()C(f,{ImageColor3=Color3.fromRGB(45,45,45)})C(i,{TextTransparency=.5})wait(h)C(f,{ImageColor3=Color3.fromRGB(35,35,35)})C(i,{TextTransparency=0})end)local k={}function k.ChangeText(a)i.Text=a end function k.Destroy()e:Destroy()end return k end function m.AddDropdown(a,b,c)local d=b or{}local e=false local f=x()f.Size=UDim2.new(1,0,0,20)f.Name=a.."DROPDOWN"f.BackgroundTransparency=1 f.Parent=j local g=v(5)g.ClipsDescendants=true g.ImageColor3=Color3.fromRGB(35,35,35)g.Size=UDim2.new(1,0,1,0)g.Parent=f local h=t(true)h.Parent=g local i=B(a,12)i.Size=UDim2.new(1,0,0,20)i.Parent=g local k=x()k.Position=UDim2.new(0,0,0,20)k.BackgroundTransparency=1 k.Size=UDim2.new(1,0,0,#d*20)k.Parent=g local l=Instance.new("UIListLayout")l.Parent=k for b,d in next,d do m.AddButton(d,function()c(d)i.Text=a..(": "..d)end,k,true)end local n=h.MouseButton1Down:Connect(function()e=not e C(f,{Size=e and UDim2.new(1,0,0,20+(#k:GetChildren()-1)*20)or UDim2.new(1,0,0,20)})C(h,{Rotation=e and 135 or 0})end)local o={}function o.Clear()for a,b in ipairs(k:GetChildren())do if b.ClassName=="Frame"then b:Destroy()end end end function o.Remove(a)for b,c in ipairs(k:GetChildren())do if c.ClassName=="Frame"and string.lower(a.."button")==string.lower(c.Name)then c:Destroy()end end end function o.Add(b)m.AddButton(b,function()c(b)i.Text=a..(": "..b)end,k,true)end function o.Status()return(string.split(i.Text,": "))[2]end function o.Set(b,d)i.Text=a..(b~=""and": "..b or"")if d then c(b)end end function o.Destroy()f:Destroy()end return o end function m.AddTextbox(a,b,c,d,e)local f=x()f.Name=a.."TEXTBOX"f.Size=UDim2.new(1,0,0,20)f.BackgroundTransparency=1 f.Parent=e or j local g,h=x(),x()local i,k,l=v(5),v(5),x()local m=B(a,12)i.Size=UDim2.new(.855,-22,1,0)i.ImageColor3=Color3.fromRGB(35,35,35)i.Parent=f k.Position=UDim2.new(1.008,0,0,0)k.Size=UDim2.new(0,67,0,20)k.ImageColor3=Color3.fromRGB(45,45,45)k.Parent=i l.BackgroundColor3=Color3.fromRGB(160,223,255)l.Position=UDim2.new(0,-2,0,4)l.ZIndex=5 l.Size=UDim2.new(0,2,.6,0)l.Parent=k g.BackgroundColor3=Color3.fromRGB(35,35,35)g.Size=UDim2.new(0,5,1,0)g.Position=UDim2.new(1,-5,0,0)g.Parent=i h.BackgroundColor3=Color3.fromRGB(45,45,45)h.Position=UDim2.new(0,0,0,0)h.Size=UDim2.new(0,5,1,0)h.Parent=k m.Parent=i local n=Instance.new("TextBox")n.Parent=k n.Name="Textbox"n.Position=UDim2.new(0,0,0,0)n.ZIndex=5 n.Size=UDim2.new(1,0,1,0)n.ClearTextOnFocus=b n.TextColor3=Color3.fromRGB(255,255,255)n.BackgroundTransparency=1 n.Font=Enum.Font.Ubuntu n.Text=c n.TextSize=12 local o=game:GetService("TweenService")local p=TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut)local q={Offset=k.Size.Y.Offset;Scale=k.Size.Y.Scale}local r={Offset=k.Size.X.Offset;Scale=k.size.X.Scale}local s={Offset=i.Size.X.Offset,Scale=i.Size.X.Scale}local t={Offset=i.Size.Y.Offset;Scale=i.Size.Y.Scale}n.Changed:Connect(function(a)if a=="Text"then local a=n.TextBounds.X-30>0 and n.TextBounds.X-30 or 0;(o:Create(k,p,{Size=UDim2.new(0,r.Offset+a,q.Scale,q.Offset)})):Play();(o:Create(i,p,{Size=UDim2.new(s.Scale,s.Offset-a,t.Scale,t.Offset)})):Play()end end)n.FocusLost:Connect(function()d(n.Text)end)local u={}function u.Set(a)n.Text=a end function u.ChangeText(a)m.Text=a end function u.Destroy()f:Destroy()end return u end function m.AddSlider(a,c,e,f)local g=c local h=g.Minimum or g.minimum or g.Min or g.min local i=g.Maximum or g.maximum or g.Max or g.max local k=g.Default or g.default or g.Def or g.def if h>i then local a=h h=i i=a end k=math.clamp(k,h,i)local l=k/i local m=x()m.Name=a.."SLIDER"m.Size=UDim2.new(1,0,0,20)m.BackgroundTransparency=1 m.Parent=f or j local n=v(5)n.Name="SliderForeground"n.ImageColor3=Color3.fromRGB(35,35,35)n.Size=UDim2.new(1,0,1,0)n.Parent=m local o=z(a..(": "..k))o.Size=UDim2.new(1,0,1,0)o.ZIndex=6 o.Parent=n local p=v(5)p.Size=UDim2.new(l,0,1,0)p.ImageColor3=Color3.fromRGB(70,70,70)p.ZIndex=5 p.ImageTransparency=.7 p.Parent=o o.MouseButton1Down:Connect(function()C(p,{ImageTransparency=.5})local c,f,g,j=q(o)local k=math.floor(h+(i-h)*g)e(k)o.Text=a..(": "..tostring(k))local l=UDim2.new(g,0,1,0)C(p,{Size=l})local m,n m=b.Move:Connect(function()C(p,{ImageTransparency=.5})local b,c,d,f=q(o)local g=math.floor(h+(i-h)*d)e(g)o.Text=a..(": "..tostring(g))local j=UDim2.new(d,0,1,0)C(p,{Size=j})end)n=d.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then C(p,{ImageTransparency=.7})m:Disconnect()n:Disconnect()end end)end)local r={}function r.Set(b,c)local d=math.clamp(b,h,i)C(p,{Size=UDim2.new(d/i,0,1,0)})o.Text=a..(": "..tostring(b))if c then e(b)end end function r.Status()local a,b,c,d=q(o)local e=math.floor(h+(i-h)*c)return e end function r.Destroy()m:Destroy()end return r end function m.AddToggle(a,b,c)local d=b or false local e=x()e.Name=a.."TOGGLE"e.Size=UDim2.new(1,0,0,20)e.BackgroundTransparency=1 e.Parent=j local f,g,h,i=v(5),v(5),x(),s()local k,l=x(),x()f.Size=UDim2.new(1,-22,1,0)f.ImageColor3=Color3.fromRGB(35,35,35)f.Parent=e g.Position=UDim2.new(1,-20,0,0)g.Size=UDim2.new(0,20,1,0)g.ImageColor3=Color3.fromRGB(45,45,45)g.Parent=e k.BackgroundColor3=Color3.fromRGB(35,35,35)k.Size=UDim2.new(0,5,1,0)k.Position=UDim2.new(1,-5,0,0)k.Parent=f l.BackgroundColor3=Color3.fromRGB(45,45,45)l.Size=UDim2.new(0,5,1,0)l.Parent=g h.BackgroundColor3=d and Color3.fromRGB(0,255,109)or Color3.fromRGB(255,160,160)h.Position=UDim2.new(1,-22,.2,0)h.Size=UDim2.new(0,2,.6,0)h.Parent=e i.ImageTransparency=d and 0 or 1 i.Parent=g local m=z(a,12)m.Name="ToggleButton"m.Size=UDim2.new(1,0,1,0)m.Parent=f m.MouseButton1Down:Connect(function()d=not d C(h,{BackgroundColor3=d and Color3.fromRGB(0,255,109)or Color3.fromRGB(255,160,160)})C(i,{ImageTransparency=d and 0 or 1})c(d)end)local n={}function n.Set(a,b)d=a C(h,{BackgroundColor3=d and Color3.fromRGB(0,255,109)or Color3.fromRGB(255,160,160)})C(i,{ImageTransparency=d and 0 or 1})if b then c(a)end end function n.Status()return d end function n.Destroy()e:Destroy()end return n end function m.Destroy()f:Destroy()end return m end return L end return D
local a={}local b=0 local c={}local d={}local e={}local f={}local g={}local h={}local i local j={}if game.CoreGui:FindFirstChild("TurtleUiLib")then(game.CoreGui:FindFirstChild("TurtleUiLib")):Destroy()i=true end function Lerp(a,b,c)return a+(b-a)*c end local k=game:service("Players")local l=k.LocalPlayer local m=l:GetMouse()local n=game:service("RunService")local o=n.Stepped function Dragify(a)spawn(function()local b local c local d a.InputBegan:Connect(function(e)if e.UserInputType==Enum.UserInputType.MouseButton1 or e.UserInputType==Enum.UserInputType.Touch then d=true b=e.Position c=a.Position local f f=o:Connect(function()if d then local d=Vector3.new(m.X,m.Y,0)-b a.Position=UDim2.new(c.X.Scale,c.X.Offset+d.X,c.Y.Scale,c.Y.Offset+d.Y)else f:Disconnect()end end)e.Changed:Connect(function()if e.UserInputState==Enum.UserInputState.End then d=false end end)end end)end)end local function p(a)if i then a.Parent=game.CoreGui return end if syn and syn.protect_gui then syn.protect_gui(a)a.Parent=game.CoreGui elseif PROTOSMASHER_LOADED then a.Parent=get_hidden_gui()else a.Parent=game.CoreGui end end local q=Instance.new("ScreenGui")q.Name="TurtleUiLib"p(q)local r=20 local s=game:GetService("UserInputService")local t function a.Destroy(a)q:Destroy()if t then t:Disconnect()end end function a.Hide(a)q.Enabled=not q.Enabled end function a.Keybind(b,a)if t then t:Disconnect()end t=s.InputBegan:Connect(function(b,c)if not c and b.KeyCode==Enum.KeyCode[a]then q.Enabled=not q.Enabled end end)end function a.Window(e,a)b=b+1 local h=b local i=h*7 local k=Instance.new("Frame")k.Name="UiWindow"k.Parent=q k.BackgroundColor3=Color3.fromRGB(0,151,230)k.BorderColor3=Color3.fromRGB(0,151,230)k.Position=UDim2.new(0,r,0,20)k.Size=UDim2.new(0,207,0,33)k.ZIndex=4+i k.Active=true Dragify(k)r=r+230 local l=Instance.new("Frame")l.Name="Header"l.Parent=k l.BackgroundColor3=Color3.fromRGB(0,168,255)l.BorderColor3=Color3.fromRGB(0,168,255)l.Position=UDim2.new(0,0,-0.0202544238,0)l.Size=UDim2.new(0,207,0,26)l.ZIndex=5+i local n=Instance.new("TextLabel")n.Name="HeaderText"n.Parent=l n.BackgroundColor3=Color3.fromRGB(40,40,40)n.BackgroundTransparency=1 n.Position=UDim2.new(0,0,-0.0020698905,0)n.Size=UDim2.new(0,206,0,33)n.ZIndex=6+i n.Font=Enum.Font.SourceSans n.Text=a or"Window"n.TextColor3=Color3.fromRGB(47,54,64)n.TextSize=17 local p=Instance.new("TextButton")local s=Instance.new("Frame")p.Name="Minimise"p.Parent=l p.BackgroundColor3=Color3.fromRGB(0,168,255)p.BorderColor3=Color3.fromRGB(0,168,255)p.Position=UDim2.new(0,185,0,2)p.Size=UDim2.new(0,22,0,22)p.ZIndex=7+i p.Font=Enum.Font.SourceSansLight p.Text="_"p.TextColor3=Color3.fromRGB(0,0,0)p.TextSize=20 p.MouseButton1Up:connect(function()s.Visible=not s.Visible if s.Visible then p.Text="_"else p.Text="+"end end)s.Name="Window"s.Parent=l s.BackgroundColor3=Color3.fromRGB(47,54,64)s.BorderColor3=Color3.fromRGB(47,54,64)s.Position=UDim2.new(0,0,0,0)s.Size=UDim2.new(0,207,0,33)s.ZIndex=1+i local t={}t.__index=t t.Ui=k c[h]=33 d[h]=10 function t.Destroy(a)a.Ui:Destroy()end function t.Button(e,a,b)local g=a or"Button"local j=b or function() end c[h]=c[h]+32 s.Size=UDim2.new(0,207,0,c[h]+10)local k=Instance.new("TextButton")d[h]=d[h]+32 k.Name="Button"k.Parent=s k.BackgroundColor3=Color3.fromRGB(53,59,72)k.BorderColor3=Color3.fromRGB(113,128,147)k.Position=UDim2.new(0,12,0,d[h])k.Size=UDim2.new(0,182,0,26)k.ZIndex=2+i k.Selected=true k.Font=Enum.Font.SourceSans k.TextColor3=Color3.fromRGB(245,246,250)k.TextSize=16 k.TextStrokeTransparency=123 k.TextWrapped=true k.Text=g k.MouseButton1Down:Connect(j)f[h]=false end function t.Label(e,a,b)local g=b or Color3.fromRGB(220,221,225)c[h]=c[h]+32 s.Size=UDim2.new(0,207,0,c[h]+10)d[h]=d[h]+32 local j=Instance.new("TextLabel")j.Name="Label"j.Parent=s j.BackgroundColor3=Color3.fromRGB(220,221,225)j.BackgroundTransparency=1 j.BorderColor3=Color3.fromRGB(27,42,53)j.Position=UDim2.new(0,0,0,d[h])j.Size=UDim2.new(0,206,0,29)j.Font=Enum.Font.SourceSans j.Text=a or"Label"j.TextSize=16 j.ZIndex=2+i if type(g)=="boolean"and g then spawn(function()while wait()do local a=(tick()%5)/5 j.TextColor3=Color3.fromHSV(a,1,1)end end)else j.TextColor3=g end f[h]=false return j end function t.Toggle(g,a,b,e)local j=e or function() end c[h]=c[h]+32 s.Size=UDim2.new(0,207,0,c[h]+10)d[h]=d[h]+32 local k=Instance.new("TextLabel")local l=Instance.new("TextButton")local m=Instance.new("Frame")k.Name="ToggleDescription"k.Parent=s k.BackgroundColor3=Color3.fromRGB(255,255,255)k.BackgroundTransparency=1 k.Position=UDim2.new(0,14,0,d[h])k.Size=UDim2.new(0,131,0,26)k.Font=Enum.Font.SourceSans k.Text=a or"Toggle"k.TextColor3=Color3.fromRGB(245,246,250)k.TextSize=16 k.TextWrapped=true k.TextXAlignment=Enum.TextXAlignment.Left k.ZIndex=2+i l.Name="ToggleButton"l.Parent=k l.BackgroundColor3=Color3.fromRGB(47,54,64)l.BorderColor3=Color3.fromRGB(113,128,147)l.Position=UDim2.new(1.2061069,0,.0769230798,0)l.Size=UDim2.new(0,22,0,22)l.Font=Enum.Font.SourceSans l.Text=""l.TextColor3=Color3.fromRGB(0,0,0)l.TextSize=14 l.ZIndex=2+i l.MouseButton1Up:Connect(function()m.Visible=not m.Visible j(m.Visible)end)m.Name="ToggleFiller"m.Parent=l m.BackgroundColor3=Color3.fromRGB(68,189,50)m.BorderColor3=Color3.fromRGB(47,54,64)m.Position=UDim2.new(0,5,0,5)m.Size=UDim2.new(0,12,0,12)m.Visible=b m.ZIndex=2+i f[h]=false end function t.Box(e,a,b)local g=b or function() end c[h]=c[h]+32 s.Size=UDim2.new(0,207,0,c[h]+10)d[h]=d[h]+32 local j=Instance.new("TextBox")local k=Instance.new("TextLabel")j.Parent=s j.BackgroundColor3=Color3.fromRGB(53,59,72)j.BorderColor3=Color3.fromRGB(113,128,147)j.Position=UDim2.new(0,99,0,d[h])j.Size=UDim2.new(0,95,0,26)j.Font=Enum.Font.SourceSans j.PlaceholderColor3=Color3.fromRGB(220,221,225)j.PlaceholderText="..."j.Text=""j.TextColor3=Color3.fromRGB(245,246,250)j.TextSize=16 j.TextStrokeColor3=Color3.fromRGB(245,246,250)j.ZIndex=2+i;(j:GetPropertyChangedSignal("Text")):connect(function()g(j.Text,false)end)j.FocusLost:Connect(function()g(j.Text,true)end)k.Name="BoxDescription"k.Parent=j k.BackgroundColor3=Color3.fromRGB(255,255,255)k.BackgroundTransparency=1 k.Position=UDim2.new(-0.894736826,0,0,0)k.Size=UDim2.new(0,75,0,26)k.Font=Enum.Font.SourceSans k.Text=a or"Box"k.TextColor3=Color3.fromRGB(245,246,250)k.TextSize=16 k.TextXAlignment=Enum.TextXAlignment.Left k.ZIndex=2+i f[h]=false end function t.Slider(k,a,b,e,g,j)local l=a or"Slider"local n=b or 1 local p=e or 100 local q=g or p/2 local r=j or function() end local t=70 if q>p then q=p elseif q<n then q=n end if f[h]then t=60 end c[h]=c[h]+t s.Size=UDim2.new(0,207,0,c[h]+10)d[h]=d[h]+t local u=Instance.new("Frame")local v=Instance.new("Frame")local w=Instance.new("TextLabel")local x=Instance.new("Frame")local y=Instance.new("TextLabel")local z=Instance.new("TextLabel")local A=Instance.new("TextLabel")function SliderMovement(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then isdragging=true minitial=a.Position.X initial=v.Position.X.Offset local b=v.AbsolutePosition.X-initial local c c=o:Connect(function()if isdragging then local a=(m.X-b)-3 if a>175 then a=175 elseif a<0 then a=0 end v.Position=UDim2.new(0,a,-1.33333337,0)x.Size=UDim2.new(0,a,0,6)local c=Lerp(n,p,v.Position.X.Offset/(u.Size.X.Offset-5))y.Text=tostring(math.round(c))else c:Disconnect()end end)a.Changed:Connect(function()if a.UserInputState==Enum.UserInputState.End then isdragging=false end end)end end function SliderEnd(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then local a=Lerp(n,p,v.Position.X.Offset/(u.Size.X.Offset-5))r(math.round(a))end end u.Name="Slider"u.Parent=s u.BackgroundColor3=Color3.fromRGB(47,54,64)u.BorderColor3=Color3.fromRGB(113,128,147)u.Position=UDim2.new(0,13,0,d[h])u.Size=UDim2.new(0,180,0,6)u.ZIndex=2+i u.InputBegan:Connect(SliderMovement)u.InputEnded:Connect(SliderEnd)v.Position=UDim2.new(0,(u.Size.X.Offset-5)*((q-n)/(p-n)),-1.333337,0)v.Name="SliderButton"v.Parent=u v.BackgroundColor3=Color3.fromRGB(53,59,72)v.BorderColor3=Color3.fromRGB(113,128,147)v.Size=UDim2.new(0,6,0,22)v.ZIndex=3+i v.InputBegan:Connect(SliderMovement)v.InputEnded:Connect(SliderEnd)y.Name="Current"y.Parent=v y.BackgroundTransparency=1 y.Position=UDim2.new(0,3,0,22)y.Size=UDim2.new(0,0,0,18)y.Font=Enum.Font.SourceSans y.Text=tostring(q)y.TextColor3=Color3.fromRGB(220,221,225)y.TextSize=14 y.ZIndex=2+i w.Name="Description"w.Parent=u w.BackgroundColor3=Color3.fromRGB(255,255,255)w.BackgroundTransparency=1 w.Position=UDim2.new(0,-10,0,-35)w.Size=UDim2.new(0,200,0,21)w.Font=Enum.Font.SourceSans w.Text=l w.TextColor3=Color3.fromRGB(245,246,250)w.TextSize=16 w.ZIndex=2+i x.Name="SilderFiller"x.Parent=u x.BackgroundColor3=Color3.fromRGB(76,209,55)x.BorderColor3=Color3.fromRGB(47,54,64)x.Size=UDim2.new(0,(u.Size.X.Offset-5)*((q-n)/(p-n)),0,6)x.ZIndex=2+i x.BorderMode=Enum.BorderMode.Inset z.Name="Min"z.Parent=u z.BackgroundColor3=Color3.fromRGB(255,255,255)z.BackgroundTransparency=1 z.Position=UDim2.new(-0.00555555569,0,-7.33333397,0)z.Size=UDim2.new(0,77,0,50)z.Font=Enum.Font.SourceSans z.Text=tostring(n)z.TextColor3=Color3.fromRGB(220,221,225)z.TextSize=14 z.TextXAlignment=Enum.TextXAlignment.Left z.ZIndex=2+i A.Name="Max"A.Parent=u A.BackgroundColor3=Color3.fromRGB(255,255,255)A.BackgroundTransparency=1 A.Position=UDim2.new(.577777743,0,-7.33333397,0)A.Size=UDim2.new(0,77,0,50)A.Font=Enum.Font.SourceSans A.Text=tostring(p)A.TextColor3=Color3.fromRGB(220,221,225)A.TextSize=14 A.TextXAlignment=Enum.TextXAlignment.Right A.ZIndex=2+i f[h]=true local B={}function B.SetValue(b,a)a=math.clamp(a,n,p)local c=((a-n)/p)*u.Size.X.Offset v.Position=UDim2.new(0,c,-1.33333337,0)x.Size=UDim2.new(0,c,0,6)y.Text=tostring(math.round(a))end return B end function t.Dropdown(j,a,b,e,f)local k=a or"Dropdown"local l=b or{}local m=e or function() end local n=Instance.new("TextButton")local o=Instance.new("TextLabel")local p=Instance.new("ScrollingFrame")c[h]=c[h]+32 s.Size=UDim2.new(0,207,0,c[h]+10)d[h]=d[h]+32 n.Name="Dropdown"n.Parent=s n.BackgroundColor3=Color3.fromRGB(53,59,72)n.BorderColor3=Color3.fromRGB(113,128,147)n.Position=UDim2.new(0,12,0,d[h])n.Size=UDim2.new(0,182,0,26)n.Selected=true n.Font=Enum.Font.SourceSans n.Text=tostring(k)n.TextColor3=Color3.fromRGB(245,246,250)n.TextSize=16 n.TextStrokeTransparency=123 n.TextWrapped=true n.ZIndex=3+i n.MouseButton1Up:Connect(function()for a,b in pairs(g)do if b~=p then b.Visible=false o.Rotation=0 end end if p.Visible then o.Rotation=0 else o.Rotation=180 end p.Visible=not p.Visible end)o.Name="DownSign"o.Parent=n o.BackgroundColor3=Color3.fromRGB(255,255,255)o.BackgroundTransparency=1 o.Position=UDim2.new(0,155,0,2)o.Size=UDim2.new(0,27,0,22)o.Font=Enum.Font.SourceSans o.Text="^"o.TextColor3=Color3.fromRGB(220,221,225)o.TextSize=20 o.ZIndex=4+i o.TextYAlignment=Enum.TextYAlignment.Bottom p.Name="DropdownFrame"p.Parent=n p.Active=true p.BackgroundColor3=Color3.fromRGB(53,59,72)p.BorderColor3=Color3.fromRGB(53,59,72)p.Position=UDim2.new(0,0,0,28)p.Size=UDim2.new(0,182,0,0)p.Visible=false p.CanvasSize=UDim2.new(0,0,0,0)p.ScrollBarThickness=4 p.VerticalScrollBarPosition=Enum.VerticalScrollBarPosition.Left p.ZIndex=5+i p.ScrollingDirection=Enum.ScrollingDirection.Y p.ScrollBarImageColor3=Color3.fromRGB(220,221,225)table.insert(g,p)local q={}local r=0 function q.Button(b,a)local c=a or""local d=Instance.new("TextButton")d.Name="Button"d.Parent=p d.BackgroundColor3=Color3.fromRGB(53,59,72)d.BorderColor3=Color3.fromRGB(113,128,147)d.Position=UDim2.new(0,6,0,r+1)d.Size=UDim2.new(0,170,0,26)d.Selected=true d.Font=Enum.Font.SourceSans d.TextColor3=Color3.fromRGB(245,246,250)d.TextSize=16 d.TextStrokeTransparency=123 d.ZIndex=6+i d.Text=c d.TextWrapped=true r=r+27 p.CanvasSize=UDim2.new(0,182,0,r+1)if#p:GetChildren()<8 then p.Size=UDim2.new(0,182,0,p.Size.Y.Offset+27)end d.MouseButton1Up:Connect(function()m(c)p.Visible=false if f then n.Text=c end end)end function q.Remove(b,a)local c for b,d in pairs(p:GetChildren())do if c then r=r-27 d.Position=UDim2.new(0,6,0,d.Position.Y.Offset-27)p.CanvasSize=UDim2.new(0,182,0,r+1)end if d.Text==a then c=true d:Destroy()if#p:GetChildren()<8 then p.Size=UDim2.new(0,182,0,p.Size.Y.Offset-27)end end end if not c then warn("The button you tried to remove didn\'t exist!")end end for a,b in pairs(l)do q:Button(b)end return q end function t.ColorPicker(f,a,b,e)local g=e or function() end local k=Instance.new("TextButton")local l=Instance.new("UICorner")local n=Instance.new("TextLabel")local p=Instance.new("Frame")local q=Instance.new("TextButton")local r=Instance.new("Frame")local t=Instance.new("TextLabel")local u=Instance.new("TextButton")local v=Instance.new("Frame")local w=Instance.new("UIGradient")local x=Instance.new("ImageLabel")local y=Instance.new("Frame")local z=Instance.new("UIGradient")local A=Instance.new("Frame")local B=Instance.new("TextLabel")local C=Instance.new("UICorner")local D=Instance.new("UICorner")local E=Instance.new("ImageLabel")c[h]=c[h]+32 s.Size=UDim2.new(0,207,0,c[h]+10)d[h]=d[h]+32 k.Name="ColorPicker"k.Parent=s k.Position=UDim2.new(0,137,0,d[h])k.Size=UDim2.new(0,57,0,26)k.Font=Enum.Font.SourceSans k.Text=""k.TextColor3=Color3.fromRGB(0,0,0)k.TextSize=14 k.ZIndex=2+i k.MouseButton1Up:Connect(function()for a,b in pairs(j)do b.Visible=false end p.Visible=not p.Visible end)l.Parent=k l.Name="PickerCorner"l.CornerRadius=UDim.new(0,2)n.Name="PickerDescription"n.Parent=k n.BackgroundColor3=Color3.fromRGB(255,255,255)n.BackgroundTransparency=1 n.Position=UDim2.new(-2.15789509,0,0,0)n.Size=UDim2.new(0,116,0,26)n.Font=Enum.Font.SourceSans n.Text=a or"Color picker"n.TextColor3=Color3.fromRGB(245,246,250)n.TextSize=16 n.TextXAlignment=Enum.TextXAlignment.Left n.ZIndex=2+i p.Name="ColorPickerFrame"p.Parent=k p.BackgroundColor3=Color3.fromRGB(47,54,64)p.BorderColor3=Color3.fromRGB(47,54,64)p.Position=UDim2.new(1.40350854,0,-2.84615374,0)p.Size=UDim2.new(0,158,0,155)p.ZIndex=3+i p.Visible=false q.Name="ToggleRGB"q.Parent=p q.BackgroundColor3=Color3.fromRGB(47,54,64)q.BorderColor3=Color3.fromRGB(113,128,147)q.Position=UDim2.new(0,125,0,127)q.Size=UDim2.new(0,22,0,22)q.Font=Enum.Font.SourceSans q.Text=""q.TextColor3=Color3.fromRGB(0,0,0)q.TextSize=14 q.ZIndex=4+i r.Name="ToggleFiller"r.Parent=q r.BackgroundColor3=Color3.fromRGB(76,209,55)r.BorderColor3=Color3.fromRGB(47,54,64)r.Position=UDim2.new(0,5,0,5)r.Size=UDim2.new(0,12,0,12)r.ZIndex=4+i r.Visible=false t.Parent=q t.BackgroundColor3=Color3.fromRGB(255,255,255)t.BackgroundTransparency=1 t.Position=UDim2.new(-5.13636351,0,0,0)t.Size=UDim2.new(0,106,0,22)t.Font=Enum.Font.SourceSans t.Text="Rainbow"t.TextColor3=Color3.fromRGB(245,246,250)t.TextSize=16 t.TextXAlignment=Enum.TextXAlignment.Left t.ZIndex=4+i u.Name="ClosePicker"u.Parent=p u.BackgroundColor3=Color3.fromRGB(47,54,64)u.BorderColor3=Color3.fromRGB(47,54,64)u.Position=UDim2.new(0,132,0,5)u.Size=UDim2.new(0,21,0,21)u.Font=Enum.Font.SourceSans u.Text="X"u.TextColor3=Color3.fromRGB(245,246,250)u.TextSize=18 u.ZIndex=4+i u.MouseButton1Down:Connect(function()p.Visible=not p.Visible end)w.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,0,0));ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))})w.Name="CanvasGradient"w.Parent=v E.Name="BlackOverlay"E.Parent=v E.BackgroundColor3=Color3.fromRGB(255,255,255)E.BackgroundTransparency=1 E.Size=UDim2.new(1,0,1,0)E.Image="rbxassetid://5107152095"E.ZIndex=5+i C.Parent=v C.Name="UICorner"C.CornerRadius=UDim.new(0,2)x.Name="Cursor"x.Parent=v x.BackgroundColor3=Color3.fromRGB(255,255,255)x.BackgroundTransparency=1 x.Size=UDim2.new(0,8,0,8)x.Image="rbxassetid://5100115962"x.ZIndex=5+i local F=false local G=0 local H=1 local I=1 local J q.MouseButton1Down:Connect(function()r.Visible=not r.Visible if r.Visible then J=o:Connect(function()if r.Visible then local a=(tick()%5)/5 color3=Color3.fromHSV(a,1,1)g(color3,true)k.BackgroundColor3=color3 else J:Disconnect()end end)end end)if b and type(b)=="boolean"then r.Visible=true if r.Visible then J=o:Connect(function()if r.Visible then local a=(tick()%5)/5 color3=Color3.fromHSV(a,1,1)g(color3)k.BackgroundColor3=color3 else J:Disconnect()end end)end else k.BackgroundColor3=b or Color3.fromRGB(0,168,255)end v.Name="Canvas"v.Parent=p v.BackgroundColor3=Color3.fromRGB(255,255,255)v.Position=UDim2.new(0,5,0,34)v.Size=UDim2.new(0,148,0,64)v.ZIndex=4+i local K,L=v.AbsoluteSize,v.AbsolutePosition v.InputBegan:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then local b=Vector2.new(x.Position.X.Offset,x.Position.Y.Offset)local c=x.AbsolutePosition-b local d local e=true d=o:Connect(function()if e then local a=Vector2.new(m.X,m.Y)-c local b=math.clamp(a.X,2,v.Size.X.Offset-2)local d=math.clamp(a.Y,2,v.Size.Y.Offset-2)H=1-math.clamp((m.X-L.X)/K.X,0,1)I=1-math.clamp((m.Y-L.Y)/K.Y,0,1)color3=Color3.fromHSV(G,H,I)x.Position=UDim2.fromOffset(b-4,d-4)k.BackgroundColor3=color3 g(color3)else d:Disconnect()end end)a.Changed:Connect(function()if a.UserInputState==Enum.UserInputState.End then e=false end end)end end)y.Name="Color"y.Parent=p y.BackgroundColor3=Color3.fromRGB(255,255,255)y.Position=UDim2.new(0,5,0,105)y.Size=UDim2.new(0,148,0,14)y.BorderMode=Enum.BorderMode.Inset y.ZIndex=4+i y.InputBegan:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then F=true local a=A.Position.X.Offset local b=A.AbsolutePosition.X-a local c c=o:Connect(function()if F then local a,c=y.AbsolutePosition,y.AbsoluteSize G=1-math.clamp(1-(m.X-a.X)/c.X,0,1)w.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromHSV(G,1,1)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))})local d=math.clamp(m.X-b,0,y.Size.X.Offset-3)A.Position=UDim2.new(0,d,0,0)color3=Color3.fromHSV(G,H,I)k.BackgroundColor3=color3 g(color3)else c:Disconnect()end end)end end)y.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then F=false end end)z.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,0,0));ColorSequenceKeypoint.new(.17,Color3.fromRGB(255,255,0)),ColorSequenceKeypoint.new(.33,Color3.fromRGB(0,255,0));ColorSequenceKeypoint.new(.5,Color3.fromRGB(0,255,255));ColorSequenceKeypoint.new(.66,Color3.fromRGB(0,0,255)),ColorSequenceKeypoint.new(.82,Color3.fromRGB(255,0,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,0,0))})z.Name="ColorGradient"z.Parent=y D.Parent=y D.Name="ColorCorner"D.CornerRadius=UDim.new(0,2)A.Name="ColorSlider"A.Parent=y A.BackgroundColor3=Color3.fromRGB(245,246,250)A.BorderColor3=Color3.fromRGB(245,246,250)A.Size=UDim2.new(0,2,0,14)A.ZIndex=5+i B.Name="Title"B.Parent=p B.BackgroundColor3=Color3.fromRGB(255,255,255)B.BackgroundTransparency=1 B.Position=UDim2.new(0,10,0,5)B.Size=UDim2.new(0,118,0,21)B.Font=Enum.Font.SourceSans B.Text=a or"Color picker"B.TextColor3=Color3.fromRGB(245,246,250)B.TextSize=16 B.TextXAlignment=Enum.TextXAlignment.Left B.ZIndex=4+i table.insert(j,p)local M={}function M.UpdateColorPicker(b,a)if type(a)=="userdata"then r.Visible=false k.BackgroundColor3=a elseif a and(type(a)=="boolean"and not J)then r.Visible=true J=o:Connect(function()if r.Visible then local a=(tick()%5)/5 color3=Color3.fromHSV(a,1,1)g(color3)k.BackgroundColor3=color3 else J:Disconnect()end end)end end return M end return t end return a
local h={}local i=0;local j={}local k={}local l={}local l={}local m={}local n={}local n;local o={}if game.CoreGui:FindFirstChild('TurtleUiLib')then game.CoreGui:FindFirstChild('TurtleUiLib'):Destroy()n=true end;function a(a,b,c)return a+(b-a)*c end;local o=game:service('Players')local o=o.LocalPlayer;local o=o:GetMouse()local p=game:service('RunService')local p=p.Stepped;function b(a)spawn(function()local b;local c;local d;a.InputBegan:Connect(function(e)if e.UserInputType==Enum.UserInputType.MouseButton1 or e.UserInputType==Enum.UserInputType.Touch then d=true;b=e.Position;c=a.Position;local f;f=p:Connect(function()if d then local b=Vector3.new(o.X,o.Y,0)-b;a.Position=UDim2.new(c.X.Scale,c.X.Offset+b.X,c.Y.Scale,c.Y.Offset+b.Y)else f:Disconnect()end end)e.Changed:Connect(function()if e.UserInputState==Enum.UserInputState.End then d=false end end)end end)end)end;local function q(a)if n then a.Parent=game.CoreGui;return end;if syn and syn.protect_gui then syn.protect_gui(a)a.Parent=game.CoreGui elseif PROTOSMASHER_LOADED then a.Parent=get_hidden_gui()else a.Parent=game.CoreGui end end;local n=Instance.new("ScreenGui")n.Name="TurtleUiLib"q(n)local q=20;local r=game:GetService("UserInputService")local s;function h:Destroy()n:Destroy()if s then s:Disconnect()end end;function h:Hide()n.Enabled=not n.Enabled end;function h:Keybind(a)if s then s:Disconnect()end;s=r.InputBegan:Connect(function(b,c)if not c and b.KeyCode==Enum.KeyCode[a]then n.Enabled=not n.Enabled end end)end;function h:Window(h)i=i+1;local i=i;local r=i*7;local s=Instance.new("Frame")s.Name="UiWindow"s.Parent=n;s.BackgroundColor3=Color3.fromRGB(0,151,230)s.BorderColor3=Color3.fromRGB(0,151,230)s.Position=UDim2.new(0,q,0,20)s.Size=UDim2.new(0,207,0,33)s.ZIndex=4+r;s.Active=true;b(s)q=q+230;local b=Instance.new("Frame")b.Name="Header"b.Parent=s;b.BackgroundColor3=Color3.fromRGB(0,168,255)b.BorderColor3=Color3.fromRGB(0,168,255)b.Position=UDim2.new(0,0,-0.0202544238,0)b.Size=UDim2.new(0,207,0,26)b.ZIndex=5+r;local n=Instance.new("TextLabel")n.Name="HeaderText"n.Parent=b;n.BackgroundColor3=Color3.fromRGB(40,40,40)n.BackgroundTransparency=1.000;n.Position=UDim2.new(0,0,-0.0020698905,0)n.Size=UDim2.new(0,206,0,33)n.ZIndex=6+r;n.Font=Enum.Font.SourceSans;n.Text=h or"Window"n.TextColor3=Color3.fromRGB(47,54,64)n.TextSize=17.000;local h=Instance.new("TextButton")local n=Instance.new("Frame")h.Name="Minimise"h.Parent=b;h.BackgroundColor3=Color3.fromRGB(0,168,255)h.BorderColor3=Color3.fromRGB(0,168,255)h.Position=UDim2.new(0,185,0,2)h.Size=UDim2.new(0,22,0,22)h.ZIndex=7+r;h.Font=Enum.Font.SourceSansLight;h.Text="_"h.TextColor3=Color3.fromRGB(0,0,0)h.TextSize=20.000;h.MouseButton1Up:connect(function()n.Visible=not n.Visible;if n.Visible then h.Text="_"else h.Text="+"end end)n.Name="Window"n.Parent=b;n.BackgroundColor3=Color3.fromRGB(47,54,64)n.BorderColor3=Color3.fromRGB(47,54,64)n.Position=UDim2.new(0,0,0,0)n.Size=UDim2.new(0,207,0,33)n.ZIndex=1+r;local b={}b.__index=b;b.Ui=s;j[i]=33;k[i]=10;function b:Destroy()self.Ui:Destroy()end;function b:Button(a,b)local a=a or"Button"local b=b or function()end;j[i]=j[i]+32;n.Size=UDim2.new(0,207,0,j[i]+10)local c=Instance.new("TextButton")k[i]=k[i]+32;c.Name="Button"c.Parent=n;c.BackgroundColor3=Color3.fromRGB(53,59,72)c.BorderColor3=Color3.fromRGB(113,128,147)c.Position=UDim2.new(0,12,0,k[i])c.Size=UDim2.new(0,182,0,26)c.ZIndex=2+r;c.Selected=true;c.Font=Enum.Font.SourceSans;c.TextColor3=Color3.fromRGB(245,246,250)c.TextSize=16.000;c.TextStrokeTransparency=123.000;c.TextWrapped=true;c.Text=a;c.MouseButton1Down:Connect(b)l[i]=false end;function b:Label(a,b)local b=b or Color3.fromRGB(220,221,225)j[i]=j[i]+32;n.Size=UDim2.new(0,207,0,j[i]+10)k[i]=k[i]+32;local c=Instance.new("TextLabel")c.Name="Label"c.Parent=n;c.BackgroundColor3=Color3.fromRGB(220,221,225)c.BackgroundTransparency=1.000;c.BorderColor3=Color3.fromRGB(27,42,53)c.Position=UDim2.new(0,0,0,k[i])c.Size=UDim2.new(0,206,0,29)c.Font=Enum.Font.SourceSans;c.Text=a or"Label"c.TextSize=16.000;c.ZIndex=2+r;if type(b)=="boolean"and b then spawn(function()while wait()do local a=tick()%5/5;c.TextColor3=Color3.fromHSV(a,1,1)end end)else c.TextColor3=b end;l[i]=false;return c end;function b:Toggle(a,b,c)local c=c or function()end;j[i]=j[i]+32;n.Size=UDim2.new(0,207,0,j[i]+10)k[i]=k[i]+32;local d=Instance.new("TextLabel")local e=Instance.new("TextButton")local f=Instance.new("Frame")d.Name="ToggleDescription"d.Parent=n;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1.000;d.Position=UDim2.new(0,14,0,k[i])d.Size=UDim2.new(0,131,0,26)d.Font=Enum.Font.SourceSans;d.Text=a or"Toggle"d.TextColor3=Color3.fromRGB(245,246,250)d.TextSize=16.000;d.TextWrapped=true;d.TextXAlignment=Enum.TextXAlignment.Left;d.ZIndex=2+r;e.Name="ToggleButton"e.Parent=d;e.BackgroundColor3=Color3.fromRGB(47,54,64)e.BorderColor3=Color3.fromRGB(113,128,147)e.Position=UDim2.new(1.2061069,0,0.0769230798,0)e.Size=UDim2.new(0,22,0,22)e.Font=Enum.Font.SourceSans;e.Text=""e.TextColor3=Color3.fromRGB(0,0,0)e.TextSize=14.000;e.ZIndex=2+r;e.MouseButton1Up:Connect(function()f.Visible=not f.Visible;c(f.Visible)end)f.Name="ToggleFiller"f.Parent=e;f.BackgroundColor3=Color3.fromRGB(68,189,50)f.BorderColor3=Color3.fromRGB(47,54,64)f.Position=UDim2.new(0,5,0,5)f.Size=UDim2.new(0,12,0,12)f.Visible=b;f.ZIndex=2+r;l[i]=false end;function b:Box(a,b)local b=b or function()end;j[i]=j[i]+32;n.Size=UDim2.new(0,207,0,j[i]+10)k[i]=k[i]+32;local c=Instance.new("TextBox")local d=Instance.new("TextLabel")c.Parent=n;c.BackgroundColor3=Color3.fromRGB(53,59,72)c.BorderColor3=Color3.fromRGB(113,128,147)c.Position=UDim2.new(0,99,0,k[i])c.Size=UDim2.new(0,95,0,26)c.Font=Enum.Font.SourceSans;c.PlaceholderColor3=Color3.fromRGB(220,221,225)c.PlaceholderText="..."c.Text=""c.TextColor3=Color3.fromRGB(245,246,250)c.TextSize=16.000;c.TextStrokeColor3=Color3.fromRGB(245,246,250)c.ZIndex=2+r;c:GetPropertyChangedSignal('Text'):connect(function()b(c.Text,false)end)c.FocusLost:Connect(function()b(c.Text,true)end)d.Name="BoxDescription"d.Parent=c;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1.000;d.Position=UDim2.new(-0.894736826,0,0,0)d.Size=UDim2.new(0,75,0,26)d.Font=Enum.Font.SourceSans;d.Text=a or"Box"d.TextColor3=Color3.fromRGB(245,246,250)d.TextSize=16.000;d.TextXAlignment=Enum.TextXAlignment.Left;d.ZIndex=2+r;l[i]=false end;function b:Slider(b,h,m,q,s)local b=b or"Slider"local h=h or 1;local m=m or 100;local q=q or m/2;local s=s or function()end;local t=70;if q>m then q=m elseif q<h then q=h end;if l[i]then t=60 end;j[i]=j[i]+t;n.Size=UDim2.new(0,207,0,j[i]+10)k[i]=k[i]+t;local j=Instance.new("Frame")local t=Instance.new("Frame")local u=Instance.new("TextLabel")local v=Instance.new("Frame")local w=Instance.new("TextLabel")local x=Instance.new("TextLabel")local y=Instance.new("TextLabel")function c(b)if b.UserInputType==Enum.UserInputType.MouseButton1 or b.UserInputType==Enum.UserInputType.Touch then d=true;e=b.Position.X;f=t.Position.X.Offset;local c=t.AbsolutePosition.X-f;local e;e=p:Connect(function()if d then local b=o.X-c-3;if b>175 then b=175 elseif b<0 then b=0 end;t.Position=UDim2.new(0,b,-1.33333337,0)v.Size=UDim2.new(0,b,0,6)local a=a(h,m,t.Position.X.Offset/(j.Size.X.Offset-5))w.Text=tostring(math.round(a))else e:Disconnect()end end)b.Changed:Connect(function()if b.UserInputState==Enum.UserInputState.End then d=false end end)end end;function g(b)if b.UserInputType==Enum.UserInputType.MouseButton1 or b.UserInputType==Enum.UserInputType.Touch then local a=a(h,m,t.Position.X.Offset/(j.Size.X.Offset-5))s(math.round(a))end end;j.Name="Slider"j.Parent=n;j.BackgroundColor3=Color3.fromRGB(47,54,64)j.BorderColor3=Color3.fromRGB(113,128,147)j.Position=UDim2.new(0,13,0,k[i])j.Size=UDim2.new(0,180,0,6)j.ZIndex=2+r;j.InputBegan:Connect(c)j.InputEnded:Connect(g)t.Position=UDim2.new(0,(j.Size.X.Offset-5)*(q-h)/(m-h),-1.333337,0)t.Name="SliderButton"t.Parent=j;t.BackgroundColor3=Color3.fromRGB(53,59,72)t.BorderColor3=Color3.fromRGB(113,128,147)t.Size=UDim2.new(0,6,0,22)t.ZIndex=3+r;t.InputBegan:Connect(c)t.InputEnded:Connect(g)w.Name="Current"w.Parent=t;w.BackgroundTransparency=1.000;w.Position=UDim2.new(0,3,0,22)w.Size=UDim2.new(0,0,0,18)w.Font=Enum.Font.SourceSans;w.Text=tostring(q)w.TextColor3=Color3.fromRGB(220,221,225)w.TextSize=14.000;w.ZIndex=2+r;u.Name="Description"u.Parent=j;u.BackgroundColor3=Color3.fromRGB(255,255,255)u.BackgroundTransparency=1.000;u.Position=UDim2.new(0,-10,0,-35)u.Size=UDim2.new(0,200,0,21)u.Font=Enum.Font.SourceSans;u.Text=b;u.TextColor3=Color3.fromRGB(245,246,250)u.TextSize=16.000;u.ZIndex=2+r;v.Name="SilderFiller"v.Parent=j;v.BackgroundColor3=Color3.fromRGB(76,209,55)v.BorderColor3=Color3.fromRGB(47,54,64)v.Size=UDim2.new(0,(j.Size.X.Offset-5)*(q-h)/(m-h),0,6)v.ZIndex=2+r;v.BorderMode=Enum.BorderMode.Inset;x.Name="Min"x.Parent=j;x.BackgroundColor3=Color3.fromRGB(255,255,255)x.BackgroundTransparency=1.000;x.Position=UDim2.new(-0.00555555569,0,-7.33333397,0)x.Size=UDim2.new(0,77,0,50)x.Font=Enum.Font.SourceSans;x.Text=tostring(h)x.TextColor3=Color3.fromRGB(220,221,225)x.TextSize=14.000;x.TextXAlignment=Enum.TextXAlignment.Left;x.ZIndex=2+r;y.Name="Max"y.Parent=j;y.BackgroundColor3=Color3.fromRGB(255,255,255)y.BackgroundTransparency=1.000;y.Position=UDim2.new(0.577777743,0,-7.33333397,0)y.Size=UDim2.new(0,77,0,50)y.Font=Enum.Font.SourceSans;y.Text=tostring(m)y.TextColor3=Color3.fromRGB(220,221,225)y.TextSize=14.000;y.TextXAlignment=Enum.TextXAlignment.Right;y.ZIndex=2+r;l[i]=true;local a={}function a:SetValue(a)a=math.*****(a,h,m)local b=(a-h)/m*j.Size.X.Offset;t.Position=UDim2.new(0,b,-1.33333337,0)v.Size=UDim2.new(0,b,0,6)w.Text=tostring(math.round(a))end;return a end;function b:Dropdown(a,b,c,d)local a=a or"Dropdown"local b=b or{}local c=c or function()end;local e=Instance.new("TextButton")local f=Instance.new("TextLabel")local g=Instance.new("ScrollingFrame")j[i]=j[i]+32;n.Size=UDim2.new(0,207,0,j[i]+10)k[i]=k[i]+32;e.Name="Dropdown"e.Parent=n;e.BackgroundColor3=Color3.fromRGB(53,59,72)e.BorderColor3=Color3.fromRGB(113,128,147)e.Position=UDim2.new(0,12,0,k[i])e.Size=UDim2.new(0,182,0,26)e.Selected=true;e.Font=Enum.Font.SourceSans;e.Text=tostring(a)e.TextColor3=Color3.fromRGB(245,246,250)e.TextSize=16.000;e.TextStrokeTransparency=123.000;e.TextWrapped=true;e.ZIndex=3+r;e.MouseButton1Up:Connect(function()for a,a in pairs(m)do if a~=g then a.Visible=false;f.Rotation=0 end end;if g.Visible then f.Rotation=0 else f.Rotation=180 end;g.Visible=not g.Visible end)f.Name="DownSign"f.Parent=e;f.BackgroundColor3=Color3.fromRGB(255,255,255)f.BackgroundTransparency=1.000;f.Position=UDim2.new(0,155,0,2)f.Size=UDim2.new(0,27,0,22)f.Font=Enum.Font.SourceSans;f.Text="^"f.TextColor3=Color3.fromRGB(220,221,225)f.TextSize=20.000;f.ZIndex=4+r;f.TextYAlignment=Enum.TextYAlignment.Bottom;g.Name="DropdownFrame"g.Parent=e;g.Active=true;g.BackgroundColor3=Color3.fromRGB(53,59,72)g.BorderColor3=Color3.fromRGB(53,59,72)g.Position=UDim2.new(0,0,0,28)g.Size=UDim2.new(0,182,0,0)g.Visible=false;g.CanvasSize=UDim2.new(0,0,0,0)g.ScrollBarThickness=4;g.VerticalScrollBarPosition=Enum.VerticalScrollBarPosition.Left;g.ZIndex=5+r;g.ScrollingDirection=Enum.ScrollingDirection.Y;g.ScrollBarImageColor3=Color3.fromRGB(220,221,225)table.insert(m,g)local a={}local f=0;function a:Button(a)local a=a or""local b=Instance.new("TextButton")b.Name="Button"b.Parent=g;b.BackgroundColor3=Color3.fromRGB(53,59,72)b.BorderColor3=Color3.fromRGB(113,128,147)b.Position=UDim2.new(0,6,0,f+1)b.Size=UDim2.new(0,170,0,26)b.Selected=true;b.Font=Enum.Font.SourceSans;b.TextColor3=Color3.fromRGB(245,246,250)b.TextSize=16.000;b.TextStrokeTransparency=123.000;b.ZIndex=6+r;b.Text=a;b.TextWrapped=true;f=f+27;g.CanvasSize=UDim2.new(0,182,0,f+1)if#g:GetChildren()<8 then g.Size=UDim2.new(0,182,0,g.Size.Y.Offset+27)end;b.MouseButton1Up:Connect(function()c(a)g.Visible=false;if d then e.Text=a end end)end;function a:Remove(a)local b;for c,c in pairs(g:GetChildren())do if b then f=f-27;c.Position=UDim2.new(0,6,0,c.Position.Y.Offset-27)g.CanvasSize=UDim2.new(0,182,0,f+1)end;if c.Text==a then b=true;c:Destroy()if#g:GetChildren()<8 then g.Size=UDim2.new(0,182,0,g.Size.Y.Offset-27)end end end;if not b then warn("The button you tried to remove didn't exist!")end end;for b,b in pairs(b)do a:Button(b)end;return a end;return b end;return h

local a=game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)if not game:IsLoaded()then repeat game.Loaded:Wait()until game:IsLoaded()end;repeat wait()until game:GetService("Players")if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")then repeat wait()until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")end;wait(1)do local a=game.CoreGui:FindFirstChild("Darkrai")if a then a:Destroy()end;if _G.Color==nil then _G.Color=Color3.fromRGB(147,112,219)end end;local b=game:GetService("UserInputService")local c=game:GetService("TweenService")local function d(a,d)local e=nil;local f=nil;local g=nil;local h=nil;local function i(a)local a=a.Position-g;local a=UDim2.new(h.X.Scale,h.X.Offset+a.X,h.Y.Scale,h.Y.Offset+a.Y)local a=c:Create(d,TweenInfo.new(0.15),{Position=a})a:Play()end;a.InputBegan:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then e=true;g=a.Position;h=d.Position;a.Changed:Connect(function()if a.UserInputState==Enum.UserInputState.End then e=false end end)end end)a.InputChanged:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseMovement or a.UserInputType==Enum.UserInputType.Touch then f=a end end)b.InputChanged:Connect(function(a)if a==f and e then i(a)end end)end;local e={}function e:ToggleUi()if game.CoreGui:FindFirstChild("Darkrai").Enabled==true then game.CoreGui:FindFirstChild("Darkrai").Enabled=false else game.CoreGui:FindFirstChild("Darkrai").Enabled=true end end;function e:Window(e,f,g,h)local e=e;local f=f;local i=false;local j=false;local g=g or 0;local g=""local h=h or Enum.KeyCode.RightControl;local h=string.gsub(tostring(h),"Enum.KeyCode.","")if f==""then f=""..a.Name end;local a=Instance.new("ScreenGui")a.Name="Darkrai"a.Parent=game.CoreGui;a.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;local k=Instance.new("Frame")k.Name="Main"k.Parent=a;k.ClipsDescendants=true;k.AnchorPoint=Vector2.new(0.5,0.5)k.BackgroundColor3=Color3.fromRGB(45,45,45)k.Position=UDim2.new(0.5,0,0.5,0)k.Size=UDim2.new(0,0,0,0)k:TweenSize(UDim2.new(0,656,0,400),"Out","Quad",0.4,true)local a=Instance.new("UICorner")a.Name="MCNR"a.Parent=k;local a=Instance.new("Frame")a.Name="Top"a.Parent=k;a.BackgroundColor3=Color3.fromRGB(35,35,35)a.Size=UDim2.new(0,656,0,27)local l=Instance.new("UICorner")l.Name="TCNR"l.Parent=a;local l=Instance.new("ImageLabel")l.Name="Logo"l.Parent=a;l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1.000;l.Position=UDim2.new(0,10,0,1)l.Size=UDim2.new(0,25,0,25)l.Image=""local l=Instance.new("TextLabel")l.Name="Name"l.Parent=a;l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1.000;l.Position=UDim2.new(0.0609756112,0,0,0)l.Size=UDim2.new(0,61,0,27)l.Font=Enum.Font.GothamSemibold;l.Text=e;l.TextColor3=Color3.fromRGB(147,112,219)l.TextSize=17.000;local e=Instance.new("TextLabel")e.Name="Hub"e.Parent=a;e.BackgroundColor3=Color3.fromRGB(255,255,255)e.BackgroundTransparency=1.000;e.Position=UDim2.new(0,110,0,0)e.Size=UDim2.new(0,81,0,27)e.Font=Enum.Font.GothamSemibold;e.Text="  | "..f;e.TextColor3=Color3.fromRGB(147,112,219)e.TextSize=17.000;e.TextXAlignment=Enum.TextXAlignment.Left;local e=Instance.new("TextButton")e.Name="BindButton"e.Parent=a;e.BackgroundColor3=Color3.fromRGB(255,255,255)e.BackgroundTransparency=1.000;e.Position=UDim2.new(0.847561002,0,0,0)e.Size=UDim2.new(0,100,0,27)e.Font=Enum.Font.GothamSemibold;e.Text="[RightControl]"e.TextColor3=Color3.fromRGB(147,112,219)e.TextSize=13.000;local e=Instance.new("Frame")e.Name="Tab"e.Parent=k;e.BackgroundColor3=Color3.fromRGB(35,35,35)e.Position=UDim2.new(0,5,0,30)e.Size=UDim2.new(0,150,0,365)local f=Instance.new("UICorner")f.Name="TCNR"f.Parent=e;local f=Instance.new("ScrollingFrame")f.Name="ScrollTab"f.Parent=e;f.Active=true;f.BackgroundColor3=Color3.fromRGB(255,255,255)f.BackgroundTransparency=1.000;f.Size=UDim2.new(0,150,0,365)f.CanvasSize=UDim2.new(0,0,0,0)f.ScrollBarThickness=0;local e=Instance.new("UIListLayout")e.Name="PLL"e.Parent=f;e.SortOrder=Enum.SortOrder.LayoutOrder;e.Padding=UDim.new(0,15)local l=Instance.new("UIPadding")l.Name="PPD"l.Parent=f;l.PaddingLeft=UDim.new(0,10)l.PaddingTop=UDim.new(0,10)local l=Instance.new("Frame")l.Name="Page"l.Parent=k;l.BackgroundColor3=Color3.fromRGB(35,35,35)l.Position=UDim2.new(0.245426834,0,0.075000003,0)l.Size=UDim2.new(0,490,0,365)local m=Instance.new("UICorner")m.Name="PCNR"m.Parent=l;local m=Instance.new("Frame")m.Name="MainPage"m.Parent=l;m.ClipsDescendants=true;m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1.000;m.Size=UDim2.new(0,490,0,365)local l=Instance.new("Folder")l.Name="PageList"l.Parent=m;local m=Instance.new("UIPageLayout")m.Parent=l;m.SortOrder=Enum.SortOrder.LayoutOrder;m.EasingDirection=Enum.EasingDirection.InOut;m.EasingStyle=Enum.EasingStyle.Quad;m.FillDirection=Enum.FillDirection.Vertical;m.Padding=UDim.new(0,15)m.TweenTime=0.400;m.GamepadInputEnabled=false;m.ScrollWheelInputEnabled=false;m.TouchInputEnabled=false;d(a,k)b.InputBegan:Connect(function(a)if a.KeyCode==Enum.KeyCode[h]then if i==false then i=true;k:TweenSize(UDim2.new(0,0,0,0),"In","Quad",0.4,true)else i=false;k:TweenSize(UDim2.new(0,656,0,400),"Out","Quad",0.4,true)end end end)local a={}function a:Tab(a)local b=Instance.new("TextButton")b.Parent=f;b.Name=a.."Server"b.Text=a;b.BackgroundColor3=Color3.fromRGB(35,35,35)b.BorderColor3=Color3.fromRGB(147,112,219)b.BorderSizePixel=3;b.Size=UDim2.new(0,130,0,23)b.Font=Enum.Font.GothamSemibold;b.TextColor3=Color3.fromRGB(225,225,225)b.TextSize=15.000;b.TextTransparency=0.500;local d=Instance.new("ScrollingFrame")d.Name=a.."_Page"d.Parent=l;d.Active=true;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1.000;d.BorderSizePixel=0;d.Size=UDim2.new(0,490,0,365)d.CanvasSize=UDim2.new(0,0,0,0)d.ScrollBarThickness=0;local a=Instance.new("UIPadding")local h=Instance.new("UIListLayout")a.Parent=d;a.PaddingLeft=UDim.new(0,10)a.PaddingTop=UDim.new(0,10)h.Padding=UDim.new(0,15)h.Parent=d;h.SortOrder=Enum.SortOrder.LayoutOrder;b.MouseButton1Click:Connect(function()for a,a in next,f:GetChildren()do if a:IsA("TextButton")then c:Create(a,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play()end;c:Create(b,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()end;for a,a in next,l:GetChildren()do g=string.gsub(b.Name,"Server","").."_Page"if a.Name==g then m:JumpTo(a)end end end)if j==false then for a,a in next,f:GetChildren()do if a:IsA("TextButton")then c:Create(a,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play()end;c:Create(b,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()end;m:JumpToIndex(1)j=true end;game:GetService("RunService").Stepped:Connect(function()pcall(function()d.CanvasSize=UDim2.new(0,0,0,h.AbsoluteContentSize.Y+20)f.CanvasSize=UDim2.new(0,0,0,e.AbsoluteContentSize.Y+20)end)end)local a={}function a:Button(a,b)local e=Instance.new("Frame")local f=Instance.new("UICorner")local g=Instance.new("TextButton")local h=Instance.new("UICorner")local i=Instance.new("Frame")local j=Instance.new("UICorner")e.Name="Button"e.Parent=d;e.BackgroundColor3=_G.Color;e.Size=UDim2.new(0,470,0,31)f.CornerRadius=UDim.new(0,5)f.Parent=e;g.Name="TextBtn"g.Parent=e;g.BackgroundColor3=Color3.fromRGB(45,45,45)g.Position=UDim2.new(0,1,0,1)g.Size=UDim2.new(0,468,0,29)g.AutoButtonColor=false;g.Font=Enum.Font.GothamSemibold;g.Text=a;g.TextColor3=Color3.fromRGB(225,225,225)g.TextSize=15.000;h.CornerRadius=UDim.new(0,5)h.Parent=g;i.Name="Black"i.Parent=e;i.BackgroundColor3=Color3.fromRGB(0,0,0)i.BackgroundTransparency=1.000;i.BorderSizePixel=0;i.Position=UDim2.new(0,1,0,1)i.Size=UDim2.new(0,468,0,29)j.CornerRadius=UDim.new(0,5)j.Parent=i;g.MouseEnter:Connect(function()c:Create(i,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0.7}):Play()end)g.MouseLeave:Connect(function()c:Create(i,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()end)g.MouseButton1Click:Connect(function()g.TextSize=0;c:Create(g,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextSize=15}):Play()b()end)end;function a:Toggle(a,b,e)b=b or false;local f=b;local g=Instance.new("Frame")local h=Instance.new("UICorner")local i=Instance.new("TextButton")local j=Instance.new("UICorner")local k=Instance.new("TextLabel")local l=Instance.new("Frame")local m=Instance.new("UICorner")local n=Instance.new("Frame")local o=Instance.new("UICorner")g.Name="Toggle"g.Parent=d;g.BackgroundColor3=_G.Color;g.Size=UDim2.new(0,470,0,31)h.CornerRadius=UDim.new(0,5)h.Parent=g;i.Name="Button"i.Parent=g;i.BackgroundColor3=Color3.fromRGB(45,45,45)i.Position=UDim2.new(0,1,0,1)i.Size=UDim2.new(0,468,0,29)i.AutoButtonColor=false;i.Font=Enum.Font.SourceSans;i.Text=""i.TextColor3=Color3.fromRGB(0,0,0)i.TextSize=11.000;j.CornerRadius=UDim.new(0,5)j.Parent=i;k.Name="Label"k.Parent=g;k.BackgroundColor3=Color3.fromRGB(255,255,255)k.BackgroundTransparency=1.000;k.Position=UDim2.new(0,1,0,1)k.Size=UDim2.new(0,468,0,29)k.Font=Enum.Font.GothamSemibold;k.Text=a;k.TextColor3=Color3.fromRGB(225,225,225)k.TextSize=15.000;l.Name="ToggleImage"l.Parent=g;l.BackgroundColor3=Color3.fromRGB(225,225,225)l.Position=UDim2.new(0,415,0,5)l.Size=UDim2.new(0,45,0,20)m.CornerRadius=UDim.new(0,10)m.Parent=l;n.Name="Circle"n.Parent=l;n.BackgroundColor3=Color3.fromRGB(227,60,60)n.Position=UDim2.new(0,2,0,2)n.Size=UDim2.new(0,16,0,16)o.CornerRadius=UDim.new(0,10)o.Parent=n;i.MouseButton1Click:Connect(function()if f==false then f=true;n:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)c:Create(n,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=_G.Color}):Play()else f=false;n:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)c:Create(n,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(227,60,110)}):Play()end;pcall(e,f)end)if b==true then f=true;n:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)c:Create(n,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=_G.Color}):Play()pcall(e,f)end end;function a:Dropdown(a,b,e)local f=false;local g=Instance.new("Frame")local h=Instance.new("UICorner")local i=Instance.new("TextLabel")local j=Instance.new("ScrollingFrame")local k=Instance.new("UIListLayout")local l=Instance.new("UIPadding")local m=Instance.new("TextButton")local n=Instance.new("ImageLabel")g.Name="Dropdown"g.Parent=d;g.BackgroundColor3=Color3.fromRGB(45,45,45)g.ClipsDescendants=true;g.Size=UDim2.new(0,470,0,31)h.CornerRadius=UDim.new(0,5)h.Parent=g;i.Name="DropTitle"i.Parent=g;i.BackgroundColor3=Color3.fromRGB(255,255,255)i.BackgroundTransparency=1.000;i.Size=UDim2.new(0,470,0,31)i.Font=Enum.Font.GothamSemibold;i.Text=a.." : "i.TextColor3=Color3.fromRGB(225,225,225)i.TextSize=15.000;j.Name="DropScroll"j.Parent=i;j.Active=true;j.BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1.000;j.BorderSizePixel=0;j.Position=UDim2.new(0,0,0,31)j.Size=UDim2.new(0,470,0,100)j.CanvasSize=UDim2.new(0,0,0,0)j.ScrollBarThickness=3;k.Parent=j;k.SortOrder=Enum.SortOrder.LayoutOrder;k.Padding=UDim.new(0,5)l.Parent=j;l.PaddingLeft=UDim.new(0,5)l.PaddingTop=UDim.new(0,5)n.Name="DropImage"n.Parent=g;n.BackgroundColor3=Color3.fromRGB(255,255,255)n.BackgroundTransparency=1.000;n.Position=UDim2.new(0,445,0,6)n.Rotation=180.000;n.Size=UDim2.new(0,20,0,20)n.Image="rbxassetid://6031090990"m.Name="DropButton"m.Parent=g;m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1.000;m.Size=UDim2.new(0,470,0,31)m.Font=Enum.Font.SourceSans;m.Text=""m.TextColor3=Color3.fromRGB(0,0,0)m.TextSize=14.000;for b,b in next,b do local d=Instance.new("TextButton")d.Name="Item"d.Parent=j;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1.000;d.Size=UDim2.new(0,460,0,26)d.Font=Enum.Font.GothamSemibold;d.Text=tostring(b)d.TextColor3=Color3.fromRGB(225,225,225)d.TextSize=13.000;d.TextTransparency=0.500;d.MouseEnter:Connect(function()c:Create(d,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()end)d.MouseLeave:Connect(function()c:Create(d,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play()end)d.MouseButton1Click:Connect(function()f=false;g:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)c:Create(n,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play()e(d.Text)i.Text=a.." : "..d.Text end)end;j.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y+10)m.MouseButton1Click:Connect(function()if f==false then f=true;g:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)c:Create(n,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()else f=false;g:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)c:Create(n,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play()end end)local b={}function b:Add(b)local d=Instance.new("TextButton")d.Name="Item"d.Parent=j;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1.000;d.Size=UDim2.new(0,470,0,26)d.Font=Enum.Font.GothamSemibold;d.Text=tostring(b)d.TextColor3=Color3.fromRGB(225,225,225)d.TextSize=13.000;d.TextTransparency=0.500;d.MouseEnter:Connect(function()c:Create(d,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()end)d.MouseLeave:Connect(function()c:Create(d,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play()end)d.MouseButton1Click:Connect(function()f=false;g:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)c:Create(n,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play()e(d.Text)i.Text=a.." : "..d.Text end)end;function b:Clear()i.Text=tostring(a).." : "f=false;g:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)c:Create(n,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play()for a,a in next,j:GetChildren()do if a:IsA("TextButton")then a:Destroy()end end end;return b end;function a:Slider(a,b,c,e,f)local g=Instance.new("Frame")local h=Instance.new("UICorner")local i=Instance.new("Frame")local j=Instance.new("UICorner")local k=Instance.new("TextLabel")local l=Instance.new("Frame")local m=Instance.new("TextButton")local n=Instance.new("Frame")local o=Instance.new("Frame")local p=Instance.new("UICorner")local q=Instance.new("UICorner")local r=Instance.new("Frame")local s=Instance.new("UICorner")local t=Instance.new("Frame")local u=Instance.new("UICorner")local v=Instance.new("TextBox")local w=Instance.new("UICorner")g.Name="Slider"g.Parent=d;g.BackgroundColor3=_G.Color;g.BackgroundTransparency=0;g.Size=UDim2.new(0,470,0,51)h.CornerRadius=UDim.new(0,5)h.Name="slidercorner"h.Parent=g;i.Name="sliderr"i.Parent=g;i.BackgroundColor3=Color3.fromRGB(45,45,45)i.Position=UDim2.new(0,1,0,1)i.Size=UDim2.new(0,468,0,49)j.CornerRadius=UDim.new(0,5)j.Name="sliderrcorner"j.Parent=i;k.Name="SliderLabel"k.Parent=i;k.BackgroundColor3=Color3.fromRGB(255,255,255)k.BackgroundTransparency=1.000;k.Position=UDim2.new(0,15,0,0)k.Size=UDim2.new(0,180,0,26)k.Font=Enum.Font.GothamSemibold;k.Text=a;k.TextColor3=Color3.fromRGB(225,225,225)k.TextSize=16.000;k.TextTransparency=0;k.TextXAlignment=Enum.TextXAlignment.Left;l.Name="HAHA"l.Parent=i;l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1.000;l.Size=UDim2.new(0,468,0,29)m.Name="AHEHE"m.Parent=i;m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1.000;m.Position=UDim2.new(0,10,0,35)m.Size=UDim2.new(0,448,0,5)m.Font=Enum.Font.SourceSans;m.Text=""m.TextColor3=Color3.fromRGB(0,0,0)m.TextSize=14.000;n.Name="bar"n.Parent=m;n.BackgroundColor3=Color3.fromRGB(35,35,35)n.Size=UDim2.new(0,448,0,5)o.Name="bar1"o.Parent=n;o.BackgroundColor3=_G.Color;o.BackgroundTransparency=0;o.Size=UDim2.new(e/c,0,0,5)p.CornerRadius=UDim.new(0,5)p.Name="bar1corner"p.Parent=o;q.CornerRadius=UDim.new(0,5)q.Name="barcorner"q.Parent=n;r.Name="circlebar"r.Parent=o;r.BackgroundColor3=Color3.fromRGB(225,225,225)r.Position=UDim2.new(1,-2,0,-3)r.Size=UDim2.new(0,10,0,10)s.CornerRadius=UDim.new(0,100)s.Parent=r;t.Name="slidervalue"t.Parent=i;t.BackgroundColor3=_G.Color;t.BackgroundTransparency=0;t.Position=UDim2.new(0,395,0,5)t.Size=UDim2.new(0,65,0,18)u.CornerRadius=UDim.new(0,5)u.Name="valuecorner"u.Parent=t;v.Parent=t;v.BackgroundColor3=Color3.fromRGB(35,35,35)v.Position=UDim2.new(0,1,0,1)v.Size=UDim2.new(0,63,0,16)v.Font=Enum.Font.GothamSemibold;v.TextColor3=Color3.fromRGB(225,225,225)v.TextSize=9.000;v.Text=e;v.TextTransparency=0;w.CornerRadius=UDim.new(0,5)w.Parent=v;local a=game.Players.LocalPlayer:GetMouse()local d=game:GetService("UserInputService")if Value==nil then Value=e;pcall(function()f(Value)end)end;m.MouseButton1Down:Connect(function()Value=math.floor((((tonumber(c)-tonumber(b))/448)*o.AbsoluteSize.X)+tonumber(b))or 0;pcall(function()f(Value)end)o.Size=UDim2.new(0,math.clamp(a.X-o.AbsolutePosition.X,0,448),0,5)r.Position=UDim2.new(0,math.clamp(a.X-o.AbsolutePosition.X-2,0,438),0,-3)moveconnection=a.Move:Connect(function()v.Text=Value;Value=math.floor((((tonumber(c)-tonumber(b))/448)*o.AbsoluteSize.X)+tonumber(b))pcall(function()f(Value)end)o.Size=UDim2.new(0,math.clamp(a.X-o.AbsolutePosition.X,0,448),0,5)r.Position=UDim2.new(0,math.clamp(a.X-o.AbsolutePosition.X-2,0,438),0,-3)end)releaseconnection=d.InputEnded:Connect(function(d)if d.UserInputType==Enum.UserInputType.MouseButton1 or d.UserInputType==Enum.UserInputType.Touch then Value=math.floor((((tonumber(c)-tonumber(b))/448)*o.AbsoluteSize.X)+tonumber(b))pcall(function()f(Value)end)o.Size=UDim2.new(0,math.clamp(a.X-o.AbsolutePosition.X,0,448),0,5)r.Position=UDim2.new(0,math.clamp(a.X-o.AbsolutePosition.X-2,0,438),0,-3)moveconnection:Disconnect()releaseconnection:Disconnect()end end)end)releaseconnection=d.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then Value=math.floor((((tonumber(c)-tonumber(b))/448)*o.AbsoluteSize.X)+tonumber(b))v.Text=Value end end)v.FocusLost:Connect(function()if tonumber(v.Text)>c then v.Text=c end;o.Size=UDim2.new((v.Text or 0)/c,0,0,5)r.Position=UDim2.new(1,-2,0,-3)v.Text=tostring(v.Text and math.floor((v.Text/c)*(c-b)+b))pcall(f,v.Text)end)end;function a:Textbox(a,b,c)local e=Instance.new("Frame")local f=Instance.new("UICorner")local g=Instance.new("Frame")local h=Instance.new("UICorner")local i=Instance.new("TextLabel")local j=Instance.new("TextButton")local k=Instance.new("TextBox")local l=Instance.new("UICorner")e.Name="Textbox"e.Parent=d;e.BackgroundColor3=_G.Color;e.BackgroundTransparency=0;e.Size=UDim2.new(0,470,0,31)f.CornerRadius=UDim.new(0,5)f.Name="TextboxCorner"f.Parent=e;g.Name="Textboxx"g.Parent=e;g.BackgroundColor3=Color3.fromRGB(45,45,45)g.Position=UDim2.new(0,1,0,1)g.Size=UDim2.new(0,468,0,29)h.CornerRadius=UDim.new(0,5)h.Name="TextboxxCorner"h.Parent=g;i.Name="TextboxLabel"i.Parent=e;i.BackgroundColor3=Color3.fromRGB(255,255,255)i.BackgroundTransparency=1.000;i.Position=UDim2.new(0,15,0,0)i.Text=a;i.Size=UDim2.new(0,145,0,31)i.Font=Enum.Font.GothamSemibold;i.TextColor3=Color3.fromRGB(225,225,225)i.TextSize=16.000;i.TextTransparency=0;i.TextXAlignment=Enum.TextXAlignment.Left;j.Name="txtbtn"j.Parent=e;j.BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1.000;j.Position=UDim2.new(0,1,0,1)j.Size=UDim2.new(0,468,0,29)j.Font=Enum.Font.SourceSans;j.Text=""j.TextColor3=Color3.fromRGB(0,0,0)j.TextSize=14.000;k.Name="RealTextbox"k.Parent=e;k.BackgroundColor3=Color3.fromRGB(35,35,35)k.BackgroundTransparency=0;k.Position=UDim2.new(0,360,0,4)k.Size=UDim2.new(0,100,0,24)k.Font=Enum.Font.GothamSemibold;k.Text=""k.TextColor3=Color3.fromRGB(225,225,225)k.TextSize=11.000;k.TextTransparency=0;k.FocusLost:Connect(function()c(k.Text)if b then k.Text=""end end)l.CornerRadius=UDim.new(0,5)l.Parent=k end;return a end;return a end;return e
local b={RainbowColorValue=0,HueSelectionPosition=0}local c=game:GetService("UserInputService")local d=game:GetService("TweenService")local e=game:GetService("RunService")local f=game:GetService("Players").LocalPlayer;local f=f:GetMouse()local g=Color3.fromRGB(44,120,224)local h=Enum.KeyCode.RightControl;local i=Instance.new("ScreenGui")i.Name="ui"i.Parent=game.CoreGui;i.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;coroutine.wrap(function()while wait()do b.RainbowColorValue=b.RainbowColorValue+1/255;b.HueSelectionPosition=b.HueSelectionPosition+1;if b.RainbowColorValue>=1 then b.RainbowColorValue=0 end;if b.HueSelectionPosition==80 then b.HueSelectionPosition=0 end end end)()local function j(a,b)local d=nil;local e=nil;local f=nil;local g=nil;local function h(a)local a=a.Position-f;local a=UDim2.new(g.X.Scale,g.X.Offset+a.X,g.Y.Scale,g.Y.Offset+a.Y)b.Position=a end;a.InputBegan:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch then d=true;f=a.Position;g=b.Position;a.Changed:Connect(function()if a.UserInputState==Enum.UserInputState.End then d=false end end)end end)a.InputChanged:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseMovement or a.UserInputType==Enum.UserInputType.Touch then e=a end end)c.InputChanged:Connect(function(a)if a==e and d then h(a)end end)end;function b:Window(k,l,m)h=m or Enum.KeyCode.RightControl;g=l or Color3.fromRGB(44,120,224)a=false;local l=Instance.new("Frame")local m=Instance.new("Frame")local n=Instance.new("UIListLayout")local o=Instance.new("TextLabel")local p=Instance.new("Folder")local q=Instance.new("Frame")l.Name="Main"l.Parent=i;l.AnchorPoint=Vector2.new(0.5,0.5)l.BackgroundColor3=Color3.fromRGB(30,30,30)l.BorderSizePixel=0;l.Position=UDim2.new(0.5,0,0.5,0)l.Size=UDim2.new(0,0,0,0)l.ClipsDescendants=true;l.Visible=true;m.Name="TabHold"m.Parent=l;m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1.000;m.Position=UDim2.new(0.0339285731,0,0.147335425,0)m.Size=UDim2.new(0,107,0,254)n.Name="TabHoldLayout"n.Parent=m;n.SortOrder=Enum.SortOrder.LayoutOrder;n.Padding=UDim.new(0,11)o.Name="Title"o.Parent=l;o.BackgroundColor3=Color3.fromRGB(255,255,255)o.BackgroundTransparency=1.000;o.Position=UDim2.new(0.0339285731,0,0.0564263314,0)o.Size=UDim2.new(0,200,0,23)o.Font=Enum.Font.GothamSemibold;o.Text=k;o.TextColor3=Color3.fromRGB(68,68,68)o.TextSize=12.000;o.TextXAlignment=Enum.TextXAlignment.Left;q.Name="DragFrame"q.Parent=l;q.BackgroundColor3=Color3.fromRGB(255,255,255)q.BackgroundTransparency=1.000;q.Size=UDim2.new(0,560,0,41)l:TweenSize(UDim2.new(0,560,0,319),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.6,true)j(q,l)local j=false;c.InputBegan:Connect(function(a,b)if a.KeyCode==h then if j==false then j=true;l:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.6,true,function()i.Enabled=false end)else j=false;i.Enabled=true;l:TweenSize(UDim2.new(0,560,0,319),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.6,true)end end end)p.Name="TabFolder"p.Parent=l;function b:ChangePresetColor(a)g=a end;local c={}function c:Tab(c)local h=Instance.new("TextButton")local i=Instance.new("TextLabel")local j=Instance.new("Frame")local k=Instance.new("UICorner")h.Name="TabBtn"h.Parent=m;h.BackgroundColor3=Color3.fromRGB(255,255,255)h.BackgroundTransparency=1.000;h.Size=UDim2.new(0,107,0,21)h.Font=Enum.Font.SourceSans;h.Text=""h.TextColor3=Color3.fromRGB(0,0,0)h.TextSize=14.000;i.Name="TabTitle"i.Parent=h;i.BackgroundColor3=Color3.fromRGB(255,255,255)i.BackgroundTransparency=1.000;i.Size=UDim2.new(0,107,0,21)i.Font=Enum.Font.Gotham;i.Text=c;i.TextColor3=Color3.fromRGB(150,150,150)i.TextSize=14.000;i.TextXAlignment=Enum.TextXAlignment.Left;j.Name="TabBtnIndicator"j.Parent=h;j.BackgroundColor3=g;j.BorderSizePixel=0;j.Position=UDim2.new(0,0,1,0)j.Size=UDim2.new(0,0,0,2)k.Name="TabBtnIndicatorCorner"k.Parent=j;coroutine.wrap(function()while wait()do j.BackgroundColor3=g end end)()local c=Instance.new("ScrollingFrame")local k=Instance.new("UIListLayout")c.Name="Tab"c.Parent=p;c.Active=true;c.BackgroundColor3=Color3.fromRGB(255,255,255)c.BackgroundTransparency=1.000;c.BorderSizePixel=0;c.Position=UDim2.new(0.31400001,0,0.147,0)c.Size=UDim2.new(0,373,0,254)c.CanvasSize=UDim2.new(0,0,0,0)c.ScrollBarThickness=3;c.Visible=false;k.Name="TabLayout"k.Parent=c;k.SortOrder=Enum.SortOrder.LayoutOrder;k.Padding=UDim.new(0,6)if a==false then a=true;j.Size=UDim2.new(0,13,0,2)i.TextColor3=Color3.fromRGB(255,255,255)c.Visible=true end;h.MouseButton1Click:Connect(function()for a,a in next,p:GetChildren()do if a.Name=="Tab"then a.Visible=false end;c.Visible=true end;for a,a in next,m:GetChildren()do if a.Name=="TabBtn"then a.TabBtnIndicator:TweenSize(UDim2.new(0,0,0,2),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)j:TweenSize(UDim2.new(0,13,0,2),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)d:Create(a.TabTitle,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(150,150,150)}):Play()d:Create(i,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,255,255)}):Play()end end end)local a={}function a:Button(a,b)local e=Instance.new("TextButton")local f=Instance.new("UICorner")local g=Instance.new("TextLabel")e.Name="Button"e.Parent=c;e.BackgroundColor3=Color3.fromRGB(34,34,34)e.Size=UDim2.new(0,363,0,42)e.AutoButtonColor=false;e.Font=Enum.Font.SourceSans;e.Text=""e.TextColor3=Color3.fromRGB(0,0,0)e.TextSize=14.000;f.CornerRadius=UDim.new(0,5)f.Name="ButtonCorner"f.Parent=e;g.Name="ButtonTitle"g.Parent=e;g.BackgroundColor3=Color3.fromRGB(255,255,255)g.BackgroundTransparency=1.000;g.Position=UDim2.new(0.0358126722,0,0,0)g.Size=UDim2.new(0,187,0,42)g.Font=Enum.Font.Gotham;g.Text=a;g.TextColor3=Color3.fromRGB(255,255,255)g.TextSize=14.000;g.TextXAlignment=Enum.TextXAlignment.Left;e.MouseEnter:Connect(function()d:Create(e,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(37,37,37)}):Play()end)e.MouseLeave:Connect(function()d:Create(e,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(34,34,34)}):Play()end)e.MouseButton1Click:Connect(function()pcall(b)end)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;function a:Toggle(a,b,e)local f=false;local h=Instance.new("TextButton")local i=Instance.new("UICorner")local j=Instance.new("TextLabel")local l=Instance.new("Frame")local m=Instance.new("UICorner")local n=Instance.new("Frame")local o=Instance.new("UICorner")local p=Instance.new("Frame")local q=Instance.new("UICorner")local r=Instance.new("Frame")local s=Instance.new("UICorner")h.Name="Toggle"h.Parent=c;h.BackgroundColor3=Color3.fromRGB(34,34,34)h.Position=UDim2.new(0.215625003,0,0.446271926,0)h.Size=UDim2.new(0,363,0,42)h.AutoButtonColor=false;h.Font=Enum.Font.SourceSans;h.Text=""h.TextColor3=Color3.fromRGB(0,0,0)h.TextSize=14.000;i.CornerRadius=UDim.new(0,5)i.Name="ToggleCorner"i.Parent=h;j.Name="ToggleTitle"j.Parent=h;j.BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1.000;j.Position=UDim2.new(0.0358126722,0,0,0)j.Size=UDim2.new(0,187,0,42)j.Font=Enum.Font.Gotham;j.Text=a;j.TextColor3=Color3.fromRGB(255,255,255)j.TextSize=14.000;j.TextXAlignment=Enum.TextXAlignment.Left;l.Name="FrameToggle1"l.Parent=h;l.BackgroundColor3=Color3.fromRGB(50,50,50)l.Position=UDim2.new(0.859504104,0,0.285714298,0)l.Size=UDim2.new(0,37,0,18)m.Name="FrameToggle1Corner"m.Parent=l;n.Name="FrameToggle2"n.Parent=l;n.BackgroundColor3=Color3.fromRGB(34,34,34)n.Position=UDim2.new(0.0489999987,0,0.0930000022,0)n.Size=UDim2.new(0,33,0,14)o.Name="FrameToggle2Corner"o.Parent=n;p.Name="FrameToggle3"p.Parent=l;p.BackgroundColor3=g;p.BackgroundTransparency=1.000;p.Size=UDim2.new(0,37,0,18)q.Name="FrameToggle3Corner"q.Parent=p;r.Name="FrameToggleCircle"r.Parent=l;r.BackgroundColor3=Color3.fromRGB(50,50,50)r.Position=UDim2.new(0.127000004,0,0.222000003,0)r.Size=UDim2.new(0,10,0,10)s.Name="FrameToggleCircleCorner"s.Parent=r;coroutine.wrap(function()while wait()do p.BackgroundColor3=g end end)()h.MouseButton1Click:Connect(function()if f==false then d:Create(h,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(37,37,37)}):Play()d:Create(l,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(n,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(p,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()d:Create(r,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(255,255,255)}):Play()r:TweenPosition(UDim2.new(0.587,0,0.222000003,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)else d:Create(h,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(34,34,34)}):Play()d:Create(l,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()d:Create(n,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()d:Create(p,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(r,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(50,50,50)}):Play()r:TweenPosition(UDim2.new(0.127000004,0,0.222000003,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)end;f=not f;pcall(e,f)end)if b==true then d:Create(h,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(37,37,37)}):Play()d:Create(l,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(n,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(p,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()d:Create(r,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(255,255,255)}):Play()r:TweenPosition(UDim2.new(0.587,0,0.222000003,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)f=not f end;c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;function a:Slider(a,b,d,e,f)local h=false;local i=Instance.new("TextButton")local j=Instance.new("UICorner")local l=Instance.new("TextLabel")local m=Instance.new("TextLabel")local n=Instance.new("Frame")local o=Instance.new("Frame")local p=Instance.new("ImageButton")i.Name="Slider"i.Parent=c;i.BackgroundColor3=Color3.fromRGB(34,34,34)i.Position=UDim2.new(-0.48035714,0,-0.570532918,0)i.Size=UDim2.new(0,363,0,60)i.AutoButtonColor=false;i.Font=Enum.Font.SourceSans;i.Text=""i.TextColor3=Color3.fromRGB(0,0,0)i.TextSize=14.000;j.CornerRadius=UDim.new(0,5)j.Name="SliderCorner"j.Parent=i;l.Name="SliderTitle"l.Parent=i;l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1.000;l.Position=UDim2.new(0.0358126722,0,0,0)l.Size=UDim2.new(0,187,0,42)l.Font=Enum.Font.Gotham;l.Text=a;l.TextColor3=Color3.fromRGB(255,255,255)l.TextSize=14.000;l.TextXAlignment=Enum.TextXAlignment.Left;m.Name="SliderValue"m.Parent=i;m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1.000;m.Position=UDim2.new(0.0358126722,0,0,0)m.Size=UDim2.new(0,335,0,42)m.Font=Enum.Font.Gotham;m.Text=tostring(e and math.floor(e/d*(d-b)+b)or 0)m.TextColor3=Color3.fromRGB(255,255,255)m.TextSize=14.000;m.TextXAlignment=Enum.TextXAlignment.Right;n.Name="SlideFrame"n.Parent=i;n.BackgroundColor3=Color3.fromRGB(50,50,50)n.BorderSizePixel=0;n.Position=UDim2.new(0.0342647657,0,0.686091602,0)n.Size=UDim2.new(0,335,0,3)o.Name="CurrentValueFrame"o.Parent=n;o.BackgroundColor3=g;o.BorderSizePixel=0;o.Size=UDim2.new((e or 0)/d,0,0,3)p.Name="SlideCircle"p.Parent=n;p.BackgroundColor3=g;p.BackgroundTransparency=1.000;p.Position=UDim2.new((e or 0)/d,-6,-1.30499995,0)p.Size=UDim2.new(0,11,0,11)p.Image="rbxassetid://3570695787"p.ImageColor3=g;coroutine.wrap(function()while wait()do o.BackgroundColor3=g;p.ImageColor3=g end end)()local function a(a)local c=UDim2.new(math.clamp((a.Position.X-n.AbsolutePosition.X)/n.AbsoluteSize.X,0,1),-6,-1.30499995,0)local a=UDim2.new(math.clamp((a.Position.X-n.AbsolutePosition.X)/n.AbsoluteSize.X,0,1),0,0,3)o:TweenSize(a,"Out","Sine",0.1,true)p:TweenPosition(c,"Out","Sine",0.1,true)local a=math.floor(c.X.Scale*d/d*(d-b)+b)m.Text=tostring(a)pcall(f,a)end;p.InputBegan:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then h=true end end)p.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then h=false end end)game:GetService("UserInputService").InputChanged:Connect(function(b)if h and b.UserInputType==Enum.UserInputType.MouseMovement then a(b)end end)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;function a:Dropdown(a,b,e)local f=false;local g=0;local h=0;local i=Instance.new("Frame")local j=Instance.new("UICorner")local l=Instance.new("TextButton")local m=Instance.new("TextLabel")local n=Instance.new("ImageLabel")local o=Instance.new("ScrollingFrame")local p=Instance.new("UIListLayout")i.Name="Dropdown"i.Parent=c;i.BackgroundColor3=Color3.fromRGB(34,34,34)i.ClipsDescendants=true;i.Position=UDim2.new(-0.541071415,0,-0.532915354,0)i.Size=UDim2.new(0,363,0,42)j.CornerRadius=UDim.new(0,5)j.Name="DropdownCorner"j.Parent=i;l.Name="DropdownBtn"l.Parent=i;l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1.000;l.Size=UDim2.new(0,363,0,42)l.Font=Enum.Font.SourceSans;l.Text=""l.TextColor3=Color3.fromRGB(0,0,0)l.TextSize=14.000;m.Name="DropdownTitle"m.Parent=i;m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1.000;m.Position=UDim2.new(0.0358126722,0,0,0)m.Size=UDim2.new(0,187,0,42)m.Font=Enum.Font.Gotham;m.Text=a;m.TextColor3=Color3.fromRGB(255,255,255)m.TextSize=14.000;m.TextXAlignment=Enum.TextXAlignment.Left;n.Name="ArrowImg"n.Parent=m;n.BackgroundColor3=Color3.fromRGB(255,255,255)n.BackgroundTransparency=1.000;n.Position=UDim2.new(1.65240645,0,0.190476194,0)n.Size=UDim2.new(0,26,0,26)n.Image="http://www.roblox.com/asset/?id=6034818375"o.Name="DropItemHolder"o.Parent=m;o.Active=true;o.BackgroundColor3=Color3.fromRGB(255,255,255)o.BackgroundTransparency=1.000;o.BorderSizePixel=0;o.Position=UDim2.new(-0.00400000019,0,1.04999995,0)o.Size=UDim2.new(0,342,0,0)o.CanvasSize=UDim2.new(0,0,0,0)o.ScrollBarThickness=3;p.Name="DropLayout"p.Parent=o;p.SortOrder=Enum.SortOrder.LayoutOrder;l.MouseButton1Click:Connect(function()if f==false then i:TweenSize(UDim2.new(0,363,0,55+g),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)d:Create(n,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=270}):Play()wait(.2)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)else i:TweenSize(UDim2.new(0,363,0,42),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)d:Create(n,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()wait(.2)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;f=not f end)for b,b in next,b do h=h+1;if h<=3 then g=g+26;o.Size=UDim2.new(0,342,0,g)end;local g=Instance.new("TextButton")local h=Instance.new("UICorner")g.Name="Item"g.Parent=o;g.BackgroundColor3=Color3.fromRGB(34,34,34)g.ClipsDescendants=true;g.Size=UDim2.new(0,335,0,25)g.AutoButtonColor=false;g.Font=Enum.Font.Gotham;g.Text=b;g.TextColor3=Color3.fromRGB(255,255,255)g.TextSize=15.000;h.CornerRadius=UDim.new(0,4)h.Name="ItemCorner"h.Parent=g;g.MouseEnter:Connect(function()d:Create(g,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(37,37,37)}):Play()end)g.MouseLeave:Connect(function()d:Create(g,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(34,34,34)}):Play()end)g.MouseButton1Click:Connect(function()f=not f;m.Text=a.." - "..b;pcall(e,b)i:TweenSize(UDim2.new(0,363,0,42),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)d:Create(n,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()wait(.2)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end)o.CanvasSize=UDim2.new(0,0,0,p.AbsoluteContentSize.Y)end;c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;function a:Colorpicker(a,h,i)local j=false;local l=Color3.fromRGB(0,0,0)local m=Color3.fromRGB(0,0,0)local n=nil;local o=nil;local p,q,r=1,1,1;local s=false;local t=nil;local t=nil;local u=nil;local v=Instance.new("Frame")local w=Instance.new("UICorner")local x=Instance.new("TextLabel")local y=Instance.new("Frame")local z=Instance.new("UICorner")local A=Instance.new("TextButton")local B=Instance.new("UICorner")local C=Instance.new("TextLabel")local D=Instance.new("TextButton")local E=Instance.new("TextButton")local F=Instance.new("UICorner")local G=Instance.new("TextLabel")local H=Instance.new("Frame")local I=Instance.new("UICorner")local J=Instance.new("Frame")local K=Instance.new("UICorner")local L=Instance.new("Frame")local M=Instance.new("UICorner")local N=Instance.new("Frame")local O=Instance.new("UICorner")local P=Instance.new("ImageLabel")local Q=Instance.new("UICorner")local R=Instance.new("ImageLabel")local S=Instance.new("ImageLabel")local T=Instance.new("UICorner")local U=Instance.new("UIGradient")local V=Instance.new("ImageLabel")v.Name="Colorpicker"v.Parent=c;v.BackgroundColor3=Color3.fromRGB(34,34,34)v.ClipsDescendants=true;v.Position=UDim2.new(-0.541071415,0,-0.532915354,0)v.Size=UDim2.new(0,363,0,42)w.CornerRadius=UDim.new(0,5)w.Name="ColorpickerCorner"w.Parent=v;x.Name="ColorpickerTitle"x.Parent=v;x.BackgroundColor3=Color3.fromRGB(255,255,255)x.BackgroundTransparency=1.000;x.Position=UDim2.new(0.0358126722,0,0,0)x.Size=UDim2.new(0,187,0,42)x.Font=Enum.Font.Gotham;x.Text=a;x.TextColor3=Color3.fromRGB(255,255,255)x.TextSize=14.000;x.TextXAlignment=Enum.TextXAlignment.Left;y.Name="BoxColor"y.Parent=x;y.BackgroundColor3=Color3.fromRGB(255,0,4)y.Position=UDim2.new(1.60427809,0,0.214285716,0)y.Size=UDim2.new(0,41,0,23)z.CornerRadius=UDim.new(0,5)z.Name="BoxColorCorner"z.Parent=y;A.Name="ConfirmBtn"A.Parent=x;A.BackgroundColor3=Color3.fromRGB(34,34,34)A.Position=UDim2.new(1.25814295,0,1.09037197,0)A.Size=UDim2.new(0,105,0,32)A.AutoButtonColor=false;A.Font=Enum.Font.SourceSans;A.Text=""A.TextColor3=Color3.fromRGB(0,0,0)A.TextSize=14.000;B.CornerRadius=UDim.new(0,5)B.Name="ConfirmBtnCorner"B.Parent=A;C.Name="ConfirmBtnTitle"C.Parent=A;C.BackgroundColor3=Color3.fromRGB(255,255,255)C.BackgroundTransparency=1.000;C.Size=UDim2.new(0,33,0,32)C.Font=Enum.Font.Gotham;C.Text="Confirm"C.TextColor3=Color3.fromRGB(255,255,255)C.TextSize=14.000;C.TextXAlignment=Enum.TextXAlignment.Left;D.Name="ColorpickerBtn"D.Parent=x;D.BackgroundColor3=Color3.fromRGB(255,255,255)D.BackgroundTransparency=1.000;D.Size=UDim2.new(0,363,0,42)D.Font=Enum.Font.SourceSans;D.Text=""D.TextColor3=Color3.fromRGB(0,0,0)D.TextSize=14.000;E.Name="RainbowToggle"E.Parent=x;E.BackgroundColor3=Color3.fromRGB(34,34,34)E.Position=UDim2.new(1.26349044,0,2.12684202,0)E.Size=UDim2.new(0,104,0,32)E.AutoButtonColor=false;E.Font=Enum.Font.SourceSans;E.Text=""E.TextColor3=Color3.fromRGB(0,0,0)E.TextSize=14.000;F.CornerRadius=UDim.new(0,5)F.Name="RainbowToggleCorner"F.Parent=E;G.Name="RainbowToggleTitle"G.Parent=E;G.BackgroundColor3=Color3.fromRGB(255,255,255)G.BackgroundTransparency=1.000;G.Size=UDim2.new(0,33,0,32)G.Font=Enum.Font.Gotham;G.Text="Rainbow"G.TextColor3=Color3.fromRGB(255,255,255)G.TextSize=14.000;G.TextXAlignment=Enum.TextXAlignment.Left;H.Name="FrameRainbowToggle1"H.Parent=E;H.BackgroundColor3=Color3.fromRGB(50,50,50)H.Position=UDim2.new(0.649999976,0,0.186000004,0)H.Size=UDim2.new(0,37,0,18)I.Name="FrameRainbowToggle1Corner"I.Parent=H;J.Name="FrameRainbowToggle2"J.Parent=H;J.BackgroundColor3=Color3.fromRGB(34,34,34)J.Position=UDim2.new(0.0590000004,0,0.112999998,0)J.Size=UDim2.new(0,33,0,14)K.Name="FrameRainbowToggle2"K.Parent=J;L.Name="FrameRainbowToggle3"L.Parent=H;L.BackgroundColor3=Color3.fromRGB(34,34,34)L.BackgroundTransparency=1.000;L.Size=UDim2.new(0,37,0,18)M.Name="FrameToggle3"M.Parent=L;N.Name="FrameRainbowToggleCircle"N.Parent=H;N.BackgroundColor3=Color3.fromRGB(50,50,50)N.Position=UDim2.new(0.127000004,0,0.222000003,0)N.Size=UDim2.new(0,10,0,10)O.Name="FrameRainbowToggleCircleCorner"O.Parent=N;P.Name="Color"P.Parent=x;P.BackgroundColor3=Color3.fromRGB(255,0,4)P.Position=UDim2.new(0,0,0,42)P.Size=UDim2.new(0,194,0,80)P.ZIndex=10;P.Image="rbxassetid://4155801252"Q.CornerRadius=UDim.new(0,3)Q.Name="ColorCorner"Q.Parent=P;R.Name="ColorSelection"R.Parent=P;R.AnchorPoint=Vector2.new(0.5,0.5)R.BackgroundColor3=Color3.fromRGB(255,255,255)R.BackgroundTransparency=1.000;R.Position=UDim2.new(h and select(3,Color3.toHSV(h)))R.Size=UDim2.new(0,18,0,18)R.Image="http://www.roblox.com/asset/?id=4805639000"R.ScaleType=Enum.ScaleType.Fit;R.Visible=false;S.Name="Hue"S.Parent=x;S.BackgroundColor3=Color3.fromRGB(255,255,255)S.Position=UDim2.new(0,202,0,42)S.Size=UDim2.new(0,25,0,80)T.CornerRadius=UDim.new(0,3)T.Name="HueCorner"T.Parent=S;U.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(255,0,4)),ColorSequenceKeypoint.new(0.20,Color3.fromRGB(234,255,0)),ColorSequenceKeypoint.new(0.40,Color3.fromRGB(21,255,0)),ColorSequenceKeypoint.new(0.60,Color3.fromRGB(0,255,255)),ColorSequenceKeypoint.new(0.80,Color3.fromRGB(0,17,255)),ColorSequenceKeypoint.new(0.90,Color3.fromRGB(255,0,251)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(255,0,4))}U.Rotation=270;U.Name="HueGradient"U.Parent=S;V.Name="HueSelection"V.Parent=S;V.AnchorPoint=Vector2.new(0.5,0.5)V.BackgroundColor3=Color3.fromRGB(255,255,255)V.BackgroundTransparency=1.000;V.Position=UDim2.new(0.48,0,1-select(1,Color3.toHSV(h)))V.Size=UDim2.new(0,18,0,18)V.Image="http://www.roblox.com/asset/?id=4805639000"V.Visible=false;coroutine.wrap(function()while wait()do L.BackgroundColor3=g end end)()D.MouseButton1Click:Connect(function()if j==false then R.Visible=true;V.Visible=true;v:TweenSize(UDim2.new(0,363,0,132),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)wait(.2)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)else R.Visible=false;V.Visible=false;v:TweenSize(UDim2.new(0,363,0,42),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)wait(.2)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;j=not j end)local function a(a)y.BackgroundColor3=Color3.fromHSV(p,q,r)P.BackgroundColor3=Color3.fromHSV(p,1,1)pcall(i,y.BackgroundColor3)end;p=1-math.clamp(V.AbsolutePosition.Y-S.AbsolutePosition.Y,0,S.AbsoluteSize.Y)/S.AbsoluteSize.Y;q=math.clamp(R.AbsolutePosition.X-P.AbsolutePosition.X,0,P.AbsoluteSize.X)/P.AbsoluteSize.X;r=1-math.clamp(R.AbsolutePosition.Y-P.AbsolutePosition.Y,0,P.AbsoluteSize.Y)/P.AbsoluteSize.Y;y.BackgroundColor3=h;P.BackgroundColor3=h;pcall(i,y.BackgroundColor3)P.InputBegan:Connect(function(b)if b.UserInputType==Enum.UserInputType.MouseButton1 then if s then return end;if t then t:Disconnect()end;t=e.RenderStepped:Connect(function()local b=math.clamp(f.X-P.AbsolutePosition.X,0,P.AbsoluteSize.X)/P.AbsoluteSize.X;local c=math.clamp(f.Y-P.AbsolutePosition.Y,0,P.AbsoluteSize.Y)/P.AbsoluteSize.Y;R.Position=UDim2.new(b,0,c,0)q=b;r=1-c;a(true)end)end end)P.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then if t then t:Disconnect()end end end)S.InputBegan:Connect(function(b)if b.UserInputType==Enum.UserInputType.MouseButton1 then if s then return end;if u then u:Disconnect()end;u=e.RenderStepped:Connect(function()local b=math.clamp(f.Y-S.AbsolutePosition.Y,0,S.AbsoluteSize.Y)/S.AbsoluteSize.Y;V.Position=UDim2.new(0.48,0,b,0)p=1-b;a(true)end)end end)S.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton1 then if u then u:Disconnect()end end end)E.MouseButton1Down:Connect(function()s=not s;if t then t:Disconnect()end;if u then u:Disconnect()end;if s then d:Create(H,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(J,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(L,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()d:Create(N,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(255,255,255)}):Play()N:TweenPosition(UDim2.new(0.587,0,0.222000003,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)l=y.BackgroundColor3;m=P.BackgroundColor3;n=R.Position;o=V.Position;while s do y.BackgroundColor3=Color3.fromHSV(b.RainbowColorValue,1,1)P.BackgroundColor3=Color3.fromHSV(b.RainbowColorValue,1,1)R.Position=UDim2.new(1,0,0,0)V.Position=UDim2.new(0.48,0,0,b.HueSelectionPosition)pcall(i,y.BackgroundColor3)wait()end elseif not s then d:Create(H,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()d:Create(J,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()d:Create(L,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()d:Create(N,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(50,50,50)}):Play()N:TweenPosition(UDim2.new(0.127000004,0,0.222000003,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)y.BackgroundColor3=l;P.BackgroundColor3=m;R.Position=n;V.Position=o;pcall(i,y.BackgroundColor3)end end)A.MouseButton1Click:Connect(function()R.Visible=false;V.Visible=false;v:TweenSize(UDim2.new(0,363,0,42),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.2,true)wait(.2)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;function a:Textbox(a,b,d)local e=Instance.new("Frame")local f=Instance.new("UICorner")local g=Instance.new("TextLabel")local h=Instance.new("Frame")local i=Instance.new("UICorner")local j=Instance.new("TextBox")e.Name="Textbox"e.Parent=c;e.BackgroundColor3=Color3.fromRGB(34,34,34)e.ClipsDescendants=true;e.Position=UDim2.new(-0.541071415,0,-0.532915354,0)e.Size=UDim2.new(0,363,0,42)f.CornerRadius=UDim.new(0,5)f.Name="TextboxCorner"f.Parent=e;g.Name="TextboxTitle"g.Parent=e;g.BackgroundColor3=Color3.fromRGB(255,255,255)g.BackgroundTransparency=1.000;g.Position=UDim2.new(0.0358126722,0,0,0)g.Size=UDim2.new(0,187,0,42)g.Font=Enum.Font.Gotham;g.Text=a;g.TextColor3=Color3.fromRGB(255,255,255)g.TextSize=14.000;g.TextXAlignment=Enum.TextXAlignment.Left;h.Name="TextboxFrame"h.Parent=g;h.BackgroundColor3=Color3.fromRGB(37,37,37)h.Position=UDim2.new(1.28877008,0,0.214285716,0)h.Size=UDim2.new(0,100,0,23)i.CornerRadius=UDim.new(0,5)i.Name="TextboxFrameCorner"i.Parent=h;j.Parent=h;j.BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1.000;j.Size=UDim2.new(0,100,0,23)j.Font=Enum.Font.Gotham;j.Text=""j.TextColor3=Color3.fromRGB(255,255,255)j.TextSize=14.000;j.FocusLost:Connect(function(a)if a then if#j.Text>0 then pcall(d,j.Text)if b then j.Text=""end end end end)c.CanvasSize=UDim2.new(0,0,0,k.AbsoluteContentSize.Y)end;return a end;return c end;return b

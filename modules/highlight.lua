local k=cloneref or function(...)return...end;local l=k(game:GetService"TextService")local k=k(game:GetService"RunService")local m={}local n;local o;local p;local q;local r={}local s={}local t=0;local u=0;local v=15;local w=Enum.Font.Ubuntu;local x=14;local y=Color3.fromRGB(40,44,52)local z=Color3.fromRGB(187,85,255)local A=Color3.fromRGB(97,175,239)local B=Color3.fromRGB(152,195,121)local C=Color3.fromRGB(209,154,102)local D=C;local E=Color3.fromRGB(229,192,123)local F=Color3.fromRGB(224,108,117)local G=Color3.fromRGB(148,148,148)local H=G;local I=Color3.fromRGB(240,240,240)local J={"^(function)[^%w_]","^(local)[^%w_]","^(if)[^%w_]","^(for)[^%w_]","^(while)[^%w_]","^(then)[^%w_]","^(do)[^%w_]","^(else)[^%w_]","^(elseif)[^%w_]","^(return)[^%w_]","^(end)[^%w_]","^(continue)[^%w_]","^(and)[^%w_]","^(not)[^%w_]","^(or)[^%w_]","[^%w_](or)[^%w_]","[^%w_](and)[^%w_]","[^%w_](not)[^%w_]","[^%w_](continue)[^%w_]","[^%w_](function)[^%w_]","[^%w_](local)[^%w_]","[^%w_](if)[^%w_]","[^%w_](for)[^%w_]","[^%w_](while)[^%w_]","[^%w_](then)[^%w_]","[^%w_](do)[^%w_]","[^%w_](else)[^%w_]","[^%w_](elseif)[^%w_]","[^%w_](return)[^%w_]","[^%w_](end)[^%w_]"}local K={{"\"","\""},{"'","'"},{"%[%[","%]%]",true}}local L={"%-%-%[%[[^%]%]]+%]?%]?","(%-%-[^\n]+)"}local M={"[^%w_]([%a_][%a%d_]*)%s*%(","^([%a_][%a%d_]*)%s*%(","[:%.%(%[%p]([%a_][%a%d_]*)%s*%("}local N={"[^%w_](%d+[eE]?%d*)","[^%w_](%.%d+[eE]?%d*)","[^%w_](%d+%.%d+[eE]?%d*)","^(%d+[eE]?%d*)","^(%.%d+[eE]?%d*)","^(%d+%.%d+[eE]?%d*)"}local O={"[^%w_](true)","^(true)","[^%w_](false)","^(false)","[^%w_](nil)","^(nil)"}local P={"[^%w_:]([%a_][%a%d_]*):","^([%a_][%a%d_]*):"}local Q={"[^_%s%w=>~<%-%+%*]",">","~","<","%-","%+","=","%*"}local R={}function a(a)for b,b in next,R do if a>=b[1]and a<=b[2]then return true end end;return false end;function b(a,b)return coroutine.wrap(function()local c=0;while true do local b,d=a:find(b,c)if b and d~=#a then c=d+1;coroutine.yield(b,d)else return end end end)end;function c()local c=m:getRaw()local d=1;for e,e in next,L do for b,c in b(c,e)do if d%1000==0 then k.Heartbeat:Wait()end;d=d+1;if not a(b)then for a=b,c do table.insert(R,{b,c})if s[a]then s[a].Color=G end end end end end end;function d()local b;local c;local d;local e;local f;local g;local h=false;for i,j in next,s do if b then j.Color=B;local a=""for b=e,i do a=a..s[b].Char end;if j.Char:match(c)and not not d or a:match("(\\*)"..c.."$")and#a:match("(\\*)"..c.."$")%2==0 then h=true;b=nil;c=nil;d=nil;f=i;R[g][2]=f end end;if not h then for f,f in next,K do if j.Char:match(f[1])and not a(i)then b=f[1]c=f[2]d=f[3]j.Color=B;e=i;g=#R+1;R[g]={e,math.huge}end end end;h=false end end;function e(c,d)local e=m:getRaw()local f=1;for c,c in next,c do for b,c in b(e,c)do if f%1000==0 then k.Heartbeat:Wait()end;f=f+1;if not a(b)and not a(c)then for a=b,c do if s[a]then s[a].Color=d end end end end end end;function f(a)for b=0,#a do local c=string.sub(a,b,b)if c=="<"then a=string.format("%s%s%s",string.sub(a,0,b-1),"&lt;",string.sub(a,b+1,-1))b=b+3 elseif c==">"then a=string.format("%s%s%s",string.sub(a,0,b-1),"&gt;",string.sub(a,b+1,-1))b=b+3 elseif c=='"'then a=string.format("%s%s%s",string.sub(a,0,b-1),"&quot;",string.sub(a,b+1,-1))b=b+5 elseif c=="'"then a=string.format("%s%s%s",string.sub(a,0,b-1),"&apos;",string.sub(a,b+1,-1))b=b+5 elseif c=="&"then a=string.format("%s%s%s",string.sub(a,0,b-1),"&amp;",string.sub(a,b+1,-1))b=b+4 end end;return a end;function g()R={}r={}p:ClearAllChildren()q:ClearAllChildren()e(M,A)e(N,C)e(J,z)e(P,E)e(O,D)e(Q,I)c()d()local a;local b=""local c=""u=0;t=1;for d=1,#s+1 do local e=s[d]if d==#s+1 or e.Char=="\n"then b=b..(a and"</font>"or"")local e=Instance.new"TextLabel"local f=l:GetTextSize(c,x,w,Vector2.new(math.huge,math.huge)).X+60;if f>u then u=f end;e.TextXAlignment=Enum.TextXAlignment.Left;e.TextYAlignment=Enum.TextYAlignment.Top;e.Position=UDim2.new(0,0,0,t*v-v/2)e.Size=UDim2.new(0,f,0,x)e.RichText=true;e.Font=w;e.TextSize=x;e.BackgroundTransparency=1;e.Text=b;e.Parent=p;if d~=#s+1 then local a=Instance.new"TextLabel"a.Text=t;a.Font=w;a.TextSize=x;a.Size=UDim2.new(1,0,0,v)a.TextXAlignment=Enum.TextXAlignment.Right;a.TextColor3=H;a.Position=UDim2.new(0,0,0,t*v-v/2)a.BackgroundTransparency=1;a.Parent=q end;b=""c=""a=nil;t=t+1;h()i()if t%5==0 then k.Heartbeat:Wait()end elseif e.Char==" "then b=b..e.Char;c=c..e.Char elseif e.Char=="\t"then b=b..string.rep(" ",4)c=c..e.Char else if e.Color==a then b=b..f(e.Char)else b=b..string.format('%s<font color="rgb(%d,%d,%d)">',a and"</font>"or"",e.Color.R*255,e.Color.G*255,e.Color.B*255)b=b..f(e.Char)a=e.Color end;c=c..e.Char end end;h()i()end;function j()local a=n.AbsoluteSize;o.Size=UDim2.new(0,a.X,0,a.Y)end;function i()o.CanvasSize=UDim2.new(0,u,0,t*v)end;function h()for a,a in next,n:GetDescendants()do if a:IsA"GuiObject"then a.ZIndex=n.ZIndex end end end;function m.init(a,a)if typeof(a)=="Instance"and a:IsA"Frame"then a:ClearAllChildren()n=a;o=Instance.new"ScrollingFrame"p=Instance.new"Frame"q=Instance.new"Frame"local a=a.AbsoluteSize;o.Size=UDim2.new(0,a.X,0,a.Y)o.BackgroundColor3=y;o.BorderSizePixel=0;o.ScrollBarThickness=4;p.Size=UDim2.new(1,-40,1,0)p.Position=UDim2.new(0,40,0,0)p.BackgroundTransparency=1;q.Size=UDim2.new(0,25,1,0)q.BackgroundTransparency=1;p.Parent=o;q.Parent=o;o.Parent=n;g()n:GetPropertyChangedSignal"AbsoluteSize":Connect(j)n:GetPropertyChangedSignal"ZIndex":Connect(h)else error("Initialization error: argument "..typeof(a).." is not a Frame Instance")end end;function m.setRaw(a,a)a=a.."\n"s={}for b=1,#a do table.insert(s,{Char=a:sub(b,b),Color=F})if b%1000==0 then k.Heartbeat:Wait()end end;g()end;function m.getRaw(a)local a=""for b,b in next,s do a=a..b.Char end;return a end;function m.getString(a)local a=""for b,b in next,s do a=a..b.Char:sub(1,1)end;return a end;function m.getTable(a)return s end;function m.getSize(a)return#s end;function m.getLine(a,a)local a=0;local b=false;local c=""for d,d in next,s do a=a+1;if d.Char=="\n"and not b then b=true end;if b and d.Char~="\n"then c=c..d.Char elseif b then break end end;return c end;function m.setLine(a,a,c)if#s and a>=s[#s].Line then for a=s[#s].Line,a do table.insert(s,{Char="\n",Line=a,Color=F})local a=m:getRaw()a=a:sub(0,#a)..c;m:setRaw(a)return end elseif not#s then return end;local d=m:getRaw()local e=0;local f=0;for b in b(d,"\n")do f=f+1;if a==f then d=d:sub(0,e)..c..d:sub(b,#d)m:setRaw(d)return end end;error"Unable to set line"end;function m.insertLine(a,a,c)if#s and a>=s[#s].Line then m:setLine(a,c)elseif not#s then return end;local d=m:getRaw()local e=0;local f=0;for b in b(d,"\n")do f=f+1;if a==f then d=d:sub(0,e).."\n"..c.."\n"..d:sub(b,#d)m:setRaw(d)return end end;error"Unable to insert line"end;local a={}function a.new(...)local a=m;local b={}a.__index=a;setmetatable(b,a)b:init(...)return b end;return a

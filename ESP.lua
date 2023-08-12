if not Drawing then
	game:GetService("Players").LocalPlayer:Kick("Your exploit does not have a Drawing Library!\n")
	return
end

local A = 1
if UESP then
	UESP:Destroy()
end
local ZIndexEnabled = pcall(function()
	local a = Drawing.new("Square")
	a.Visible = false
	task.delay(0.1,function()
		a:Remove()
	end)
	a.ZIndex = 1
end)

local players = game:GetService("Players")
local camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")

local Drawingnew = Drawing.new
local Fonts = Drawing.Fonts
local tableinsert = table.insert
local WorldToViewportPoint = camera.WorldToViewportPoint
local CFramenew = CFrame.new
local Vector2new = Vector2.new 
local fromRGB = Color3.fromRGB
local mathfloor = math.floor
local osclock = os.clock
local FindFirstChild = game.FindFirstChild

local TypeOrigin = "bottom"
local OBJECTS, ID = {}, 0
local VISIBLE, VBOX, VNAME, VTRACER = true, true, true, true
local zindex = {
	['Boxes'] = 1,
	['Names'] = 2,
	['Tracer'] = 3
}
local white, black = fromRGB(255,255,255), fromRGB(0,0,0)

function GetHealth(model)
	local a = FindFirstChild(model or game, "Humanoid")
	return {mathfloor(a.Health), mathfloor(a.MaxHealth)}
end

function IsAlive(model)
	local humanoid = FindFirstChild(model or game, "Humanoid")
	if humanoid and humanoid.Health > 0 then
		return true
	end
	return false
end
----

function ternary(condition,val1,val2)
	if condition then
		return val1
	end
	return val2
end

function ApplyZIndex(obj,name)
	if ZIndexEnabled then
		local idx = zindex[name]
		for _,v in next, obj do
			v.ZIndex = idx
		end
	end
end
function SetProp(obj,prop,value)
	for _,v in next, obj do
		v[prop] = value
	end
end
local Object = {
	Boxes = function()
		return {
			Outline = Drawingnew("Quad"),
			Box = Drawingnew("Quad")
		}
	end,
	Names = function()
		return {
			Name = Drawingnew("Text"),
			Data = Drawingnew("Text")
		}
	end,
    Tracer = function()
		return {
			Tracer = Drawingnew("Line"),
			Outline = Drawingnew("Line")
		}
	end
}
function NewObject(type)
	local obj = Object[type]()
	SetProp(obj, "Visible", false)
	ApplyZIndex(obj, type)
	return obj
end
function NewCharacterObject(objs, type, model)
	ID += 1
	return {
		Object = objs,
		Type = type,
		Model = model,
		Destroyed = false,
		Id = ID
	}
end

function Box(model)
	local type = "Boxes"
	local objects = NewObject(type)
	SetProp(objects, "Filled", false)
	local a = NewCharacterObject(objects, type, model)
	function a:Remove()
		if a.Destroyed then return end
		objects.Box:Remove()
		objects.Outline:Remove()
		a.Destroyed = true
	end
	OBJECTS[ID] = a
end
function Tracers(model)
	local type = "Tracer"
	local objects = NewObject(type)
	SetProp(objects, "Thickness", 1)
	local a = NewCharacterObject(objects, type, model)
	function a:Remove()
		if a.Destroyed then return end
		objects.Tracer:Remove()
		objects.Outline:Remove()
		a.Destroyed = true
	end
	OBJECTS[ID] = a
end
function Name(model)
	local type = "Names"
	local objects = NewObject(type)
	SetProp(objects, "Center", true)
	SetProp(objects, "Outline", true)
	SetProp(objects, "OutlineColor", black)
	SetProp(objects, "Font", Fonts.UI)
	local a = NewCharacterObject(objects, type, model)
	function a:Remove()
		if a.Destroyed then return end
		objects.Name:Remove()
		objects.Data:Remove()
		a.Destroyed = true
	end
	OBJECTS[ID] = a
end

local lastupdate = osclock()
function update()
	if osclock() - lastupdate < 0.01 then -- 10ms
		return
	end
	lastupdate = osclock()
	local ccf = camera.CFrame.Position
	for _,v in next, OBJECTS do
		if not v.Destroyed then
			if v.Model == nil then
				v:Remove()
			end
			local model, obj, type = v.Model, v.Object, v.Type					-- objects shit
			local cf, size, mid, inViewport, tl, tr, bl, br					  -- boxes shit
			local tlx, tly, trx, try, blx, bly, brx, bry						 -- boxes corner axes shit
			local color												            -- color shit
			local char, health, maxhealth, mag, render				 -- other shit
            if VISIBLE and model and IsAlive(model) then
				local hp = GetHealth(model)
				char, health, maxhealth = model, hp[1], hp[2]
				cf, size = char:GetBoundingBox()
				color = fromRGB(255, 255, 255)
				mag = (ccf - cf.Position).Magnitude
				render = mag <= 300
				if render then
					size /= 2
					local x, y = size.X, size.Y
					mid, inViewport = WorldToViewportPoint(camera, cf.Position)
					tl = WorldToViewportPoint(camera, (cf * CFramenew(-x,  y, 0)).Position)
					tr = WorldToViewportPoint(camera, (cf * CFramenew( x,  y, 0)).Position)
					bl = WorldToViewportPoint(camera, (cf * CFramenew(-x, -y, 0)).Position)
					br = WorldToViewportPoint(camera, (cf * CFramenew( x, -y, 0)).Position)

					tlx, tly = tl.X, tl.Y
					trx, try = tr.X, tr.Y
					blx, bly = bl.X, bl.Y
					brx, bry = br.X, br.Y
				end
			end
			if VISIBLE then
				if model and IsAlive(model) then
					SetProp(obj, "Visible", render)
					if inViewport and render then
						SetProp(obj, "Transparency", 1)
						SetProp(obj, "Color", color)
						if type == "Boxes" and VBOX then
							local box, out = obj.Box, obj.Outline

							local A = Vector2new(trx, try)
							local B = Vector2new(tlx, tly)
							local C = Vector2new(blx, bly)
							local D = Vector2new(brx, bry)

							box.PointA = A
							box.PointB = B
							box.PointC = C
							box.PointD = D

							out.Color = black
							out.PointA = A
							out.PointB = B
							out.PointC = C
							out.PointD = D
						elseif type == "Names" and VNAME then
							local name, data = obj.Name, obj.Data
							local h,l = (tly > try and tly) or try, (tly < try and tly) or try
							
							name.Position = Vector2new(tlx + (trx - tlx) / 2, (h + (l - h) / 2) - 20)
							data.Position = Vector2new(blx + (brx - blx) / 2, bly + (bry - bly) / 2)

							name.Text = model.Name
							data.Text = "[ "..mathfloor((health / maxhealth) * 100).."% ]"
                        elseif type == "Tracer" and VTRACER then
                            local Tracer, Outline = obj.Tracer, obj.Outline
                            local x, y = camera.ViewportSize.X, camera.ViewportSize.Y
                            local Origin={
                                ['top'] = Vector2new(x / 2, 0),
                                ['center'] = Vector2new(x / 2, y / 2),
                                ['bottom'] = Vector2new(x / 2, y)
                            }
                            local from = Origin[TypeOrigin]
                            local to = Vector2new(tlx + (trx - tlx) / 2, tly + (try - tly) / 2)
                            Tracer.From = from
                            Tracer.To = to
                            if TypeOrigin == "bottom" then
                                local to = Vector2new(blx + (brx - blx) / 2, bly + (bry - bly) / 2)
                                Tracer.To = to
                            end
						end
					end
				end
				if not inViewport then
					SetProp(obj, "Visible", false)
				end
			else
				SetProp(obj, "Visible", false)
			end
		end
	end
end

local name = ""
for _ = 1, math.random(16, 24) do
	name ..=string.char(math.random(97, 122))
end
RunService:BindToRenderStep(name, 0, update)

local esp = {}
local destroyed = false

function esp:Visible(Name, bool)
	local item
    if Name=="visible" then
		VTRACER = not VISIBLE
    elseif Name=="name" then
		VTRACER = not  VNAME
    elseif Name=="box" then
		VTRACER = not  VBOX
    elseif Name=="tracer" then
		VTRACER = not  VTRACER
    end;
	if typeof(bool) == 'boolean' then
		item = bool
	else
		item = not item
	end;
end

function esp:Get(Name)
    if Name=="visible" then
        return VISIBLE
    elseif Name=="name" then
        return VNAME
    elseif Name=="box" then
        return VBOX
    elseif Name=="tracer" then
        return VTRACER
    end;
end

local conn
function esp:Start(model)
    function doshit(v)
        Box(v)
        Name(v)
        Tracers(v)
    end
    for _,v in next, model:GetChildren() do
        doshit(v)
    end
    conn = model.ChildAdded:Connect(doshit)
end

function esp:Destroy()
	if destroyed then return end
	conn:Disconnect()
	RunService:UnbindFromRenderStep(name)
	for _,v in next, OBJECTS do
		v:Remove()
	end
	destroyed = true
end

getgenv().UESP = esp
return esp

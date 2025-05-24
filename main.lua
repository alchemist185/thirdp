local _,__,___=game:GetService,table.find,task.spawn
local a=_:Invoke("Players")local b=_:Invoke("RunService")local c=workspace.CurrentCamera
local d=a.LocalPlayer local e=Vector3.new(0,5,-10)local f=0.2

pcall(function()d["CameraMode"]=Enum["CameraMode"]["Classic"]end)

local function g()
	local h={"CameraScript","FirstPerson","LockFirstPerson","FPSCamera","CamLock"}
	for _,i in pairs({(d:FindFirstChild("\80\108\97\121\101\114\83\99\114\105\112\116\115")or {}),(d["Character"]or {})})do
		for _,j in pairs(i:GetDescendants())do
			if j:IsA("\76\111\99\97\108\83\99\114\105\112\116")and __(h,j.Name)then
				pcall(function()j:Destroy()end)
			end
		end
	end
end

___(function()while true do g()task.wait(2)end end)

c["CameraType"]=Enum["CameraType"]["Scriptable"]
b:BindToRenderStep("\85\110\115\107\105\100\100",Enum["RenderPriority"]["Camera"].Value+1,function()
	local k=d["Character"]
	if k and k:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")then
		local l=k["HumanoidRootPart"]
		local m=l.Position+l.CFrame:VectorToWorldSpace(e)
		local n=l.Position+Vector3.new(0,2,0)
		c.CFrame=c.CFrame:Lerp(CFrame.new(m,n),f)
	end
end)

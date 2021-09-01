return "Count Lines", "Count the lines of code in this project", function()
	local count = 0
	for _,root in ipairs{game.Workspace, game.ReplicatedFirst, game.ReplicatedStorage, game.ServerScriptStorage, game.ServerStorage, game.StarterGui, game.StarterPack, game.StarterPlayer} do
		for _,desc in ipairs(root:GetDescendants()) do
			if desc:IsA("ModuleScript") or desc:IsA("LocalScript") or desc:IsA("Script") then
				for line in desc:gmatch("^%s*%S+") do
					if not line:match("^--") then count += 1 end
				end
			end
		end
	end
	print("Lines of code: "..tostring(count))
end

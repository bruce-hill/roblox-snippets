return "Anchor all", "Anchor all descendants of selection", function()
	for _,sel in ipairs(game.Selection:Get()) do
		for _,desc in ipairs(sel:GetDescendants()) do
			if desc:IsA("BasePart") and not desc.Anchored then
				print("Anchoring "..desc:GetFullName())
				desc.Anchored = true
			end
		end
	end
end

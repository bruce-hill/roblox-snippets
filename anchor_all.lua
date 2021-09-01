return "Anchor all", "Anchor all descendants of selection", function()
	for _,desc in ipairs(game.Selection:Get()[1]:GetDescendants()) do
		if desc:IsA("BasePart") and not desc.Anchored then
			print("Anchoring "..desc:GetFullName())
			desc.Anchored = true
		end
	end
end

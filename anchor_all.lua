return "Anchor all", "Anchor all descendants of selection", function()
	for _,desc in ipairs(game.Selection:Get()[1]:GetDescendants()) do
		if desc:IsA("BasePart") and not desc.Anchored then
			print("Unanchored:", desc:GetFullName())
		end
	end
end

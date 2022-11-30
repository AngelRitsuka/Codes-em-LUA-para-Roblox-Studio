local Part = script.Parent;


Part.Touched:Connect(function (hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		hit.Parent.Humanoid.Health = 0;
	end
end)

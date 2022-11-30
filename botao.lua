--Depois de fazer a Part, adicionar o clickDetector
local ClickDetector = workspace.Botao.ClickDetector

--de bounce = db
local db = true

ClickDetector.MouseClick:Connect(function(Player)
	ClickDetector.MaxActivationDistance = 0
	print(Player)

--TESTE SIMPLES DE CLIQUE E MUDANÇA DE COR
	if db then
	db = false
		
	ClickDetector.Parent.BrickColor = BrickColor.new("Really red")
	task.wait(1)
		
	ClickDetector.MaxActivationDistance = 15		
	ClickDetector.Parent.BrickColor = BrickColor.new("Lime green")
	db = true
	end
end)
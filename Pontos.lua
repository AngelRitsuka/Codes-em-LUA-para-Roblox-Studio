--Depois de criar um script no WORKSPACE 
--coloque o seguinte código para criar uma 
--tabela com numeros inteiros

game.Players.PlayerAdded:Connect(function (player)
	local folder = Instance.new("Folder", player)
	folder.Name = "leaderstats"
	local points = Instance.new("IntValue", folder)
	points.Name = "pontos"
end)

-- para fazer cash, numero de kills
-- e outras coisas que envolvem contagem, é o mesmo código
-- só precisa trocar os nomes do script, como no lugar de "pontos"
-- colocar "cash"

--Se você desejar adicionar um texto mesmo,
--alem do código tabelado, tu pode ir em STARTERGUI
-- SCREENGUI e selecionar a opção de texto e começar a editar
--para o texto vincular a tabela que tu formou com codigo
--adiciono um localScript no texto e coloque~

while wait() do
	local player = game.Players.LocalPlayer
	script.Parent.Text = 
		"Points:"..player.WaitForChild("leaderstats"):
	FindFirstChild("pontos").Value	
end
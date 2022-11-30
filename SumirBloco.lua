local blocoSomeAosPoucos = script.Parent;

local estaTocando = false;

--criar funçao para deixa-lo bem transparente/suir
local function sumir()
	for count = 1,10 do
		blocoSomeAosPoucos.Transparency= count/10
		wait(0.1);
	end
	blocoSomeAosPoucos.CanCollide = false;
	wait(3);
	blocoSomeAosPoucos.CanCollide = true;
	blocoSomeAosPoucos.Transparency = 0;
	estaTocando = false
end
--Quando o loop starta, count aumenta para 1 
--com outra interação. quer dizer que a 
-- transparencia do bloco aumentará para 0.1 
--todo 0.1 segundos, chegando a total transparencia 
--depois de 1 segundo.

blocoSomeAosPoucos.Touched:Connect(sumir);
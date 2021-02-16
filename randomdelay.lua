function OnEvent(event, arg)
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
		list = {}
		for i = 1, 4 do
			key = math.random(4, 7)
			while list[key] do
				key = math.random(4, 7)
			end
			list[key] = true
		end
		list[1] = true
	
		for k, v in pairs(list) do
			PressKey(tostring(k))
			Sleep(math.random(45, 70))
			ReleaseKey(tostring(k))
			Sleep(math.random(30, 65))
		end
	end
	return
end
script_name("ML-ReloadAll")
script_authors("FYP", "Cosmo")
script_description("Press Ctrl + R to reload all lua scripts")
script_version_number(2)
script_version("0.2")
script_moonloader(026)
script_properties("work-in-pause", "forced-reloading-only")
-- Refactored by Cosmo // 2025

local vk = require("vkeys")
local wm = require("windows.message")

function onWindowMessage(message, wparam, lparam)
	if message == wm.WM_KEYUP then
		if wparam == vk.VK_R and isKeyDown(vk.VK_CONTROL) then
			reloadScripts()
			consumeWindowMessage(true, true)
			printStringNow("~y~ALL SCRIPTS RELOADED", 3000)
		end
	end
end

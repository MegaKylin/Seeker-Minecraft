##
 # music.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=SMS,tag=!disable_music] run tellraw @s [{"text": "  Play Soundtrack    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Playing soundtrack when seeker mode is running? "}}, {"text": "[Off]  ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Click to Disable Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/options/check_box/disable_music"}}, {"text": "[On]", "color": "green", "hoverEvent": {"action": "show_text", "contents": "Current State"}}]
execute if entity @e[tag=SMS,tag=disable_music] run tellraw @s [{"text": "  Play Soundtrack    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Playing soundtrack when seeker mode is running? "}}, {"text": "[Off]  ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "Current State"}}, {"text": "[On]", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Click to Enable Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/options/check_box/enable_music"}}]

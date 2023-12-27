##
 # aduro.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=aduro,tag=locked] run tellraw @s [{"text": "  ☑  ", "color": "gray"}, {"text": "[???]", "color": "gray"}]
execute if entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=aduro,tag=!locked,tag=!play] run tellraw @s [{"text": "  ☑  ", "color": "gray"}, {"text": "▶  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Play"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/play/play_aduro"}}, {"text": "Aduro", "color": "white"}]
execute if entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=aduro,tag=!locked,tag=play] run tellraw @s [{"text": "  ☑  ", "color": "gray"}, {"text": "■    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/stop"}}, {"text": "Aduro", "color": "green"}]

execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=aduro,tag=!play,tag=!disabled] run tellraw @s [{"text": "  ☑  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Disable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/checkbox/disable_aduro"}}, {"text": "▶  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Play"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/play/play_aduro"}}, {"text": "Aduro", "color": "white", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]
execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=aduro,tag=play,tag=!disabled] run tellraw @s [{"text": "  ☑  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Disable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/checkbox/disable_aduro"}}, {"text": "■    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/stop"}}, {"text": "Aduro", "color": "green", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]

execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=aduro,tag=!play,tag=disabled] run tellraw @s [{"text": "  ☒  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Enable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/checkbox/enable_aduro"}}, {"text": "▶  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Play"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/play/play_aduro"}}, {"text": "Aduro", "color": "white", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]
execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=aduro,tag=play,tag=disabled] run tellraw @s [{"text": "  ☒  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Enable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/checkbox/enable_aduro"}}, {"text": "■    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/soundtracks/stop"}}, {"text": "Aduro", "color": "dark_green", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]

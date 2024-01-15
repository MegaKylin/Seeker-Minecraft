##
 # ecstatic_wave.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=ecstatic_wave,tag=locked] run tellraw @s [{"text": "  ☑  ", "color": "gray"}, {"text": "[???]", "color": "gray"}]
execute if entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=ecstatic_wave,tag=!locked,tag=!play] run tellraw @s [{"text": "  ☑  ", "color": "gray"}, {"text": "▶  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Play"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/play/play_ecstatic_wave"}}, {"text": "Ecstatic Wave", "color": "white"}]
execute if entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=ecstatic_wave,tag=!locked,tag=play] run tellraw @s [{"text": "  ☑  ", "color": "gray"}, {"text": "■    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/stop"}}, {"text": "Ecstatic Wave", "color": "green"}]

execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=ecstatic_wave,tag=!play,tag=!disabled] run tellraw @s [{"text": "  ☑  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Disable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/checkbox/disable_ecstatic_wave"}}, {"text": "▶  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Play"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/play/play_ecstatic_wave"}}, {"text": "Ecstatic Wave", "color": "white", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]
execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=ecstatic_wave,tag=play,tag=!disabled] run tellraw @s [{"text": "  ☑  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Disable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/checkbox/disable_ecstatic_wave"}}, {"text": "■    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/stop"}}, {"text": "Ecstatic Wave", "color": "green", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]

execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=ecstatic_wave,tag=!play,tag=disabled] run tellraw @s [{"text": "  ☒  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Enable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/checkbox/enable_ecstatic_wave"}}, {"text": "▶  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Play"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/play/play_ecstatic_wave"}}, {"text": "Ecstatic Wave", "color": "white", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]
execute unless entity @e[tag=music,tag=locked] if entity @e[tag=music,tag=ecstatic_wave,tag=play,tag=disabled] run tellraw @s [{"text": "  ☒  ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Enable the Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/checkbox/enable_ecstatic_wave"}}, {"text": "■    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/soundtracks/stop"}}, {"text": "Ecstatic Wave", "color": "dark_green", "hoverEvent": {"action": "show_text", "contents": ""}, "clickEvent": {"action": "run_command", "value": ""}}]

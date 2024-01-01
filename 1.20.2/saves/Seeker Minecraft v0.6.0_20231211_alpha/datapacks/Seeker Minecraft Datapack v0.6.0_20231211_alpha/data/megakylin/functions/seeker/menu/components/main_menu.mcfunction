##
 # main_menu.mcfunction
 #
 #
 # Created by MegaKylin.
 # ※✧✦☆★⚐⚑✓✔✗✘▷▶■◇⚝♪♩♫⚜⚘☣⚙☸❁❂
##

tellraw @s {"text": "\n          Seeker Minecraft\n", "color": "blue"}

tellraw @s {"text": "                ⊱ Menu ⊰", "color": "gold"}
tellraw @s {"text": "========================\n", "bold": true, "color": "dark_green"}

execute if entity @e[tag=SMS,tag=!running] run tellraw @s [{"text": "  ▶  ", "color": "red"}, {"text": "Start Seeker Mode\n", "color": "yellow", "hoverEvent": {"action": "show_text", "contents": "Click to Start"}, "underlined": true, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/start"}}]
execute if entity @e[tag=SMS,tag=running] run tellraw @s [{"text": "  ■  ", "color": "green"}, {"text": "Stop Seeker Mode\n", "color": "yellow", "underlined": true, "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/stop"}}]

tellraw @s [{"text": "  ☆  ", "color": "white"}, {"text": "Tutorials", "color": "green"}]
tellraw @s [{"text": "  ⚙  ", "color": "white"}, {"text": "Options", "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Click to Change Options"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/open_options"}}]
tellraw @s [{"text": "  ♫  ", "color": "white"}, {"text": "Soundtracks", "color": "red", "hoverEvent": {"action": "show_text", "contents": "Click to Check Soundtracks"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/open_soundtracks"}}]
tellraw @s [{"text": "  ▷  ", "color": "white"}, {"text": "Promotion Video", "color": "light_purple"}]
tellraw @s [{"text": "  ✧  ", "color": "white"}, {"text": "Information & Credits", "color": "gold"}]

tellraw @s {"text": "\n========================\n", "bold": true, "color": "dark_green"}

tellraw @s {"text": "        Version:  Alpha 0.6.0", "color": "dark_red"}
tellraw @s [{"text": "         Made by ", "color": "dark_blue"}, {"text": "MegaKylin\n", "color": "dark_blue", "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/get_starter_pack"}}]

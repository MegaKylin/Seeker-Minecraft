##
 # rules_and_tutorials.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s {"text": "\n                            ⊱ Rules & Tutorials ⊰", "color": "green"}
tellraw @s [{"text": "============================================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_main_menu"}}]

tellraw @s {"text": "  Rules: ", "bold": true, "color": "red"}

tellraw @s {"text": "\n         ---- Save Settings ----", "bold": true}
tellraw @s [{"text": "  1. "}, {"text": "Turn "}, {"text": "\"Allow Cheats\" ", "color": "aqua", "italic": true}, {"text": "On", "color": "gold"}]

tellraw @s {"text": "\n        ---- Music & Sounds ----", "bold": true}
tellraw @s [{"text": "  1. "}, {"text": "Turn "}, {"text": "\"Music\" ", "color": "aqua", "italic": true}, {"text": "Off", "color": "gold"}]
tellraw @s [{"text": "  2. "}, {"text": "Turn "}, {"text": "\"Jukebox/Note Blocks\" ", "color": "aqua", "italic": true}, {"text": "On", "color": "gold"}]

tellraw @s {"text": "\n         ---- Video Settings ----", "bold": true}
tellraw @s [{"text": "  1. "}, {"text": "Keep "}, {"text": "\"Render Distance\" ", "color": "aqua", "italic": true}, {"text": "less than or equal 8 chunks", "color": "gold"}]
tellraw @s [{"text": "  2. "}, {"text": "Turn "}, {"text": "\"Clouds\" ", "color": "aqua", "italic": true}, {"text": "Off", "color": "gold"}]

tellraw @s {"text": "\n        ---- Resource Packs ----", "bold": true}
tellraw @s [{"text": "  1. "}, {"text": "Keep "}, {"text": "\"Seeker Minecraft Resource Pack\" ", "color": "aqua", "italic": true}, {"text": "loading", "color": "gold"}]

tellraw @s {"text": "\n            ---- Gameplay ----", "bold": true}
tellraw @s [{"text": "  1. "}, {"text": "Do not break through ", "color": "red"}, {"text": "the bedrock layer ", "color": "blue", "italic": true}, {"text": "in any dimensions", "color": "yellow"}, {"text": "! "}]
tellraw @s [{"text": "  2. "}, {"text": "Do not break ", "color": "red"}, {"text": "obsidian pillars ", "color": "blue", "italic": true}, {"text": "in The End", "color": "light_purple"}, {"text": "! "}]

tellraw @s [{"text": "\n===============  ", "bold": true, "color": "yellow"}, {"text": "⋘", "bold": true, "color": "gray"}, {"text": " Page -- 1/3 ", "bold": false, "color": "gold"}, {"text": "⋙", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Next Page"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/turn_rules_and_tutorials_page_2"}}, {"text": "  ===============\n", "bold": true, "color": "yellow"}]

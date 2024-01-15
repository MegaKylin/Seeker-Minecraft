##
 # rules_and_tutorials.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s {"text": "\n                            ⊱ Rules & Tutorials ⊰", "color": "green"}
tellraw @s [{"text": "============================================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_main_menu"}}]

tellraw @s {"text": "  Tips: \n", "color": "gold", "bold": true}
tellraw @s {"text": "    Since the datapack is still under development, there are still many issues. If the TPS is too low, you can fix the problem by re-entering the save. The recipe of items may have some adjustments and current recipes do not represent the final result. "}

tellraw @s [{"text": "\n===============  ", "bold": true, "color": "yellow"}, {"text": "⋘", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Previous Page"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/turn_rules_and_tutorials_page_2"}}, {"text": " Page -- 3/3 ", "bold": false, "color": "gold"}, {"text": "⋙", "bold": true, "color": "gray"}, {"text": "  ===============\n", "bold": true, "color": "yellow"}]

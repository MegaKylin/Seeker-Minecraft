##
 # rules_and_tutorials.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s {"text": "\n                            ⊱ Rules & Tutorials ⊰", "color": "green"}
tellraw @s [{"text": "============================================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_main_menu"}}]

tellraw @s {"text": "  Tutorials: \n", "color": "green", "bold": true}

tellraw @s {"text": "    In \"Seeker Minecraft\" game mode, just like the Fog Mode, your horizons are limited, the terrain does not load automatically, you need to keep exploring to make it visible. "}
tellraw @s {"text": "    The original view range of players is 9×9×9(9 blocks wide by 9 blocks long by 9 blocks high). \n"}

tellraw @s {"text": "    In order to make the gameplay more creative, some new items have been added into the game: "}

tellraw @s {"text": "\n      1. Seeker Minecraft Crafting Table", "color": "aqua", "italic": true}
tellraw @s [{"text": "        "}, {"text": "Function: ", "color": "red"}, {"text": "Used to craft \"Seeker Minecraft\" items. "}]
tellraw @s [{"text": "        "}, {"text": "Crafting: ", "color": "yellow"}, {"text": "Hand Making: "}, {"text": "Throw one crafting table and one spyglass together. "}] 
tellraw @s [{"text": "        Usage: ", "color": "blue"}, {"text": "Right-click to place it. Dig it with pickaxe to take it back. ", "color": "white"}]

tellraw @s {"text": "\n      2. Flare I", "color": "aqua", "italic": true}
tellraw @s [{"text": "        "}, {"text": "Function: ", "color": "red"}, {"text": "Illuminate 9×9×9 range unexplored areas. "}]
tellraw @s [{"text": "        "}, {"text": "Crafting: ", "color": "yellow"}] 
tellraw @s [{"text": "          ① "}, {"text": "Hand Making: "}, {"text": "Throw one paper, one gunpowder and one glowstone dust together. "}]
tellraw @s [{"text": "          ② "}, {"text": "Use "}, {"text": "\"Seeker Minecraft Crafting Table\"", "color": "aqua", "italic": true}, {"text": ": "}, {"text": "Place "}, {"text": "paper"}, {"text": "[P]", "color": "green"}, {"text": ", "}, {"text": "gunpowder"}, {"text": "[G]", "color": "gray"}, {"text": ", "}, {"text": "glowstone dust"}, {"text": "[D]", "color": "gold"}, {"text": " "}, {"text": "as the pattern below. "}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[D] ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": "Glowstone Dust"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[P] ", "color": "green", "hoverEvent": { "action": "show_text", "contents": "Paper"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[G] ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Gunpowder"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "        Usage: ", "color": "blue"}, {"text": "Right-click toward the unexplored area to throw it out. ", "color": "white"}]

tellraw @s {"text": "\n      3. Flare II", "color": "aqua", "italic": true}
tellraw @s [{"text": "        "}, {"text": "Function: ", "color": "red"}, {"text": "Illuminate 17×17×17 range unexplored areas. "}]
tellraw @s [{"text": "        "}, {"text": "Crafting: ", "color": "yellow"}, {"text": "Use "}, {"text": "\"Seeker Minecraft Crafting Table\"", "color": "aqua", "italic": true}, {"text": ": "}, {"text": "Place "}, {"text": "\"Flare I\"", "color": "aqua", "italic": true}, {"text": "[F]", "color": "aqua"}, {"text": ", "}, {"text": "gunpowder"}, {"text": "[G]", "color": "gray"}, {"text": ", "}, {"text": "glowstone dust"}, {"text": "[D]", "color": "gold"}, {"text": " "}, {"text": "as the pattern below. "}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[D] ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": "Glowstone Dust"}}, {"text": "[G] ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Gunpowder"}}, {"text": "[D] ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": "Glowstone Dust"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[G] ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Gunpowder"}}, {"text": "[F] ", "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Flare I"}}, {"text": "[G] ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Gunpowder"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[D] ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": "Glowstone Dust"}}, {"text": "[G] ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Gunpowder"}}, {"text": "[D] ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": "Glowstone Dust"}}]
tellraw @s [{"text": "        Usage: ", "color": "blue"}, {"text": "Right-click toward the unexplored area to throw it out. ", "color": "white"}]

tellraw @s {"text": "\n      4. Knock Back Rod I", "color": "aqua", "italic": true}
tellraw @s [{"text": "        "}, {"text": "Function: ", "color": "red"}, {"text": "Knock back mobs with weak force. "}]
tellraw @s [{"text": "        "}, {"text": "Crafting: ", "color": "yellow"}]
tellraw @s [{"text": "          ① "}, {"text": "Hand Making: "}, {"text": "Throw one blaze rod, one gunpowder and one redstone together. "}]
tellraw @s [{"text": "          ② "}, {"text": "Use "}, {"text": "\"Seeker Minecraft Crafting Table\"", "color": "aqua", "italic": true}, {"text": ": "}, {"text": "Place "}, {"text": "blaze rod"}, {"text": "[B]", "color": "gold"}, {"text": ", "}, {"text": "gunpowder"}, {"text": "[G]", "color": "gray"}, {"text": ", "}, {"text": "redstone"}, {"text": "[R]", "color": "red"}, {"text": " "}, {"text": "as the pattern below. "}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[R] ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "Redstone"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[B] ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": "Blaze Rod"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[G] ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Gunpowder"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "        Usage: ", "color": "blue"}, {"text": "Left-click toward mobs to knock them back. ", "color": "white"}]

tellraw @s {"text": "\n      5. Knock Back Rod II", "color": "aqua", "italic": true}
tellraw @s [{"text": "        "}, {"text": "Function: ", "color": "red"}, {"text": "Knock back mobs with strong force. "}]
tellraw @s [{"text": "        "}, {"text": "Crafting: ", "color": "yellow"}, {"text": "Use "}, {"text": "\"Seeker Minecraft Crafting Table\"", "color": "aqua", "italic": true}, {"text": ": "}, {"text": "Place "}, {"text": "\"Knock Back Rod I\"", "color": "aqua", "italic": true}, {"text": "[K]", "color": "aqua"}, {"text": ", "}, {"text": "tnt"}, {"text": "[T]", "color": "red"}, {"text": ", "}, {"text": "piston"}, {"text": "[P]", "color": "yellow"}, {"text": " "}, {"text": "as the pattern below. "}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[T] ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "TNT"}}, {"text": "[P] ", "color": "yellow","hoverEvent": {"action": "show_text", "contents": "Piston"}}, {"text": "[T] ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "TNT"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[P] ", "color": "yellow","hoverEvent": {"action": "show_text", "contents": "Piston"}}, {"text": "[K] ", "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Knock Back Rod I"}}, {"text": "[P] ", "color": "yellow","hoverEvent": {"action": "show_text", "contents": "Piston"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[T] ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "TNT"}}, {"text": "[P] ", "color": "yellow","hoverEvent": {"action": "show_text", "contents": "Piston"}}, {"text": "[T] ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "TNT"}}]
tellraw @s [{"text": "        Usage: ", "color": "blue"}, {"text": "Left-click toward mobs to knock them back. ", "color": "white"}]

tellraw @s {"text": "\n      6. Far View Helmet", "color": "aqua", "italic": true}
tellraw @s [{"text": "        "}, {"text": "Function: ", "color": "red"}, {"text": "Extend players' view range to 17×17×17. "}]
tellraw @s [{"text": "        "}, {"text": "Crafting: ", "color": "yellow"}, {"text": "Use "}, {"text": "\"Seeker Minecraft Crafting Table\"", "color": "aqua", "italic": true}, {"text": ": "}, {"text": "Place "}, {"text": "diamond/netherite helmet"}, {"text": "[H]", "color": "aqua"}, {"text": ", "}, {"text": "redstone lamp"}, {"text": "[L]", "color": "red"}, {"text": ", "}, {"text": "spyglass"}, {"text": "[S]", "color": "yellow"}, {"text": " "}, {"text": "as the pattern below. "}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[L] ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "Redstone Lamp"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[S] ", "color": "yellow", "hoverEvent": {"action": "show_text", "contents": "Spyglass"}}, {"text": "[H] ", "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Diamond/Netherite Helmet"}}, {"text": "[S] ", "color": "yellow", "hoverEvent": {"action": "show_text", "contents": "Spyglass"}}]
tellraw @s [{"text": "                       ", "bold": true}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}, {"text": "[_] ", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": "Space"}}]
tellraw @s [{"text": "        Usage: ", "color": "blue"}, {"text": "Put it on to extend your view range. ", "color": "white"}]
tellraw @s {"text": "\n    When you explore in the seeker mode, you may meet some new friends: Allay. These little guys will help you explore the world together. "}
tellraw @s {"text": "    Click author's name to get the starter pack. "}

tellraw @s [{"text": "\n===============  ", "bold": true, "color": "yellow"}, {"text": "⋘", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Previous Page"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/turn_rules_and_tutorials_page_1"}}, {"text": " Page -- 2/3 ", "bold": false, "color": "gold"}, {"text": "⋙", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Next Page"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/turn_rules_and_tutorials_page_3"}}, {"text": "  ===============\n", "bold": true, "color": "yellow"}]

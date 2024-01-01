##
 # reset_system.mcfunction
 # 
 #
 # Created by MegaKylin.
##

# kill @e[type=minecraft:armor_stand]

execute unless entity @e[tag=SMS] run summon minecraft:armor_stand 0 301 0 {CustomName: '{"text":"Seeker Minecraft System"}', Invisible: true, Invulnerable: true, NoGravity: true, Tags: ["SMS"]}

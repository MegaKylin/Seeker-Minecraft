##
 # reset_system.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute unless entity @e[tag=SMS] run summon minecraft:armor_stand 0 301 0 {CustomName: '{"text":"Seeker Minecraft System"}', Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "SMS"]}

advancement grant @a only seeker:root

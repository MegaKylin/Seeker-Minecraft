##
 # step.mcfunction
 # 
 #
 # Created by MegaKylin.
##

kill @e[tag=last_step]
summon minecraft:armor_stand ~ ~ ~ {Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "last_step"]}
function seeker:effects/player/flame_step/particals

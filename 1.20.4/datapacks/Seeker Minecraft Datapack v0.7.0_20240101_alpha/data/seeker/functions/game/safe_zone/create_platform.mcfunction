##
 # create_platform.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s[predicate=seeker:dimensions/overworld] at @s run summon minecraft:armor_stand ~ ~192 ~ {Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "SMSZ"]}
execute as @s[predicate=seeker:dimensions/overworld] at @s run summon minecraft:armor_stand ~ ~193 ~ {CustomName: '{"text":"Seeker Minecraft Safe Zone"}', CustomNameVisible: true, Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "SMSZ_name"]}

execute as @s[predicate=seeker:dimensions/the_nether] at @s run summon minecraft:armor_stand ~ ~128 ~ {Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "SMSZ"]}
execute as @s[predicate=seeker:dimensions/the_nether] at @s run summon minecraft:armor_stand ~ ~129 ~ {CustomName: '{"text":"Seeker Minecraft Safe Zone"}', CustomNameVisible: true, Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "SMSZ_name"]}

execute as @s[predicate=seeker:dimensions/the_end] at @s run summon minecraft:armor_stand ~ ~128 ~ {Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "SMSZ"]}
execute as @s[predicate=seeker:dimensions/the_end] at @s run summon minecraft:armor_stand ~ ~129 ~ {CustomName: '{"text":"Seeker Minecraft Safe Zone"}', CustomNameVisible: true, Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["seeker_marker", "SMSZ_name"]}

execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:air
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:water
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:lava

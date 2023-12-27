#> summon game system
kill @e[tag=SMS]
summon minecraft:armor_stand ~4 301 ~4 {CustomName: '{"text":"Seeker Minecraft System"}', Invisible: 1b, NoGravity: 1b, Invulnerable: 1b, Tags: ["SMS"]}

#> dimension detection
# pre remove tag
execute as @e at @s if block ~ ~ ~ minecraft:nether_portal run tag @s remove Overworld
execute as @e at @s if block ~ ~ ~ minecraft:nether_portal run tag @s remove NE
execute as @e at @s if block ~ ~ ~ minecraft:end_portal run tag @s remove Overworld
execute as @e at @s if block ~ ~ ~ minecraft:end_portal run tag @s remove NE

# force remove tag
execute as @e at @s if block ~ -64 ~ minecraft:bedrock run tag @s remove NE
execute as @e at @s if block ~ 127 ~ minecraft:bedrock run tag @s remove Overworld
execute as @e at @s if block 42 0 0 minecraft:obsidian if block -42 0 -1 minecraft:obsidian run tag @s remove Overworld
# add tag
execute as @e at @s unless block ~ ~ ~ minecraft:nether_portal unless block ~ ~ ~ minecraft:end_portal if block ~ -64 ~ minecraft:bedrock run tag @s add Overworld
execute as @e at @s unless block ~ ~ ~ minecraft:nether_portal unless block ~ ~ ~ minecraft:end_portal if block ~ 127 ~ minecraft:bedrock run tag @s add NE
execute as @e at @s unless block ~ ~ ~ minecraft:nether_portal unless block ~ ~ ~ minecraft:end_portal if block 42 0 0 minecraft:obsidian if block -42 0 -1 minecraft:obsidian run tag @s add NE

#> view range detection
# ---- remove tag ----
tag @a[gamemode=spectator] remove Range_4
tag @a[gamemode=spectator] remove Range_8
tag @a[nbt={Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {display: {Name: '{"text":"Far View Helmet"}'}}}]}] remove Range_4
tag @a[nbt=!{Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {display: {Name: '{"text":"Far View Helmet"}'}}}]}] remove Range_8

# ---- add tag ----
# falling_block
tag @e[type=minecraft:falling_block] add Range_4
# player
tag @a[gamemode=!spectator,nbt=!{Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {display: {Name: '{"text":"Far View Helmet"}'}}}]}] add Range_4
tag @a[gamemode=!spectator,nbt={Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {display: {Name: '{"text":"Far View Helmet"}'}}}]}] add Range_8
# flare
tag @e[type=minecraft:snowball,nbt={Item: {tag: {display: {Name: '{"text":"Flare I"}'}}}}] add Range_4
tag @e[type=minecraft:snowball,nbt={Item: {tag: {display: {Name: '{"text":"Flare II"}'}}}}] add Range_8

#> save zone
# ---- create platform ----
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:air
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:water
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:lava

# ---- effect ----
tellraw @a[tag=SMT] "You are out of the game area and will be teleported to the \"Save Zone\". "
effect give @a[tag=SMT] minecraft:resistance 30 10
execute as @a[tag=SMT] at @s run tag @e[tag=SMSZ,distance=..1] add Arrived
tellraw @a[tag=SMT] "Teleport complete! \nYou have 30 seconds of invincibility! \nGood Luck!"
execute as @a[tag=SMT] at @e[tag=Arrived] run particle minecraft:portal ~-4 ~-4 ~-4 4 4 4 5 1000 normal
execute as @a[tag=SMT] at @e[tag=Arrived] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
execute as @e[tag=Arrived] at @s run tag @p[distance=..1] remove SMT

# ---- remove platform ----
execute as @e[tag=Arrived] at @s unless entity @p[distance=..8] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:air replace minecraft:glowstone
execute as @e[tag=Arrived] at @s unless entity @p[distance=..8] run kill @s

# ---- teleport ----
# Overworld
execute as @a[tag=Overworld] at @s run tag @s[y=-64,dy=191] add SMT
execute as @a[tag=Overworld,tag=SMT] at @s run summon minecraft:armor_stand ~ ~192 ~ {CustomName: '{"text":"Seeker Minecraft Save Zone"}', Invisible: 1b, NoGravity: 1b, Invulnerable: 1b, Tags: ["SMSZ"]}
execute as @a[tag=Overworld,tag=SMT] at @s run tp ~ ~192 ~
# Nether & End
execute as @a[tag=NE] at @s run tag @s[y=0,dy=127] add SMT
execute as @a[tag=NE,tag=SMT] at @s run summon minecraft:armor_stand ~ ~128 ~ {CustomName: '{"text":"Seeker Minecraft Save Zone"}', Invisible: 1b, NoGravity: 1b, Invulnerable: 1b, Tags: ["SMSZ"]}
execute as @a[tag=NE,tag=SMT] at @s run tp ~ ~128 ~

#> blocks moving
# ---- range 4 ----
# create barrier layer
execute as @e[tag=Range_4] at @s run fill ~-16 128 ~-16 ~16 128 ~16 minecraft:barrier
# create bedrock layer
execute as @e[tag=Range_4] at @s run fill ~-4 129 ~-4 ~4 129 ~4 minecraft:bedrock
execute as @e[tag=Range_4] at @s if block ~ 127 ~ minecraft:bedrock run fill ~-4 255 ~-4 ~4 255 ~4 minecraft:bedrock

# Overworld
execute as @e[tag=Overworld,tag=Range_4] at @s run fill ~-5 ~-197 ~-5 ~5 ~-187 ~5 minecraft:structure_block replace minecraft:water[level=0]
execute as @e[tag=Overworld,tag=Range_4] at @s run clone ~-4 ~-196 ~-4 ~4 ~-188 ~4 ~-4 ~-4 ~-4 masked move
execute as @e[tag=Overworld,tag=Range_4] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:water[level=0] replace minecraft:structure_block
# Nether & End
execute as @e[tag=NE,tag=Range_4] at @s run fill ~-5 ~-133 ~-5 ~5 ~-123 ~5 minecraft:structure_block replace minecraft:lava[level=0]
execute as @e[tag=NE,tag=Range_4] at @s run clone ~-4 ~-132 ~-4 ~4 ~-124 ~4 ~-4 ~-4 ~-4 masked move
execute as @e[tag=NE,tag=Range_4] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:lava[level=0] replace minecraft:structure_block

# ---- range 8 ----
# create barrier layer
execute as @e[tag=Range_8] at @s run fill ~-16 128 ~-16 ~16 128 ~16 minecraft:barrier
# create bedrock layer
execute as @e[tag=Range_8] at @s run fill ~-8 129 ~-8 ~8 129 ~8 minecraft:bedrock
execute as @e[tag=Range_8] at @s if block ~ 127 ~ minecraft:bedrock run fill ~-8 255 ~-8 ~8 255 ~8 minecraft:bedrock

# Overworld
execute as @e[tag=Overworld,tag=Range_8] at @s run fill ~-9 ~-201 ~-9 ~9 ~-183 ~9 minecraft:structure_block replace minecraft:water[level=0]
execute as @e[tag=Overworld,tag=Range_8] at @s run clone ~-8 ~-200 ~-8 ~8 ~-184 ~8 ~-8 ~-8 ~-8 masked move
execute as @e[tag=Overworld,tag=Range_8] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:water[level=0] replace minecraft:structure_block
# Nether & End
execute as @e[tag=NE,tag=Range_8] at @s run fill ~-9 ~-137 ~-9 ~9 ~-119 ~9 minecraft:structure_block replace minecraft:lava[level=0]
execute as @e[tag=NE,tag=Range_8] at @s run clone ~-8 ~-136 ~-8 ~8 ~-120 ~8 ~-8 ~-8 ~-8 masked move
execute as @e[tag=NE,tag=Range_8] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:lava[level=0] replace minecraft:structure_block

#> mobs moving
# ---- Overworld ----
execute as @e[type=!minecraft:player,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock unless block ~ ~191 ~ minecraft:air run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @e[type=!minecraft:player,tag=Overworld] at @s unless block ~ 129 ~ minecraft:bedrock run tp @s[y=128,dy=191] ~ ~-192 ~
execute as @e[type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:item,tag=Overworld] at @s if entity @p[distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value 1b
execute as @e[type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:item,tag=Overworld] at @s unless entity @p[distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value 0b

# ---- Nether & End ----
execute as @e[type=!minecraft:player,type=!end_crystal,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock unless block ~ ~127 ~ minecraft:air run tp @s[y=0,dy=127] ~ ~128 ~
execute as @e[type=!minecraft:player,type=!end_crystal,tag=NE] at @s unless block ~ 129 ~ minecraft:bedrock run tp @s[y=128,dy=127] ~ ~-128 ~
execute as @e[type=!minecraft:player,type=!end_crystal,type=!minecraft:armor_stand,type=!minecraft:item,tag=NE] at @s if entity @p[distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value 1b
execute as @e[type=!minecraft:player,type=!end_crystal,type=!minecraft:armor_stand,type=!minecraft:item,tag=NE] at @s unless entity @p[distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value 0b

# ---- special entity ----
# eliminate entity
execute as @e[type=!minecraft:ender_dragon] at @s run kill @e[y=128,dy=2]
execute as @e[type=item] at @s if block ~ ~ ~ minecraft:water run kill @s[y=-64,dy=191]
# end_crystal teleport
execute as @e[type=end_crystal,tag=NE] at @s unless block ~ 127 ~ minecraft:bedrock if block ~ ~127 ~ minecraft:bedrock run tag @s[y=0,dy=127] add Move_Crystal
execute as @e[tag=Move_Crystal] at @s run summon minecraft:end_crystal ~ ~128 ~
kill @e[tag=Move_Crystal]
# flying mobs teleport up
execute as @e[type=bat,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @e[type=bee,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @e[type=phantom,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @e[type=ghast,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=0,dy=127] ~ ~128 ~
execute as @e[type=ender_dragon,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=0,dy=127] ~ ~128 ~

#> items
# ---- Flare I ----
# craft
execute as @e[nbt={Item: {id: "minecraft:stick", Count: 1b}}] at @s if entity @e[nbt={Item: {id: "minecraft:glowstone_dust", Count: 1b}},distance=..0.5] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare I"}'}, Enchantments: [{id: "fire_aspect", lvl: 1}]}, Count: 1b}, Invulnerable: 1b, Age: -32768, Tags: ["Item_Flare_I"]}
execute as @e[tag=Item_Flare_I] at @s run kill @e[nbt={Item: {id: "minecraft:stick"}},distance=..0.5]
execute as @e[tag=Item_Flare_I] at @s run kill @e[nbt={Item: {id: "minecraft:glowstone_dust"}},distance=..0.5]

# ---- Crafting Table ----
# craft
execute as @e[nbt={Item: {id: "minecraft:crafting_table", Count: 1b}}] at @s if entity @e[nbt={Item: {id: "minecraft:spyglass", Count: 1b}},distance=..0.5] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:bat_spawn_egg", tag: {display: {Name: '{"text":"Seeker Minecraft Crafting Table"}'}, EntityTag: {id: "minecraft:bat", CustomName: '{"text":"Seeker Minecraft Crafting Table"}', NoAI: 1b, NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Tags: ["Spawner_SMCT"]}, Enchantments: [{}]}, Count: 1b}, Tags: ["Item_SMCT"], Invulnerable: 1b, Age: -32768}
execute as @e[tag=Item_SMCT] at @s run kill @e[nbt={Item: {id: "minecraft:crafting_table"}},distance=..0.5]
execute as @e[tag=Item_SMCT] at @s run kill @e[nbt={Item: {id: "minecraft:spyglass"}},distance=..0.5]

# place
execute as @e[tag=Spawner_SMCT] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName: '{"text":"Seeker Minecraft Crafting Table"}', Invisible: 1b, NoGravity: 1b, Invulnerable: 1b, Tags: ["SMCT"]}
execute as @e[tag=SMCT,tag=!Placed] at @s run setblock ~ ~ ~ minecraft:dispenser[facing=up]
tag @e[tag=SMCT] add Placed
execute as @e[tag=Placed] at @s run kill @e[tag=Spawner_SMCT,distance=..1]

# destroy
execute as @e[tag=Placed] at @s unless block ~ ~ ~ minecraft:dispenser run tag @s add Destroyed
execute as @e[tag=Destroyed] at @s if entity @e[nbt={Item: {id: "minecraft:dispenser"}},distance=..1] run tag @s add Dropped
execute as @e[tag=Dropped] at @s run kill @e[nbt={Item: {id: "minecraft:dispenser"}},distance=..1]
execute as @e[tag=Dropped] at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:bat_spawn_egg", tag: {display: {Name: '{"text":"Seeker Minecraft Crafting Table"}'}, EntityTag: {id: "minecraft:bat", CustomName: '{"text":"Seeker Minecraft Crafting Table"}', NoAI: 1b, NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Tags: ["Spawner_SMCT"]}, Enchantments: [{}]}, Count: 1b}, Tags: ["Item_SMCT"], Invulnerable: 1b, Age: -32768}
kill @e[tag=Destroyed]

# craft Flare I
execute as @e[tag=Placed] at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 0b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 4b, id: "minecraft:stick", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare I"}'}, Enchantments: [{id: "fire_aspect", lvl: 1}]}, Count: 1b}]}

# craft Flare II
execute as @e[tag=Placed] at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 1b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 3b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 4b, id: "minecraft:stick", Count: 1b}, {Slot: 5b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 7b, id: "minecraft:glowstone_dust", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare II"}'}, Enchantments: [{id: "fire_aspect", lvl: 2}]}, Count: 1b}]}

# craft Far View Helmet
execute as @e[tag=Placed] at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 1b, id: "minecraft:redstone_lamp", Count: 1b}, {Slot: 3b, id: "minecraft:spyglass", Count: 1b}, {Slot: 4b, id: "minecraft:diamond_helmet", Count: 1b}, {Slot: 5b, id: "minecraft:spyglass", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:diamond_helmet", tag: {display: {Name: '{"text":"Far View Helmet"}'}}, Count: 1b}]}

#> debug functions
# ---- back to platform ----
# craft
execute as @e[nbt={Item: {id: "minecraft:command_block", Count: 1b}}] at @s if entity @e[nbt={Item: {id: "minecraft:barrier", Count: 1b}},distance=..0.5] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:snowball", tag: {display: {Name: '{"text":"Back"}'}, Enchantments: [{id: "infinity"}]}, Count: 1b}, Invulnerable: 1b, Age: -32768, Tags: ["Item_Back"]}
execute as @e[tag=Item_Back] at @s run kill @e[nbt={Item: {id: "minecraft:command_block"}},distance=..0.5]
execute as @e[tag=Item_Back] at @s run kill @e[nbt={Item: {id: "minecraft:barrier"}},distance=..0.5]
# teleport
execute as @e[type=snowball,nbt={Item: {tag: {display: {Name: '{"text":"Back"}'}}}}] at @s run execute in minecraft:overworld run tp @p 0 305 0
kill @e[type=snowball,nbt={Item: {tag: {display: {Name: '{"text":"Back"}'}}}}]

# ---- protect platform ----
kill @e[type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:snowball,type=!minecraft:item,x=0,y=301,z=0,dx=16,dy=16,dz=16]


#> control functions
# ---- start ----
summon minecraft:armor_stand 0 301 0 {CustomName: '{"text":"Seeker Minecraft System"}', Invisible: 1b, NoGravity: 1b, Invulnerable: 1b, Tags: ["SMS"]}

title @a title {"text":"Seekers Ready! ","color":"green"}
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~ 1 1
time set day
weather clear
difficulty normal
gamemode spectator @a
data merge block ~ ~1 ~ {auto: 1b}
tp @a 4.0 302 10.0 facing 4.0 301 10.0

title @a title {"text":"3","color":"red"}
execute as @a at @s run playsound minecraft:block.note_block.bit record @s ~ ~ ~ 1 1

title @a title {"text":"2","color":"gold"}
execute as @a at @s run playsound minecraft:block.note_block.bit record @s ~ ~ ~ 1 1

title @a title {"text":"1","color":"yellow"}
execute as @a at @s run playsound minecraft:block.note_block.bit record @s ~ ~ ~ 1 1

title @a title {"text":"Go! ","color":"green"}
title @a subtitle "Good Luck! "
execute as @a at @s run playsound minecraft:block.note_block.bit record @s ~ ~ ~ 1 2
gamemode survival @a
effect give @a minecraft:resistance 30 10
data merge block ~16 ~2 ~ {auto: 0b}
fill 2 301 8 5 301 11 minecraft:air destroy
fill 1 301 1 14 301 14 minecraft:redstone_block replace minecraft:red_wool

# ---- stop ----
fill 1 301 1 14 301 14 minecraft:red_wool replace minecraft:redstone_block
fill 2 301 8 5 301 11 minecraft:barrier replace minecraft:air
difficulty peaceful
kill @e[tag=SMS]

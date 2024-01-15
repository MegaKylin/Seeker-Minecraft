##
 # main.mcfunction
 # seeker
 #
 # Created by MegaKylin.
##

#> tags detection
# always detect useless entities
execute as @e[type=!player,type=!#seeker:bosses] run function seeker:game/tags_detection/useless_entity_detection

#> entities teleport
# always eliminate useless entities
execute as @e[tag=useless_entity] run function seeker:game/entities_teleport/eliminate_entities

#> running operations
execute if entity @e[tag=SMS,tag=running] run function seeker:running

#> blocks clone
# entities always clear barrier
execute as @e[type=!falling_block,tag=!useless_entity,tag=!teleport_range] at @s unless block ~ ~ ~ #seeker:fluid_blocks run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:barrier

#> personal particals
# always show partical
execute as @a[tag=show_partical] run function seeker:effects/player/flame_step

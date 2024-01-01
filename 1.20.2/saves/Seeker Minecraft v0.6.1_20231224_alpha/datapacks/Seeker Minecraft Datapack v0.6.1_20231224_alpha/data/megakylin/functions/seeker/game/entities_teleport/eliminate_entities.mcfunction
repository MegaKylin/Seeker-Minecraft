##
 # eliminate_entities.mcfunction
 # 
 #
 # Created by MegaKylin.
##

data modify entity @s Silent set value true
data modify entity @s DeathLootTable set value "empty"
kill @s

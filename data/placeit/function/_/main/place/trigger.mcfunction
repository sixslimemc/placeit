# placeit:_/main/place/trigger
#--------------------
# @delay:delayed : _/adv/place
#--------------------

execute store result score *place.reach _placeit run data get storage delay:api this.data.reach
scoreboard players add *place.reach _placeit 2

scoreboard players set *place.placed _placeit 0

scoreboard players operation *place.i _placeit = *place.reach _placeit
execute if score *place.i _placeit matches 1.. run function placeit:_/main/place/loop

execute if score *place.placed _placeit matches 1 run return 1

scoreboard players operation *place.i _placeit = *place.reach _placeit
execute if score *place.i _placeit matches 1.. run function placeit:_/main/place/wide_loop

execute if score *place.placed _placeit matches 1 run return 1

say ??
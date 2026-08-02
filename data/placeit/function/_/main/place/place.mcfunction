# placeit:_/main/place/place
#--------------------
# ./check_block
#--------------------

scoreboard players set *place.placed _placeit 1

data modify storage placeit:in place.place set from block ~ ~ ~ components."minecraft:custom_data".placeit.place
function placeit

execute align xyz positioned ~.5 ~.5 ~.5 run function placeit:_/main/place/place.1 with storage placeit:_ t.place.place
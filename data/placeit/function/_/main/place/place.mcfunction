# placeit:_/main/place/place
#--------------------
# ./check_block
#--------------------

scoreboard players set *place.placed _placeit 1

data modify storage placeit:in explicit_place.place set from block ~ ~ ~ components."minecraft:custom_data".placeit.place
function placeit:explicit_place

return 1
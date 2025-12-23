# placeit:_/main/place/place
#--------------------
# ./check_block
#--------------------

scoreboard players set *place.placed _placeit 1

# {..facing}
function placeit:_/main/place/get_facing

data modify storage placeit:_ t.place.place set from block ~ ~ ~ Items[0].components."minecraft:custom_data"._placeit.place_data

execute align xyz positioned ~.5 ~.5 ~.5 run function placeit:_/main/place/place.1 with storage placeit:_ t.place.place
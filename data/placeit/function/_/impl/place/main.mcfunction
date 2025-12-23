# IMPL > placeit : place
# main

execute unless data storage placeit:in place.item.components."minecraft:custom_data".placeit{placeable:true} run return 0

execute summon marker run function placeit:_/impl/place/get_facing

data modify storage placeit:_ v.place.place set from storage placeit:in place.item.components."minecraft:container"[0].item.components."minecraft:custom_data"._placeit.place_data

execute align xyz positioned ~.5 ~.5 ~.5 run function placeit:_/impl/place/place with storage placeit:_ v.place.place

return 1
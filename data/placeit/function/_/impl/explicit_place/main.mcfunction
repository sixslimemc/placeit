# IMPL > placeit : explicit_place
# main

execute unless data storage placeit:in explicit_place.item.components."minecraft:custom_data".placeit{placeable:true} run return 0

execute summon marker run function placeit:_/impl/explicit_place/get_facing

data modify storage placeit:_ v.explicit_place.explicit_place set from storage placeit:in explicit_place.item.components."minecraft:container"[0].item.components."minecraft:custom_data"._placeit.place_data

execute align xyz positioned ~.5 ~.5 ~.5 run function placeit:_/impl/explicit_place/explicit_place with storage placeit:_ v.explicit_place.explicit_place

return 1
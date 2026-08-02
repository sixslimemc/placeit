# IMPL > placeit : explicit_place
# main

execute summon marker run function placeit:_/impl/explicit_place/get_facing

execute align xyz positioned ~.5 ~.5 ~.5 run function placeit:_/impl/explicit_place/place with storage placeit:in explicit_place.place

return 1
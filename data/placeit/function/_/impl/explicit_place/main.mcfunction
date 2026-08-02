# IMPL > placeit : explicit_place
# main

execute summon marker run function placeit:_/impl/explicit_place/get_facing

# DEBUG:
tellraw @a ["placeit:_", {'storage':'placeit:_', 'nbt':'eval[-1]'}]

execute align xyz positioned ~.5 ~.5 ~.5 run function placeit:_/impl/explicit_place/place with storage placeit:_ eval[-1].in.place

return 1
# placeit:_/main/place/check_block
#--------------------
# ./check_area
#--------------------

execute if data block ~ ~ ~ components."minecraft:custom_data".placeit.place run return run function placeit:_/main/place/place

return 0
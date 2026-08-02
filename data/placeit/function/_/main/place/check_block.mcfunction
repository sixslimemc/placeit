# placeit:_/main/place/check_block
#--------------------
# ./check_area
#--------------------

# DEBUG
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1

execute unless data block ~ ~ ~ components."minecraft:custom_data".placeit.place run return fail

say found

function placeit:_/main/place/place

return 1
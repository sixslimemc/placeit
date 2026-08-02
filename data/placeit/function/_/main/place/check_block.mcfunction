# placeit:_/main/place/check_block
#--------------------
# ./check_area
#--------------------

execute unless data block ~ ~ ~ components."minecraft:custom_data".placeit.place run return fail

function placeit:_/main/place/place

return 1
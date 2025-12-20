# placeit:_/main/place/check_block
#--------------------
# ./check_area
#--------------------

# DEBUG
particle small_flame ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ minecraft:barrel run return fail
execute unless items block ~ ~ ~ container.0 *[minecraft:custom_data~{placeit:{_:{place_data:{present:true}}}}] run return fail

function placeit:_/main/place/place

return 1
# placeit:_/main/place/check_block
#--------------------
# ./check_area
#--------------------

execute unless block ~ ~ ~ minecraft:barrel run return fail
execute unless items block ~ ~ ~ container.0 *[minecraft:custom_data~{_placeit:{place_data:{present:true}}}] run return fail

function placeit:_/main/place/place

return 1
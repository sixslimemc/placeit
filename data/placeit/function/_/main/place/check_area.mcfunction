# placeit:_/main/place/check_area
#--------------------
# ./loop
#--------------------

execute if function placeit:_/main/place/check_block run return 1
execute positioned ~1 ~ ~ if function placeit:_/main/place/check_block run return 1
execute positioned ~-1 ~ ~ if function placeit:_/main/place/check_block run return 1
execute positioned ~ ~ ~1 if function placeit:_/main/place/check_block run return 1
execute positioned ~ ~ ~-1 if function placeit:_/main/place/check_block run return 1
execute positioned ~ ~1 ~ if function placeit:_/main/place/check_block run return 1
execute positioned ~ ~-1 ~ if function placeit:_/main/place/check_block run return 1

return fail
# placeit:_/main/place/loop
#--------------------
# ./trigger
#--------------------

execute if function placeit:_/main/place/check_area run return 1

scoreboard players remove *place.i _placeit 1
execute if score *place.i _placeit matches 1.. positioned ^ ^ ^0.5 run function placeit:_/main/place/loop
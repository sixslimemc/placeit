#> placeit:_/sc/load
# @ LOAD

scoreboard objectives add _placeit dummy
scoreboard objectives add _placeit.place_reach dummy

# DECLARE _scores:
# *check_place

# DEBUG
scoreboard players reset *init _placeit

execute unless score *init _placeit matches 1 run function placeit:_/sc/init
#> placeit:_/sc/load
# @ LOAD

scoreboard objectives add _placeit dummy



# DEBUG
scoreboard players reset *init _placeit

execute unless score *init _placeit matches 1 run function placeit:_/sc/init
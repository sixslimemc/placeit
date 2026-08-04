#> placeit:_/main/check_place
#--------------------
# _/entrypoints/place
#--------------------
schedule function placeit:_/main/check_place 1t

execute unless score *check_place _placeit matches 1 run return 0



execute as @a[tag=_placeit.placed] at @s anchored eyes positioned ^ ^ ^ run function placeit:_/main/place/trigger

scoreboard players reset *check_place _placeit
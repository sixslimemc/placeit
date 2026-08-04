#> placeit:_/main/check_place
#--------------------
# _/adv/place
#--------------------

# DEBUG:
execute store result score *x _placeit run time query gametime
tellraw @a ["CHECK: ", {'score':{'name':'*x', 'objective':'_placeit'}}]

scoreboard players set *check_place _placeit 1

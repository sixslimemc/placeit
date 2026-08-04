# placeit {!} _/place

execute store result score @s _placeit.place_time run time query gametime

# DEBUG:
tellraw @a ["PLACE: ", {'score':{'name':'@s', 'objective':'_placeit.place_time'}}]

execute store result score @s _placeit.place_reach run attribute @s minecraft:block_interaction_range get 1
tag @s add _placeit.placed

schedule function placeit:_/main/pre_check_place 1t append

advancement revoke @s only placeit:_/place
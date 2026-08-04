# placeit {!} _/place

execute store result score @s _placeit.place_reach run attribute @s minecraft:block_interaction_range get 2
tag @s add _placeit.placed

scoreboard players set *check_place _placeit 1

advancement revoke @s only placeit:_/place
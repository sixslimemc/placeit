# placeit {!} _/place

execute store result score @s _placeit.place_time run time query gametime
execute store result score @s _placeit.place_reach run attribute @s minecraft:block_interaction_range get 1.5

schedule function placeit:_/main/check_place 1t append

advancement revoke @s only placeit:_/place
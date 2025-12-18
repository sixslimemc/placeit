# placeit {!} _/place

data modify storage delay:in delay set value {command:"execute anchored eyes positioned ^ ^ ^ run function placeit:_/main/place/trigger", ticks:1}
execute store result storage delay:in delay.data.reach int 1 run attribute @s minecraft:block_interaction_range get 10
function delay:delay

advancement revoke @s only placeit:_/place
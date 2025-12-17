# placeit {!} _/place

execute anchored eyes run particle flame ^ ^ ^10 0 0 0 0.01 10 force

data modify storage delay:in delay set value {command:"execute anchored eyes run particle soul_fire_flame ^ ^ ^10 0 0 0 0.01 10 force", ticks:1}
function delay:delay
advancement revoke @s only placeit:_/place
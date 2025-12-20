# placeit:_/main/place/get_facing
#--------------------
# ./place
#--------------------

data modify storage placeit:_ x.rot set from entity @s Rotation
execute store result score *x _placeit run data get storage placeit:_ x.rot[0]
execute store result score *y _placeit run data get storage placeit:_ x.rot[1]

execute if score *y _placeit matches 45.. run return run data modify storage placeit:_ v.place.facing set value 2
execute if score *y _placeit matches ..-46 run return run data modify storage placeit:_ v.place.facing set value 3

execute if score *x _placeit matches -45..44 run return run data modify storage placeit:_ v.place.facing set value 5
execute if score *x _placeit matches 45..134 run return run data modify storage placeit:_ v.place.facing set value 0
execute if score *x _placeit matches 135.. run return run data modify storage placeit:_ v.place.facing set value 4
execute if score *x _placeit matches ..-136 run return run data modify storage placeit:_ v.place.facing set value 4
execute if score *x _placeit matches -135..-46 run return run data modify storage placeit:_ v.place.facing set value 1
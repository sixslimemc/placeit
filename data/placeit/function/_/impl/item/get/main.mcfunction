# IMPL > placeit : item/get
# main

data modify storage placeit:out get.result set value {id:"minecraft:barrel",components:{}}
data modify storage placeit:out get.result.components set from storage placeit:in get.item_components

data modify storage placeit:_ v.get.custom_data set value {_:true,_placeit:{place_data:{present:true}}}
data modify storage placeit:_ v.get.custom_data._placeit.place_data.command set from storage placeit:in get.place_command
data modify storage placeit:_ v.get.custom_data._placeit.place_data.data set from storage placeit:in get.place_data

data modify storage placeit:_ v.get.itemslot set value {slot:0, item:{id:"minecraft:slime_ball", count:1, components:{"minecraft:item_name":{text:"('placeit' block data)"}}}}
data modify storage placeit:_ v.get.itemslot.item.components."minecraft:custom_data" set from storage placeit:_ v.get.custom_data

data modify storage placeit:out get.result.components."minecraft:container" set value []
data modify storage placeit:out get.result.components."minecraft:container" append from storage placeit:_ v.get.itemslot
data modify storage placeit:out get.result.components."minecraft:tooltip_display".hidden_components append value "container"
execute unless data storage placeit:out get.result.components."minecraft:item_name" run data modify storage placeit:out get.result.components."minecraft:item_name" set value {text:"('item_name' component not set)"}

data modify storage placeit:out get.result.components."minecraft:custom_data".placeit.placeable.command set from storage placeit:in get.place_command
data modify storage placeit:out get.result.components."minecraft:custom_data".placeit.placeable.data set from storage placeit:in get.place_data
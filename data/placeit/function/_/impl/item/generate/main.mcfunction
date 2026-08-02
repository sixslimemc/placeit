# IMPL > placeit : item/generate
# main

data modify storage placeit:out generate.result set value {id:"minecraft:barrel",components:{}}
data modify storage placeit:out generate.result.components set from storage placeit:in generate.components

data modify storage placeit:_ v.generate.custom_data set value {_:true,_placeit:{place_data:{present:true}}}
data modify storage placeit:_ v.generate.custom_data._placeit.place_data.command set from storage placeit:in generate.place.command
data modify storage placeit:_ v.generate.custom_data._placeit.place_data.data set from storage placeit:in generate.place.data

data modify storage placeit:_ v.generate.itemslot set value {slot:0, item:{id:"minecraft:slime_ball", count:1, components:{"minecraft:item_name":{text:"('placeit' block data)"}}}}
data modify storage placeit:_ v.generate.itemslot.item.components."minecraft:custom_data" set from storage placeit:_ v.generate.custom_data

data modify storage placeit:out generate.result.components."minecraft:container" set value []
data modify storage placeit:out generate.result.components."minecraft:container" append from storage placeit:_ v.generate.itemslot
data modify storage placeit:out generate.result.components."minecraft:tooltip_display".hidden_components append value "container"
execute unless data storage placeit:out generate.result.components."minecraft:item_name" run data modify storage placeit:out generate.result.components."minecraft:item_name" set value {text:"('item_name' component not set)"}

data modify storage placeit:out generate.result.components."minecraft:custom_data".placeit.placeable set value true
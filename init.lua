minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

minetest.register_biome({
	name = "grass",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_riverbed = "default:dirt",
	depth_riverbed = 2,
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = 31000,
	y_min = 1,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_biome({
	name = "ocean",
	node_top = "default:dirt",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_riverbed = "default:dirt",
	depth_riverbed = 2,
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = 0,
	y_min = -31000,
	heat_point = 50,
	humidity_point = 50,
})

local plants = {
	"default:sapling",
	"default:junglesapling",
	"default:pine_sapling",
	"default:acacia_sapling",
	"default:aspen_sapling",
	"default:papyrus",
	"default:junglegrass",
	"default:grass_1",
	"default:grass_2",
	"default:grass_3",
	"default:grass_4",
	"default:grass_5",
	"default:fern_1",
	"default:fern_2",
	"default:fern_3",
	"default:bush_sapling",
	"default:acacia_bush_sapling",
	"default:pine_bush_sapling",
	"default:blueberry_bush_sapling",
	"farming:cotton_wild",
	"flowers:mushroom_red",
	"flowers:mushroom_brown",
	"flowers:rose",
	"flowers:tulip",
	"flowers:dandelion_yellow",
	"flowers:chrysanthemum_green",
	"flowers:geranium",
	"flowers:viola",
	"flowers:dandelion_white",
	"flowers:tulip_black",
	"flowers:waterlily",
	"default:cactus",
}

minetest.register_abm({
	nodenames = {"default:dirt_with_grass"},
	interval = 5,
	chance = 20,
	action = function(pos)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		if minetest.get_node(above).name == "air" then
			minetest.set_node(above, {name=plants[math.random(#plants)]})
		end
	end
})

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

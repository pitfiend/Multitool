minetest.register_craftitem("multitool:multitool_case", {
	description = "Multitool Case",
	inventory_image = "multitool_case.png"
})

minetest.register_craft({
	output = "multitool:multitool_case",
	recipe = {{"dye:red","default:tin_ingot","dye:red"},
			  {"default:tin_ingot","default:steel_ingot","default:tin_ingot"},
			  {"dye:red","default:tin_ingot","dye:red"}}
})

minetest.register_tool("multitool:multitool_steel",{
	description = "Steel Multitool",
	inventory_image = "multitool_steel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 2,
		groupcaps = {
            crumbly = {maxlevel = 2, uses = 600, times = {[1]=0.4, [2]=0.6, [3]=0.8}},
			cracky  = {maxlevel = 2, uses = 600, times = {[1]=0.4, [2]=0.6, [3]=0.8}},
			choppy  = {maxlevel = 2, uses = 600, times = {[1]=0.4, [2]=0.6, [3]=0.8}}, 
            snappy  = {maxlevel = 2, uses = 600, times = {[1]=0.4, [2]=0.6, [3]=0.8}}, 
		},
		damage_groups = {fleshy = 6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1, sword = 1, shovel = 1, pickaxe = 1}
})

minetest.register_tool("multitool:multitool_diamond",{
	description = "Diamond Multitool",
	inventory_image = "multitool_diamond.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 3,
		groupcaps = {
			crumbly = {maxlevel = 3, uses = 800, times = {[1]=0.1, [2]=0.3, [3]=0.5}},
			cracky =  {maxlevel = 3, uses = 800, times = {[1]=0.1, [2]=0.3, [3]=0.5}},
			choppy =  {maxlevel = 3, uses = 800, times = {[1]=0.1, [2]=0.3, [3]=0.5}},
			snappy =  {maxlevel = 3, uses = 800, times = {[1]=0.1, [2]=0.3, [3]=0.5}}, 
		},
		damage_groups = {fleshy = 8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1, sword = 1, shovel = 1, pickaxe = 1}
})


local craft_ingreds = {steel = "", diamond = ""}

for name in pairs(craft_ingreds) do
	minetest.register_craft({
		type = "shapeless",
		output = "multitool:multitool_" .. name,
		recipe = {"multitool:multitool_case","default:axe_" .. name,"default:shovel_" .. name,"default:pick_" .. name,"default:sword_" .. name}
	})
end

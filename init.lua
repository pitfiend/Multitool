minetest.register_craftitem("multitool:multitool_caseing", {
	description = "Multitool Caseing",
	inventory_image = "multitool_caseing.png"
})

minetest.register_craft({
	output = "multitool:multitool_caseing",
	recipe = {{"dye:red","default:tin_ingot","dye:red"},
			  {"default:tin_ingot","default:steel_ingot","default:tin_ingot"},
			  {"dye:red","default:tin_ingot","dye:red"}}
})

minetest.register_tool("multitool:multitool_diamond",{
	description = "Diamond Multitool",
	inventory_image = "multitool_diamond.png",
	range = 8,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 3,
		groupcaps = {
			crumbly =       {maxlevel = 3, uses = 810, times = {[1]=0.1, [2]=0.3, [3]=0.5}},
			cracky =        {maxlevel = 3, uses = 810, times = {[1]=0.1, [2]=0.3, [3]=0.5}},
			choppy =        {maxlevel = 3, uses = 810, times = {[1]=0.1, [2]=0.3, [3]=0.5}},
			snappy =        {maxlevel = 3, uses = 810, times = {[1]=0.1, [2]=0.3, [3]=0.1}}, 
			damage_groups = {fleshy = 8},
			groups =        {axe = 1, sword = 1, shovel = 1, pickaxe = 1}
		}
	}
})

minetest.register_craftitem("multitool:multitool_diamond", {
	description = "Diamond Multitool",
	inventory_image = "multitool_diamond.png"
})

minetest.register_craft({
	type = "shapeless",
	output = "multitool:multitool_diamond",
	recipe = {"multitool:multitool_caseing","default:axe_diamond","default:shovel_diamond","default:pick_diamond","default:sword_diamond"}
})

minetest.register_tool("multitool:multitool_steel",{
	description = "Steel Multitool",
	inventory_image = "multitool_steel.png",
	range = 6,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 2,
		groupcaps = {
            crumbly =       {maxlevel = 2, uses = 520, times = {[1]=0.4, [2]=0.9, [3]=1.2}},
			cracky  =       {maxlevel = 2, uses = 520, times = {[1]=0.4, [2]=0.9, [3]=1.2}},
			choppy  =       {maxlevel = 2, uses = 520, times = {[1]=0.3, [2]=0.6, [3]=0.8}}, 
            snappy  =       {maxlevel = 2, uses = 520, times = {[1]=1.5, [2]=0.6, [3]=0.2}}, 
			damage_groups = {fleshy = 6},
			groups  =       {axe = 1, sword = 1, shovel = 1, pickaxe = 1}
		}
	}
})

minetest.register_craftitem("multitool:multitool_steel", {
	description = "Steel Multitool",
	inventory_image = "multitool_steel.png"
})

minetest.register_craft({
	type = "shapeless",
	output = "multitool:multitool_steel",
	recipe = {"multitool:multitool_caseing","default:axe_steel","default:pick_steel","default:shovel_steel","default:sword_steel"}
})

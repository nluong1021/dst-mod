local assets =
{
	Asset( "ANIM", "anim/miyo.zip" ),
	Asset( "ANIM", "anim/ghost_miyo_build.zip" ),
}

local skins =
{
	normal_skin = "miyo",
	ghost_skin = "ghost_miyo_build",
}

return CreatePrefabSkin("miyo_none",
{
	base_prefab = "miyo",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"MIYO", "CHARACTER", "BASE"},
	build_name_override = "miyo",
	rarity = "Character",
})
PrefabFiles = {
	"miyo",
    "miyo_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/miyo.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/miyo.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/miyo.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/miyo.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/miyo_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/miyo_silho.xml" ),

    Asset( "IMAGE", "bigportraits/miyo.tex" ),
    Asset( "ATLAS", "bigportraits/miyo.xml" ),
	
	Asset( "IMAGE", "images/map_icons/miyo.tex" ),
	Asset( "ATLAS", "images/map_icons/miyo.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_miyo.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_miyo.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_miyo.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_miyo.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_miyo.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_miyo.xml" ),
	
	Asset( "IMAGE", "images/names_miyo.tex" ),
    Asset( "ATLAS", "images/names_miyo.xml" ),
	
	Asset( "IMAGE", "images/names_gold_miyo.tex" ),
    Asset( "ATLAS", "images/names_gold_miyo.xml" ),
}

AddMinimapAtlas("images/map_icons/miyo.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.miyo = "Miyo Sasaki"
STRINGS.CHARACTER_NAMES.miyo = "Miyo"
STRINGS.CHARACTER_DESCRIPTIONS.miyo = "*Can craft masks that turn her into mob friends\n*Separate crafting tab for masks\n*Enters with Cat mask"
STRINGS.CHARACTER_QUOTES.miyo = "\"I used to wish the world would end. Every single day.\""
STRINGS.CHARACTER_SURVIVABILITY.miyo = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.MIYO = require "speech_miyo"

-- The character's name as appears in-game 
STRINGS.NAMES.MIYO = "Miyo"
STRINGS.SKIN_NAMES.miyo_none = "Miyo"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("miyo", "FEMALE", skin_modes)

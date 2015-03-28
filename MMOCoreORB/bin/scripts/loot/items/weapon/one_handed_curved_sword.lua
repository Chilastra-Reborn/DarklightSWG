
one_handed_curved_sword = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/sword/sword_02.iff",
	craftingValues = {
		{"mindamage",18,33,0},
		{"maxdamage",70,130,0},
		{"attackspeed",4,2.8,1},
		{"woundchance",12,24,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-2,8,0},
		{"maxrangemod",-2,8,0},
		{"midrange",3,3,0},
		{"midrangemod",-2,8,0},
		{"maxrange",4,4,0},		
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("one_handed_curved_sword", one_handed_curved_sword)

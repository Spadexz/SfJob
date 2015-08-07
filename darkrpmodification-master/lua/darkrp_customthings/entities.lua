--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

Add entities under the following line:
---------------------------------------------------------------------------]]
--// Drugs
DarkRP.createEntity("Alcohol", {
ent = "durgz_alcohol",
model = "models/drug_mod/alcohol_can.mdl",
price = 2500,
max = 10000,
cmd = "alcohol",
allowed = TEAM_DRUG
}) 

DarkRP.createEntity("Aspirin", {
ent = "durgz_aspirin",
model = "models/jaanus/aspbtl.mdl",
price = 2500,
max = 10000,
cmd = "aspirin",
allowed = TEAM_DRUG
})

DarkRP.createEntity("Cigarette", {
ent = "durgz_cigarette",
model = "models/boxopencigshib.mdl",
price = 2500,
max = 10000,
cmd = "cigarette",
allowed = TEAM_DRUG
})

DarkRP.createEntity("Cocaine", {
ent = "durgz_cocaine",
model = "models/cocn.mdl",
price = 2500,
max = 10000,
cmd = "cocaine",
allowed = TEAM_DRUG
})

DarkRP.createEntity("Heroine", {
ent = "durgz_heroine",
model = "models/katharsmodels/syringe_out/syringe_out.mdl",
price = 2500,
max = 10000,
cmd = "heroineq",
allowed = TEAM_DRUG
})

DarkRP.createEntity("LSD", {
ent = "durgz_lsd",
model = "models/smile/smile.mdl",
price = 2500,
max = 10000,
cmd = "lsd",
allowed = TEAM_DRUG
})

DarkRP.createEntity("Weed", {
ent = "durgz_weed",
model = "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl",
price = 2500,
max = 10000,
cmd = "weed",
allowed = TEAM_DRUG
})

DarkRP.createEntity("Mushroom", {
ent = "durgz_mushroom",
model = "models/ipha/mushroom_small.mdl",
price = 2500,
max = 10000,
cmd = "mushroom",
allowed = TEAM_DRUG
})

DarkRP.createEntity("Pcp", {
ent = "durgz_pcp",
model = "models/marioragdoll/super mario galaxy/star/star.mdl",
price = 2500,
max = 10000,
cmd = "pcp",
allowed = TEAM_DRUG
})

DarkRP.createEntity("Water", {
ent = "durgz_water",
model = "models/drug_mod/the_bottle_of_water.mdl",
price = 2500,
max = 10000,
cmd = "water",
})
--// Armor
DarkRP.createEntity("Heavy Armor", {
ent = "heavy kevlar armor",
model = "models/combine_vests/bogvest.mdl",
price = 25000,
max = 1000,
cmd = "heavy",
allowed = TEAM_DEALER
})

DarkRP.createEntity("Medium Armor", {
ent = "medium kevlar armor",
model = "models/combine_vests/obseletevest.mdl",
price = 12000,
max = 1000,
cmd = "medium",
allowed = TEAM_DEALER
})

DarkRP.createEntity("Light Armor", {
ent = "light kevlar armor",
model = "models/combine_vests/bluevest.mdl",
price = 8000,
max = 1000,
cmd = "light",
allowed = TEAM_DEALER
})
--// Bank
DarkRP.createEntity("Card Machine", {
ent = "sent_arc_pinmachine",
model = "models/arc/atm_cardmachine.mdl",
price = 1000,
max = 1000,
cmd = "card",
})

DarkRP.createEntity("Microwave", {
ent = "microwave",
model = "models/props/cs_office/microwave.mdl",
price = 500,
max = 1,
cmd = "microwave",
})

DarkRP.createEntity("Microphone", {
ent = "rp_radio_microphone",
model = "models/mic.mdl",
price = 500,
max = 1,
cmd = "buymic",
allowed = { TEAM_DJ, }, //add or remove jobs: allowed = { TEAM_RADIOHOST, TEAM_DISC_JOCKEY }
})

DarkRP.createEntity("Radio", {
ent = "rp_radio",
model = "models/props_lab/citizenradio.mdl",
price = 200,
max = 10,
cmd = "buyradio"
})

--Meth Mod
DarkRP.createEntity("Gas Canister", {
	ent = "eml_gas",
	model = "models/props_c17/canister01a.mdl",
	price = 500,
	max = 20,
	cmd = "buygascanister",
	allowed = TEAM_METH
})

DarkRP.createEntity("Liquid Iodine", {
	ent = "eml_iodine",
	model = "models/props_lab/jar01b.mdl",
	price = 30,
	max = 20,
	cmd = "buyiodine",
	allowed = TEAM_METH
})

DarkRP.createEntity("Jar", {
	ent = "eml_jar",
	model = "models/props_lab/jar01a.mdl",
	price = 100,
	max = 20,
	cmd = "buyjar",
	allowed = TEAM_METH
})

DarkRP.createEntity("Muriatic Acid", {
	ent = "eml_macid",
	model = "models/props_junk/garbage_plasticbottle001a.mdl",
	price = 60,
	max = 20,
	cmd = "buymacid",
	allowed = TEAM_METH
})

DarkRP.createEntity("Pot", {
	ent = "eml_pot",
	model = "models/props_c17/metalPot001a.mdl",
	price = 150,
	max = 20,
	cmd = "buypot",
	allowed = TEAM_METH
})

DarkRP.createEntity("Special Pot", {
	ent = "eml_spot",
	model = "models/props_c17/metalPot001a.mdl",
	price = 300,
	max = 20,
	cmd = "buyspot",
	allowed = TEAM_METH
})

DarkRP.createEntity("Stove", {
	ent = "eml_stove",
	model = "models/props_c17/furnitureStove001a.mdl",
	price = 750,
	max = 5,
	cmd = "buystove",
	allowed = TEAM_METH
})

DarkRP.createEntity("Liquid Sulfur", {
	ent = "eml_sulfur",
	model = "models/props_lab/jar01b.mdl",
	price = 75,
	max = 20,
	cmd = "buysulfur",
	allowed = TEAM_METH
})

DarkRP.createEntity("Water", {
	ent = "eml_water",
	model = "models/props_junk/garbage_plasticbottle003a.mdl",
	price = 30,
	max = 20,
	cmd = "buywater",
	allowed = TEAM_METH
})
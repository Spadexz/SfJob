--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]
-- TEAM_POLICE, TEAM_CHIEF, TEAM_SWATM, TEAM_SWATA, TEAM_SWATC, TEAM_SWAT
TEAM_STAFF = DarkRP.createJob("Staff on Duty", {
	color = Color(200, 200, 200), --Gray
	model = "models/player/combine_super_soldier.mdl",
	description = [[Non-Roleplay Job.]],
	weapons = {"weapon_keypadchecker", "arrest_stick", "med_kit", "stunstick", "unarrest_stick", "weaponchecker", "vc_repair"},
	command = "staff",
	max = 0,
	salary = 0,
	admin = 1,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "mod" or ply:GetNWString("usergroup") == "admin" or ply:GetNWString("usergroup") == "superadmin" or ply:GetNWString("usergroup") == "owner" end,	
	CustomCheckFailMsg = "This job is Staff only.",
})

--NonVip
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
	color = Color(0, 155, 0),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl",
	},
	description = [[A basic non-illegal citizen.]],
	weapons = {},
	command = "citizen",
	max = 0,
	salary = 50,
	admin = 0,
	vote = false,
	category = "Citizens",
	hasLicense = false,
	candemote = false,
})

TEAM_POLICE = DarkRP.createJob("Police", {
	color = Color(0, 0, 255),
	model = "models/player/police.mdl",
	description = [[You Lookup to higher ranks of the government. Law is Love, Law Is life.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
	command = "police",
	max = 8,
	salary = 165,
	admin = 0,
	vote = true,
	category = "Goverment",
	hasLicense = true,
})

TEAM_CHIEF = DarkRP.createJob("Chief of Police", {
	color = Color(0, 0, 255), 
	model = "models/player/combine_soldier_prisonguard.mdl",
	description = [[You boss around lower ranks.]],
	weapons = {"arrest_stick", "unarrest_stick", "m9k_colt1911", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = 175,
	admin = 0,
	vote = true,
	hasLicense = true,
	category = "Goverment",
	chief = true,
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
        color = Color(0, 0, 240),
        model = "models/player/breen.mdl",
        description = [[You are white obama. Horible Obamacare.]],
        weapons = {},
        command = "mayor",
        max = 1,
        salary = 185,
        admin = 0,
        vote = true,
        hasLicense = false,
        mayor = true,
		category = "Goverment",
        PlayerDeath = function(ply, weapon, killer)
                ply:teamBan()
                ply:changeTeam(GAMEMODE.DefaultTeam, true)
                if killer:IsPlayer() then
                        DarkRP.notifyAll(0, 4, "The mayor has been killed and is therefor demoted.")
                else
                        DarkRP.notifyAll(0, 4, "The mayor has died and is therefor demoted.")
                end
        end
})

TEAM_GUARD = DarkRP.createJob("Security Guard", {
	color = Color(0, 153, 255),
	model = "models/player/combine_soldier.mdl",
	description = [[You like to do anything for the money. But you stay out enough not to get arrested.]],
	weapons = {"stunstick", "weapon_fists", "weaponchecker"},
	command = "guard",
	max = 4,
	salary = 60,
	admin = 0,
	vote = true,
	category = "Goverment",
	hasLicense = true,
})

TEAM_DOCTOR = DarkRP.createJob("Doctor", {
	color = Color(0, 0, 255),
	model = {
		"models/player/group03m/female_01.mdl",
		"models/player/group03m/female_02.mdl",
		"models/player/group03m/female_03.mdl",
		"models/player/group03m/female_04.mdl",
		"models/player/group03m/female_05.mdl",
		"models/player/group03m/female_06.mdl",
	},
	description = [[You heal everyone that is not wanted by police. You are afraid of those who break the law.]],
	weapons = {"med_kit", "weapon_fists"},
	command = "doctor",
	max = 4,
	salary = 170,
	admin = 0,
	vote = true,
	category = "Citizens",
	hasLicense = false,
})

TEAM_BODY = DarkRP.createJob("Body Guard", {
	color = Color(100, 100, 100),
	model = "models/player/barney.mdl",
	description = [[Your Life Meaning is to protect the person that pays you.]],
	weapons = {"weapon_fists", "stunstick", "door_ram", "weaponchecker", "med_kit"},
	command = "body",
	max = 6,
	salary = 175,
	admin = 0,
	vote = true,
	hasLicense = true,
	category = "Citizens",
	candemote = true,
})

TEAM_REPAIR = DarkRP.createJob("Repair Man", {
	color = Color(0, 0, 153),
	model = "models/player/hostage/hostage_03.mdl",
	description = [[You repair everyones car to the ends of life. Your price has to be realy high. If they deny your price, you lower it until you get their service.]],
	weapons = {"vc_repair"},
	command = "repair",
	max = 4,
	salary = 200,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Citizens",
	candemote = true,
})

TEAM_PARKOURER = DarkRP.createJob("Parkourer", {
	color = Color(50, 70, 100), -- Grey/Blue
	model = "models/player/group03m/male_06.mdl",
	description = [[Jump, Jump, Jump, Jump arround!]],
	weapons = {"climb_swep2"},
	command = "freerunner",
	max = 8,
	salary = 175,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Citizens",
	candemote = false,
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
	color = Color(80, 45, 0),
	model = "models/player/corpse1.mdl",
	description = [[You are a filthy whore who has ran out of money, survived five house burndowns(while inside), and haven't washed sense your last house. You beg for money and piss on people who don't. You try to sing but all you get is "Your a failure!"]],
	weapons = {"weapon_bugbait"},
	command = "hobo",
	max = 10,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Citizens",
	candemote = false,
	hobo = true,
})

TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
	color = Color(153, 51, 0),
	model = "models/player/soldier_stripped.mdl",
	description = [["You got more of that white stuff?"]],
	weapons = {},
	command = "drug",
	max = 4,
	salary = 70,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Dealers",
	candemote = false,
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
	color = Color(255, 102, 0),
	model = "models/player/monk.mdl",
	description = [[Single, Shot yourself while cuddleing with your Bouble Barrel]],
	weapons = {},
	command = "gundealer",
	max = 4,
	salary = 100,
	admin = 0,
	vote = true,
	category = "Dealers",
	hasLicense = false,
})

TEAM_DEALER = DarkRP.createJob("Black Market Dealer", {
	color = Color(10, 10, 10), --Black
	model = "models/player/eli.mdl",
	description = [[From Down in the deep brazil, your plan is to kill all government of all kind, but you never get the chance and get arrested for supplying IsIs]],
	weapons = {},
	command = "dealer",
	max = 4,
	salary = 160,
	admin = 0,
	vote = true,
	hasLicense = false,
	category = "Dealers",
	candemote = false,
})

TEAM_HITMAN = DarkRP.createJob("Hitman", {
	color = Color(185, 0, 0),
	model = "models/player/leet.mdl",
	description = [[As a kid you got payed to do pranks to your teachers. Untill things got out of hand, and your parents went to jail for allowing this, and it went on...]],
	weapons = {"weapon_glock2", "weapon_fists", "weaponchecker"},
	command = "hitman",
	max = 4,
	salary = 85,
	admin = 0,
	vote = true,
	category = "Criminals",
	hasLicense = false,
})

TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(255, 102, 0),
	model = "models/player/phoenix.mdl",
	description = [[You were born in compton........]],
	weapons = {"lockpick", "keypad_cracker"},
	command = "thief",
	max = 8,
	salary = 125,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Criminals",
	candemote = false,
})

TEAM_GANGSTER = DarkRP.createJob("Gangster", {
	color = Color(204, 204, 204),
	model = {
		"models/player/group03/female_01.mdl",
		"models/player/group03/female_02.mdl",
		"models/player/group03/female_03.mdl",
		"models/player/group03/female_04.mdl",
		"models/player/group03/female_05.mdl",
		"models/player/group03/female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/group03/male_02.mdl",
		"models/player/group03/male_03.mdl",
		"models/player/group03/male_04.mdl",
		"models/player/group03/male_05.mdl",
		"models/player/group03/male_06.mdl",
		"models/player/group03/male_07.mdl",
		"models/player/group03/male_08.mdl",
		"models/player/group03/male_09.mdl",
	},
	description = [[Your Job Is to break all laws and get your fellow gangsters out of trouble.]],
	weapons = {"keypad_cracker", "lockpick", "weapon_fists"},
	command = "gangster",
	max = 10,
	salary = 145,
	admin = 0,
	vote = false,
	category = "Criminals",
	hasLicense = false,
})

--Gangster Leader
TEAM_METH = DarkRP.createJob("Meth Producer", {
	color = Color(255, 255, 0),
	model = {
		"models/dxn/cod_ghosts/hazmat_pm.mdl",
	},
	description = [[You were sexually abused by your father and drugs are the only thing from not killing yourself.]],
	weapons = {},
	command = "meth",
	max = 6,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Criminals",
	candemote = false,
})

TEAM_TAXI = DarkRP.createJob("Taxi Driver", {
	color = Color(255, 187, 0), --Gold
	model = "models/player/Group01/Female_01.mdl",
	description = [[A Crabby New York Taxi Driver.]],
	weapons = {},
	command = "taxi",
	max = 2,
	salary = 90,
	admin = 0,
	vote = true,
	category = "Citizens",
	hasLicense = false,
})

--Vip
TEAM_RAPE = DarkRP.createJob("Rapist", {
	color = Color(55, 55, 55), --Black
	model = "models/player/group01/male_01.mdl",
	description = [[( ͡° ͜ʖ ͡°)]],
	weapons = {"weapon_rape"},
	command = "rape",
	max = 2,
	salary = 200,
	admin = 0,
	VIPOnly = true,
	vote = true,
	hasLicense = false,
	candemote = false,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_KIDNAPPER = DarkRP.createJob("Kidnapper", {
	color = Color(80, 205, 150),
	model = "models/player/odessa.mdl",
	description = [[Got Kidnapped as a child. Wants to prove the world it was not fun...]],
	weapons = {"lockpick", "keypad_cracker", "knockout"},
	command = "kidnapper",
	VIPOnly = true,
	max = 2,
	salary = 140,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = false,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_SWATA = DarkRP.createJob("S.W.A.T Assault", {
	color = Color(0, 0, 255), --Dark Blue
	model = "models/player/gasmask.mdl",
	description = [[I got 99 Problems but your bail isn't one]],
	weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "riot_shield", "m9k_m249lmg"},
	command = "swata",
	max = 2,
	salary = 120,
	admin = 0,
	vote = true,
	hasLicense = true,
	VIPOnly = true,
	category = "Goverment",
	PlayerLoadout = function(ply) ply:SetArmor(25) end,
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_SWATM = DarkRP.createJob("S.W.A.T Marksman", {
	color = Color(0, 0, 255), --Dark Blue
	model = "models/player/riot.mdl",
	description = [[I got 99 Problems but your bail isn't one]],
	weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "m9k_intervention", "weapon_limeinv"},
	command = "swatm",
	max = 2,
	salary = 120,
	admin = 0,
	vote = true,
	hasLicense = true,
	VIPOnly = true,
	category = "Goverment",
	PlayerLoadout = function(ply) ply:SetArmor(100) end,
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_ASSASSIN = DarkRP.createJob("Assassin", {
	color = Color(255, 0, 0), --Red
	model = "models/player/edward_kenway.mdl",
	description = [[He didn't choose the assassin life.... The assassin life chose him.(THUG LIFE)]],
	weapons = {"m9k_damascus", "climb_swep2"},
	command = "assassin",
	max = 6,
	salary = 100,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_NINJA = DarkRP.createJob("Ninja", {
	color = Color(255, 0, 0), --Red
	model = "models/norpo/arkhamorigins/assassins/deathstroke_valvebiped.mdl",
	description = [[Did you just fall? Nope, I attacked the ground with my awesome ninja skills. Backwards? I'm freaking talented! ]],
	weapons = {"m9k_damascus", "climb_swep2"},
	command = "ninja",
	max = 4,
	salary = 100,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_HACKER = DarkRP.createJob("Hacker", {
	color = Color(219, 219, 219), --White
	model = "models/player/gman_high.mdl",
	description = [[HAAAAAAAAAAAAAAAAAAAAAXXXXXXXXXXXXX]],
	weapons = {"keypad_cracker", "weapon_arc_atmhack"},
	command = "hacker",
	max = 2,
	salary = 195,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_MTHIEF = DarkRP.createJob("Master Thief", {
	color = Color(222, 51, 51), --Red
	model = "models/player/arctic.mdl",
	description = [[You were born in compton........]],
	weapons = {"lockpick", "gm_pickpocket", "pro_lockpick_update", "prokeypadcracker"},
	command = "pthief",
	max = 8,
	salary = 155,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_DJ = DarkRP.createJob("Radio DJ", {
	color = Color(255, 0, 247), --Purple
	model = "models/player/daftpunk/daft_gold.mdl",
	description = [[Sick Tunes Brah]],
	weapons = {},
	command = "dj",
	max = 1,
	salary = 150,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Citizens",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_GUNH = DarkRP.createJob("Heavy Gun Dealer", {
	color = Color(255, 102, 0), --Brownish/Red
	model = "models/player/monk.mdl",
	description = [[Single, Shot yourself while cuddleing with your Bouble Barrel]],
	weapons = {},
	command = "gunh",
	max = 3,
	salary = 145,
	admin = 0,
	vote = true,
	hasLicense = false,
	VIPOnly = true,
	category = "Dealers",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

TEAM_MEDIC = DarkRP.createJob("Combat Medic", {
	color = Color(0, 242, 255), --Light Blue
	model = {
		"models/player/group03m/male_01.mdl",
		"models/player/group03m/male_02.mdl",
		"models/player/group03m/male_03.mdl",
		"models/player/group03m/male_04.mdl",
		"models/player/group03m/male_05.mdl",
		"models/player/group03m/male_06.mdl",
		"models/player/group03m/male_07.mdl",
		"models/player/group03m/male_08.mdl",
		"models/player/group03m/male_09.mdl",
	},
	description = [[Healing Bad guys. Like snacks in a heist]],
	weapons = {"med_kit", "weapon_fists", "m9k_colt1911"},
	command = "medic",
	max = 2,
	salary = 180,
	admin = 0,
	vote = true,
	hasLicense = false,
	VIPOnly = true,
	category = "Citizens",
	PlayerLoadout = function(ply) ply:SetArmor(100) end,
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})	

TEAM_TERRORIST = DarkRP.createJob("Terrorist", {
	color = Color(33, 3, 3), --Black
	model = "models/player/guerilla.mdl",
	description = [[Allahu Akbar]],
	weapons = {"m9k_ied_detonator", "m9k_suicide_bomb"},
	command = "terrorist",
	max = 6,
	salary = 120,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+", "vip"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP only!",
})

--Vip+

TEAM_SWATC = DarkRP.createJob("S.W.A.T Chief", {
	color = Color(0, 0, 255), --Dark Blue
	model = "models/player/urban.mdl",
	description = [[I got 99 Problems but your bail isn't one]],
	weapons = {"arrest_stick", "unarrest_stick", "m9k_m16a4_acog", "stunstick", "door_ram", "weaponchecker", "riot_shield"},
	command = "swatc",
	max = 1,
	salary = 160,
	admin = 0,
	vote = true,
	hasLicense = true,
	chief = true,
	VIPOnly = true,
	category = "Goverment",
	PlayerLoadout = function(ply) ply:SetArmor(150) end,
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP+ only!",
})

TEAM_SWAT = DarkRP.createJob("S.W.A.T Heavy", {
	color = Color(0, 0, 255), -- Dark Blue
	model = "models/player/swat.mdl",
	description = [[I got 99 Problems but your bail isn't one]],
	weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "m9k_scar", "m9k_m60", "m9k_usas"},
	command = "swat",
	max = 3,
	salary = 100,
	admin = 0,
	vote = true,
	hasLicense = true,
	VIPOnly = true,
	category = "Goverment",
	PlayerLoadout = function(ply) ply:SetArmor(100) ply:SetHealth(150) end,
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP+ only!",
})

TEAM_GHOST = DarkRP.createJob("Ghost", {
	color = Color(25, 25, 25), --Black
	model = "models/player/skeleton.mdl",
	description = [[Bush Did 9/11]],
	weapons = {"lockpick", "weapon_camo", "m9k_knife", "keypad_cracker"},
	command = "ghost",
	max = 4,
	salary = 175,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP+ only!",
})

TEAM_OSAMA = DarkRP.createJob("Osama bin laden", {
	color = Color(33, 3, 3), --Black
	model = "models/characters/osama_bin_laden.mdl",
	description = [[Allahu Akbar]],
	weapons = {"m9k_ied_detonator", "m9k_suicide_bomb"},
	command = "osama",
	max = 1,
	salary = 120,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = false,
	VIPOnly = true,
	category = "Criminals",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP+ only!",
})

TEAM_HOBOL = DarkRP.createJob("King Hobo", {
	color = Color(80, 45, 0), --Brown
	model = "models/player/corpse1.mdl",
	description = [[You are a filthy whore who has ran out of money, survived five house burndowns(while inside), and haven't washed sense your last house. You beg for money and piss on people who don't. You try to sing but all you get is "Your a failure!"]],
	weapons = {"weapon_bugbait", "weapon_angryhobo", "weapon_chair", "weapon_gpee"},
	command = "hobol",
	max = 1,
	salary = 0,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = false,
	hobo = true,
	VIPOnly = true,
	category = "Citizens",
	customCheck = function(ply) return CLIENT or table.HasValue({"owner", "superadmin", "admin", "vip+"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "This job is VIP+ only!",
})

--Custom Classes
TEAM_ZOMBITEME = DarkRP.createJob("King Gangster", {
	color = Color(180, 180, 180), --Red
	model = "models/player/slow/amberlyn/mkvsdcu/subzero/slow.mdl",
	description = [[CUSTOM CLASS]],
	weapons = {"lockpick", "gm_pickpocket", "pro_lockpick_update", "prokeypadcracker", "m9k_ares_shrike", "m9k_tec9"},
	command = "zombiteme",
	max = 2,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Criminals",
	customCheck = function(ply) return ply:SteamID() =="STEAM_0:0:90778570" or  ply:SteamID() == "STEAM_0:0:72952673" end,
	CustomCheckFailMsg = "This is zombiteme custom class",
})

TEAM_PRIVATE = DarkRP.createJob("Private Millitary", {
	color = Color(255, 215, 0), --Gold
	model = "models/player/imc_grunt_anti_titan.mdl",
	description = [[CUSTOM CLASS]],
	weapons = {"lockpick", "gm_pickpocket", "pro_lockpick_update", "prokeypadcracker", "m9k_m416", "m9k_deagle", "weapon_camo"},
	command = "turtleisbae",
	max = 2,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = true,
	candemote = false,
	category = "Criminals",
	customCheck = function(ply) return ply:SteamID() == "STEAM_0:1:93624522" or ply:SteamID() == "STEAM_0:0:117669511" end,
	CustomCheckFailMsg = "This is Traumzys custom class",
})

TEAM_MY69CHEV = DarkRP.createJob("The Firehalk", {
        color = Color(0, 0, 128), --Dark Blue
        model = "models/cakez/wolfenstein/blackguard.mdl",
        description = [[CUSTOM CLASS]],
        weapons = {"lockpick", "gm_pickpocket", "pro_lockpick_update", "prokeypadcracker", "m9k_ares_shrike", "weapon_camo"},
        command = "TheFirehalk",
        max = 1,
        salary = 100,
        admin = 0,
        vote = false,
        hasLicense = false,
        candemote = false,
        category = "Criminals",
        customCheck = function(ply) return ply:SteamID() == "STEAM_0:0:58494019" end,
        CustomCheckFailMsg = "This is my69chev's custom class",
})

TEAM_MINTY = DarkRP.createJob("Contract Killer", {
        color = Color(200, 200, 200),
        model = "models/player/anon/anon.mdl",
        description = [[CUSTOM CLASS]],
        weapons = {"climb_swep2", "weapon_camo", "m9k_machete", "m9k_spas12"},
        command = "mint",
        max = 1,
        salary = 100,
        admin = 0,
        vote = false,
        hasLicense = false,
        candemote = false,
        category = "Criminals",
        customCheck = function(ply) return ply:SteamID() == "STEAM_0:1:48775425" end,
        CustomCheckFailMsg = "This is Minty's custom class",
})

TEAM_SURE = DarkRP.createJob("The Master Race", {
        color = Color(0, 255, 0),
        model = "models/player/lordvipes/rerc_vector/vector_cvp.mdl",
        description = [[CUSTOM CLASS]],
        weapons = {"ak47redline", "m9k_deagle"},
        command = "sure",
        max = 3,
        salary = 100,
        admin = 0,
        vote = false,
        hasLicense = false,
        candemote = false,
        category = "Criminals",
        customCheck = function(ply) return ply:SteamID() == "STEAM_0:1:66070940" or ply:SteamID() == "STEAM_0:1:61600041" or ply:SteamID() == "STEAM_0:0:67147607" end,
        CustomCheckFailMsg = "This is Sure's custom class",
})

TEAM_AILEN = DarkRP.createJob("Scorpion", {
	color = Color(84, 218, 239), --Dark Blue
	model = "models/player/slow/amberlyn/mkvsdcu/scorpion/slow.mdl",
	description = [[CUSTOM CLASS]],
	weapons = {"lockpick", "gm_pickpocket", "pro_lockpick_update", "prokeypadcracker", "m9k_an94", "m9k_m92beretta"},
	command = "Ailen",
	max = 1,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Criminals",
	customCheck = function(ply) return ply:SteamID() == "STEAM_0:0:81861865" end,
	CustomCheckFailMsg = "This is Ailen's custom class",
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_SWATA] = true,
	[TEAM_SWATM] = true,
	[TEAM_SWATC] = true,
	[TEAM_SWAT] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_ASSASSIN)
DarkRP.addHitmanTeam(TEAM_HITMAN)
DarkRP.addHitmanTeam(TEAM_MINTY)
DarkRP.addHitmanTeam(TEAM_SURE)

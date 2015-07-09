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
TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
	color = Color(80, 45, 0, 255),
	model = "models/player/soldier_stripped.mdl",
	description = [[You're a drug dealer. You sell anonymous drugs. 
	weapons = {},
	command = "drug",
	max = 3,
	salary = 15,
	admin = 0,
	vote = false,
	hasLicense = false
     })
     
 TEAM_SWAT = DarkRP.createJob("S.W.A.T", {
	color = Color(80, 45, 0, 255),
	model = "models/player/combine_soldier.mdl",
	description = [[You should stay in the PD
		until backup is needed.
		Do everything you can to keep the city safe.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "weapon_ak472", "ls_sniper", "weapon_m42", "weapon_mp52", "stunstick", "door_ram", "weaponchecker"},
	command = "swat",
	max = 6,
	salary = 100,
	admin = 0,
	vote = true,
	hasLicense = true,
 
     })
TEAM_SWATM = DarkRP.createJob("S.W.A.T Medic", {
	color = Color(80, 45, 0, 255),
	model = "models/player/combine_soldier_prisonguard.mdl",
	description = [[Your duty is to heal on of your
		wounded operatives. You should stay in the PD
		until backup is needed.
		Do everything you can to keep the city safe.
		You also keep your team healed.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "weapon_ak472", "ls_sniper", "weapon_m42", "weapon_mp52", "stunstick", "door_ram", "weaponchecker", "med_kit"},
	command = "swatm",
	max = 2,
	salary = 100,
	admin = 0,
	vote = true,
	hasLicense = true,
      
      })
TEAM_SWATC = DarkRP.createJob("S.W.A.T Cheif", {
        color = Color(80, 45, 0, 255),
        model = "models/player/combine_super_soldier.mdl",
        description = [[You are the in charge of the SWAT
               You should stay in the PD
               until backup is needed.
               Do everything you can to keep the city safe.
               You can heal your team, but it's not optinal unless theres
               no medics alive. If theres no mayor, you're in charge.]],
        weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "weapon_ak472", "ls_sniper", "weapon_m42", "weapon_mp52", "stunstick", "door_ram", "weaponchecker", "med_kit"},
        command = "swat",
        max = 1,
        salary = 200,
        admin = 0,
        vote = true,
        hasLicense = true,
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
	[TEAM_SWAT] = true,
	[TEAM_SWATM] = true,
	[TEAM_SWATC] =true,
	
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)

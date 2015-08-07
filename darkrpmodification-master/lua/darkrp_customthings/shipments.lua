--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]
AddCustomShipment("73 Winchester", "models/weapons/w_winchester_1873.mdl", "m9k_winchester73", 6000, 10, false, 200, false, {TEAM_GUN}) category = "Rifles",
AddCustomShipment("ACR", "models/weapons/w_masada_acr.mdl", "m9k_acr", 7000, 10, false, 200, false, {TEAM_GUNH})  category = "Rifles",
AddCustomShipment("AMD65", "models/weapons/w_amd_65.mdl", "m9k_amd65", 7000, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("AN-94", "models/weapons/w_rif_an_94.mdl", "m9k_an94", 7500, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("F2000", "models/weapons/w_fn_f2000.mdl", "m9k_f2000", 6000, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("FAMAS", "models/weapons/w_tct_famas.mdl", "m9k_famas", 6500, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("FN-FAL", "models/weapons/w_fn_fal.mdl", "m9k_fal", 4000, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("HK416", "models/weapons/w_hk_416.mdl", "m9k_m416", 6500, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("SCAR", "models/weapons/w_fn_scar_h.mdl", "m9k_scar", 4500, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("G36", "models/weapons/w_hk_g36c.mdl", "m9k_g36", 6000, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("HKG343", "models/weapons/w_hk_g3.mdl", "m9k_g3a3", 6000, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("L85", "models/weapons/w_l85a2.mdl", "m9k_l85", 6500, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("M4A1 Iron", "models/weapons/w_m4a1_iron.mdl", "m9k_m4a1", 6500, 10, false, 200, false, {TEAM_GUNH})  category = "Rifles",
AddCustomShipment("SR 3M", "models/weapons/w_dmg_vikhr.mdl", "m9k_vikhr", 4500, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("Aug", "models/weapons/w_auga3.mdl", "m9k_auga3", 7500, 10, false, 200, false, {TEAM_GUNH})  category = "Rifles",
AddCustomShipment("TAR21", "models/weapons/w_imi_tar21.mdl", "m9k_tar21", 4000, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("AS VAL", "models/weapons/w_dmg_vally.mdl", "m9k_val", 4000, 10, false, 200, false, {TEAM_GUN})  category = "Rifles",
AddCustomShipment("M14A4", "models/weapons/w_dmg_m16ag.mdl", "m9k_m16a4_acog", 7000, 10, false, 200, false, {TEAM_GUNH})  category = "Rifles",
AddCustomShipment("M14", "models/weapons/w_snip_m14sp.mdl", "m9k_m14sp", 4000, 10, false, 200, false, {TEAM_GUNH})  category = "Rifles",

AddCustomShipment("Ares Shrike", "models/weapons/w_ares_shrike.mdl", "m9k_ares_shrike", 9000, 10, false, 200, false, {TEAM_GUNH})  category = "LMG",
AddCustomShipment("FG42", "models/weapons/w_fg42.mdl", "m9k_fg42", 7000, 10, false, 200, false, {TEAM_GUNH})  category = "LMG",
AddCustomShipment("M1918", "models/weapons/w_m1918_bar.mdl", "m9k_m1918bar", 6000, 10, false, 200, false, {TEAM_GUNH})  category = "LMG",
AddCustomShipment("M249", "models/weapons/w_m249_machine_gun.mdl", "m9k_m249lmg", 8000, 10, false, 200, false, {TEAM_GUNH})  category = "LMG",
AddCustomShipment("M60", "models/weapons/w_m60_machine_gun.mdl", "m9k_m60", 7000, 10, false, 200, false, {TEAM_GUNH})  category = "LMG",
AddCustomShipment("PKM", "models/weapons/w_mach_russ_pkm.mdl", "m9k_pkm", 8500, 10, false, 200, false, {TEAM_GUNH})  category = "LMG",

AddCustomShipment("Beneli M3", "models/weapons/w_benelli_m3.mdl", "m9k_m3", 6000, 10, false, 200, false, {TEAM_GUN})  category = "Shotguns",
AddCustomShipment("Browning Auto 5", "models/weapons/w_browning_auto.mdl", "m9k_browningauto5", 7500, 10, false, 200, false, {TEAM_GUNH})  category = "Shotguns",
AddCustomShipment("Bouble Barrel Shotgun", "models/weapons/w_double_barrel_shotgun.mdl", "m9k_dbarrel", 4000, 10, false, 200, false, {TEAM_GUNH})  category = "Shotguns",
AddCustomShipment("Ithaca M37", "models/weapons/w_ithaca_m37.mdl", "m9k_ithacam37", 4500, 10, false, 200, false, {TEAM_GUN})  category = "Shotguns",
AddCustomShipment("Mossberg 590", "models/weapons/w_mossberg_590.mdl", "m9k_mossberg590", 4500, 10, false, 200, false, {TEAM_GUN})  category = "Shotguns",
AddCustomShipment("Poncor Jackhammer", "models/weapons/w_pancor_jackhammer.mdl", "m9k_jackhammer", 6000, 10, false, 200, false, {TEAM_GUN})  category = "Shotguns",
AddCustomShipment("Remington 870", "models/weapons/w_remington_870_tact.mdl", "m9k_remington870", 6500, 10, false, 200, false, {TEAM_GUNH})  category = "Shotguns",
AddCustomShipment("Spas 12", "models/weapons/w_spas_12.mdl", "m9k_spas12", 6500, 10, false, 200, false, {TEAM_GUNH})  category = "Shotguns",
AddCustomShipment("USAS", "models/weapons/w_usas_12.mdl", "m9k_usas", 8500, 10, false, 200, false, {TEAM_GUNH})  category = "Shotguns",
AddCustomShipment("Winchester 1897", "models/weapons/w_winchester_1897_trench.mdl", "m9k_1897winchester", 6500, 10, false, 200, false, {TEAM_GUNH})  category = "Shotguns",
AddCustomShipment("Winchester 87", "models/weapons/w_winchester_1887.mdl", "m9k_1887winchester", 7500, 10, false, 200, false, {TEAM_GUN})  category = "Shotguns",
AddCustomShipment("Striker 12", "models/weapons/w_striker_12g.mdl", "m9k_striker12", 10000, 10, false, 200, false, {TEAM_GUNH})  category = "Shotguns",

AddCustomShipment("Colt Python", "models/weapons/w_colt_python.mdl", "m9k_coltpython", 2000, 10, false, 200, false, {TEAM_GUNH})  category = "Pistols",
AddCustomShipment("Glock 18", "models/weapons/w_dmg_glock.mdl", "m9k_glock", 2000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("HK45C", "models/weapons/w_hk45c.mdl", "m9k_hk45", 1000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("M29 Satan", "models/weapons/w_m29_satan.mdl", "m9k_m29satan", 1000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("M92 Beretta", "models/weapons/w_beretta_m92.mdl", "m9k_m92beretta", 1000, 10, false, 200, false, {TEAM_GUNH})  category = "Pistols",
AddCustomShipment("PO8 Luger", "models/weapons/w_luger_p08.mdl", "m9k_luger", 1000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("Raging Bull", "models/weapons/w_taurus_raging_bull.mdl", "m9k_ragingbull", 1000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("Raging Bull Scoped", "models/weapons/w_raging_bull_scoped.mdl", "m9k_scoped_taurus", 1000, 10, false, 200, false, {TEAM_GUNH})  category = "Pistols",
AddCustomShipment("Remington 1858", "models/weapons/w_remington_1858.mdl", "m9k_remington1858", 1000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("SW Model 500", "models/weapons/w_sw_model_500.mdl", "m9k_model500", 1650, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("SW Model 627", "models/weapons/w_sw_model_627.mdl", "m9k_model627", 1000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",
AddCustomShipment("Sig Sauer P229R", "models/weapons/w_sig_229r.mdl", "m9k_sig_p229r", 1000, 10, false, 200, false, {TEAM_GUN})  category = "Pistols",

AddCustomShipment("AL AW50", "models/weapons/w_acc_int_aw50.mdl", "m9k_aw50", 9500, 10, false, 200, false, {TEAM_GUN})  category = "Snipers",
AddCustomShipment("Barret M82", "models/weapons/w_barret_m82.mdl", "m9k_barret_m82", 10000, 10, false, 200, false, {TEAM_GUNH})  category = "Snipers",
AddCustomShipment("Barret M98B", "models/weapons/w_barrett_m98b.mdl", "m9k_m98b", 8500, 10, false, 200, false, {TEAM_GUNH})  category = "Snipers",
AddCustomShipment("Dragunov SVU", "models/weapons/w_dragunov_svu.mdl", "m9k_svu", 7000, 10, false, 200, false, {TEAM_GUNH})  category = "Snipers",
AddCustomShipment("Remington 7615P", "models/weapons/w_remington_7615p.mdl", "m9k_remington7615", 5000, 10, false, 200, false, {TEAM_GUN})  category = "Snipers",
AddCustomShipment("SVT 40", "models/weapons/w_svt_40.mdl", "m9k_svt40", 7000, 10, false, 200, false, {TEAM_GUN})  category = "Snipers",
AddCustomShipment("HK SL8", "models/weapons/w_hk_sl8.mdl", "m9k_sl8", 8000, 10, false, 200, false, {TEAM_GUN})  category = "Snipers",
AddCustomShipment("Intervention", "models/weapons/w_snip_int.mdl", "m9k_intervention", 8500, 10, false, 200, false, {TEAM_GUN})  category = "Snipers",
AddCustomShipment("M24", "models/weapons/w_snip_m24_6.mdl", "m9k_m24", 7000, 10, false, 200, false, {TEAM_GUN})  category = "Snipers",
AddCustomShipment("SVD Dragunov", "models/weapons/w_svd_dragunov.mdl", "m9k_dragunov", 8000, 10, false, 200, false, {TEAM_GUN})  category = "Snipers",
AddCustomShipment("Thompson Contender", "models/weapons/w_g2_contender.mdl", "m9k_contender", 8000, 10, false, 200, false, {TEAM_GUNH})  category = "Snipers",

AddCustomShipment("AAC Honey Badger", "models/weapons/w_aac_honeybadger.mdl", "m9k_honeybadger", 6000, 10, false, 200, false, {TEAM_GUNH})  category = "SMGs",
AddCustomShipment("Bizon PP19", "models/weapons/w_pp19_bizon.mdl", "m9k_bizonp19", 6000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("FN P90", "models/weapons/w_fn_p90.mdl", "m9k_smgp90", 6000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("HK MP5", "models/weapons/w_hk_mp5.mdl", "m9k_mp5", 6000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("HK MP7", "models/weapons/w_mp7_silenced.mdl", "m9k_mp9", 6000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("HM UMP45", "models/weapons/w_hk_ump45.mdl", "m9k_ump45", 6000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("HK USC", "models/weapons/w_hk_usc.mdl", "m9k_usc", 6000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("KAC PDW", "models/weapons/w_kac_pdw.mdl", "m9k_kac_pdw", 6000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("KRISS Vector", "models/weapons/w_kriss_vector.mdl", "m9k_vector", 6500, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("Magpul PDR", "models/weapons/w_magpul_pdr.mdl", "m9k_magpulpdr", 6500, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("MP40", "models/weapons/w_mp40smg.mdl", "m9k_mp40", 5500, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("MP55D", "models/weapons/w_hk_mp5sd.mdl", "m9k_mp5sd", 4000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("MP9", "models/weapons/w_brugger_thomet_mp9.mdl", "m9k_mp9", 4000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("STEN", "models/weapons/w_sten.mdl", "m9k_sten", 4000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("TEC-9", "models/weapons/w_intratec_tec9.mdl", "m9k_tec9", 4500, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("Tommy Gun", "models/weapons/w_tommy_gun.mdl", "m9k_thompson", 4500, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",
AddCustomShipment("UZI", "models/weapons/w_uzi_imi.mdl", "m9k_uzi", 3000, 10, false, 200, false, {TEAM_GUN})  category = "SMGs",

AddCustomShipment("Harpoon", "models/weapons/w_harpooner.mdl", "m9k_harpoon", 3500, 10, false, 200, false, {TEAM_DEALER})
AddCustomShipment("Machete", "models/weapons/w_fc2_machete.mdl", "m9k_machete", 2500, 10, false, 200, false, {TEAM_DEALER})


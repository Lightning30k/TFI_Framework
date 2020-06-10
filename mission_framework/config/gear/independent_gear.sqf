/*
    Create a loadout in the ACE Arsenal then click 'Export'. Paste the exported array between the keywords

    Defining new roles:
        case "newRole"
            GEAR_START
                [pasteExportedGearHere]
            GEAR_END


    Use selectRandom to randomise stuff. Example:

    case "SL"
        GEAR_START
            _randomStuff = selectRandom ["stuff1_classname", "stuff2_classname"];

             _gear = [..., _randomStuff, ...]
        GEAR_END
 */


// AAF 2035

case "SL" : {
    _randomVest = selectRandom ["V_PlateCarrierIA1_dgtl", "V_PlateCarrierIA2_dgtl"];

    _gear = [
        // Primary weapon
        ["arifle_Mk20_MRCO_pointer_F","","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag",30],[],""],
        // Launcher
        [],
        // Secondary weapon
        ["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],
        // Uniform
        ["U_I_CombatUniform_shortsleeve",[["FirstAidKit",1],["30Rnd_556x45_Stanag",3,30],["SmokeShell",1,1]]],
        // Vest
        [_randomVest,[["30Rnd_556x45_Stanag_Tracer_Yellow",2,30],["9Rnd_45ACP_Mag",2,8],["HandGrenade",2,1],["I_IR_Grenade",2,1],["SmokeShellGreen",1,1],["SmokeShellOrange",1,1],["SmokeShellPurple",1,1],["Chemlight_green",2,1]]],
        // Backpack
        ["TFAR_anprc155",[]],
        // Helmet
        "H_HelmetIA",
        // Facewear
        "G_Tactical_Clear",
        // Binos
        ["Binocular","","","",[],[],""],
        // Linked items
        ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","NVGoggles_INDEP"]
    ];
};


case "MEDIC" : {
    _gear = [
        ["arifle_Mk20_pointer_F","","acc_pointer_IR","",["30Rnd_556x45_Stanag",30],[],""],
        [],
        ["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],
        ["U_I_CombatUniform_shortsleeve",[["FirstAidKit",1],["30Rnd_556x45_Stanag",3,30],["SmokeShell",1,1]]],
        ["V_PlateCarrierIA2_dgtl",[["30Rnd_556x45_Stanag",2,30],["9Rnd_45ACP_Mag",2,8],["SmokeShellGreen",1,1],["SmokeShellOrange",1,1],["SmokeShellPurple",1,1],["Chemlight_green",2,1]]],
        ["I_Fieldpack_oli_Medic",[["Medikit",1],["FirstAidKit",10]]],
        "H_HelmetIA",
        "",
        [],
        ["ItemMap","","TFAR_anprc154","ItemCompass","TFAR_microdagr","NVGoggles_INDEP"]
    ];
};


case "AR" : {
    _gear = [
        ["LMG_Mk200_LP_BI_F","","acc_pointer_IR","",["200Rnd_65x39_cased_Box",200],[],"bipod_03_F_blk"],
        [],
        ["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],
        ["U_I_CombatUniform_shortsleeve",[["FirstAidKit",1],["9Rnd_45ACP_Mag",2,8],["HandGrenade",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1]]],
        ["V_PlateCarrierIA2_dgtl",[["200Rnd_65x39_cased_Box",2,200],["Chemlight_green",2,1]]],
        [],
        "H_HelmetIA_camo",
        "",
        [],
        ["ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch","NVGoggles_INDEP"]
    ];
};


case "RM" : {
    _gear = [
        ["arifle_Mk20_ACO_pointer_F","","acc_pointer_IR","optic_ACO_grn",["30Rnd_556x45_Stanag",30],[],""],
        ["ACE_launch_NLAW_ready_F","","","",["NLAW_F",1],[],""],
        ["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],
        ["U_I_CombatUniform",[["FirstAidKit",1],["30Rnd_556x45_Stanag",3,30],["SmokeShell",1,1]]],
        ["V_PlateCarrierIA2_dgtl",[["30Rnd_556x45_Stanag",2,30],["9Rnd_45ACP_Mag",2,8],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],
        ["I_Fieldpack_oli_LAT",[["NLAW_F",2,1]]],
        "H_HelmetIA",
        "",
        [],
        ["ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch","NVGoggles_INDEP"]
    ];
};
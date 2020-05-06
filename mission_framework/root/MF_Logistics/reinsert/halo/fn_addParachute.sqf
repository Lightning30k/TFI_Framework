/*
 * Author:
 * Kex (based on cobra4v320's AI HALO Jump script)
 *
 * Description:
 * Adds a parachute to the unit then deletes it once the unit is on the ground
 *
 * Arguments:
 * _this select 0: OBJECT - Unit that performs the HALO drop
 *
 * Return Value:
 * void
 *
 * Example:
 * [player] spawn MF_fnc_addParachute
 *
 */

params ["_unit"];

private _backpack_class = backpack _unit;

// If the unit already has a chute
if (backpack _unit != "" and {getText (configfile >> "CfgVehicles" >> backpack _unit >> "backpackSimulation") isEqualTo "ParachuteSteerable"}) then {
    _backpack_class = "";
};

if (_backpack_class != "") then {
    private _container = backpackContainer _unit;
    private _weapon_cargo = getWeaponCargo _container;
    private _magazine_cargo = getMagazineCargo _container;
    private _item_cargo = getItemCargo _container;

    removeBackpack _unit;
    _unit addBackpack "b_parachute";
    private _packHolder = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_collide"];
    _packHolder addBackpackCargoGlobal [_backpack_class, 1];
    waitUntil {animationState _unit == "HaloFreeFall_non" or (!alive _unit)};
    _packHolder attachTo [_unit,[-0.12,-0.02,-.74],"pelvis"];
    [_packHolder, [[0,-1,-0.05],[0,0,-1]]] remoteExecCall ["setVectorDirAndUp", 0, _packHolder];
    waitUntil {animationState _unit == "para_pilot" or (!alive _unit)};
    _packHolder attachTo [vehicle _unit,[-0.07,0.67,-0.13],"pelvis"];
    [_packHolder, [[0,-0.2,-1],[0,1,0]]] remoteExecCall ["setVectorDirAndUp", 0, _packHolder];

    waitUntil {isTouchingGround _unit or (getPos _unit select 2) < 1 or (!alive _unit)};
    removeBackpack _unit;
    deleteVehicle _packHolder;
    _unit addBackpack _backpack_class;
    clearAllItemsFromBackpack _unit;
    _container = backpackContainer _unit;
    {_container addWeaponCargo [_x, (_weapon_cargo select 1) select _forEachIndex]} forEach (_weapon_cargo select 0);
    {_container addMagazineCargo [_x, (_magazine_cargo select 1) select _forEachIndex]} forEach (_magazine_cargo select 0);
    {_container addItemCargo [_x, (_item_cargo select 1) select _forEachIndex]} forEach (_item_cargo select 0);
} else {
    _unit addBackpack "b_parachute";
    waitUntil {isTouchingGround _unit or (getPos _unit select 2) < 1 or (!alive _unit)};
    removeBackpack _unit;
};

#include "script_component.hpp"

/*
    Author:
        Kex (modified by Malbryn)

    Description:
        Add a "Mission Intel" diary record to the players diary

    Arguments:
        0: STRING - Title of the intel
        1: STRING - Intel text
        2: STRING - Name of the player who found the intel

    Example:
        ["Test title", "Test text", name player] call MF_intel_fnc_addIntelToDiary

    Returns:
        void
*/

if (!hasInterface) exitWith {};

params ["_title", "_text", "_finder"];
private ["_diaryId"];

_diaryId = QGVAR(intelDiary);

if !(player diarySubjectExists _diaryId) then {
    player createDiarySubject [_diaryId, "Mission Intel"];
};

player createDiaryRecord [_diaryId, [_title, _text]];
player createDiaryRecord [_diaryId, [_title, "--------------------------------"]];

if (name player == _finder) then {
    openMap [true, false];
};
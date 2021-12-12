#include "script_component.hpp"
/*
 * Author: veteran29
 * Spawns Zombie at given position.
 *
 * Arguments:
 * 0: Objects <ARRAY>
 * 1: All <BOOL>
 *
 * Return Value:
 * Zombie <OBJECT>
 *
 * Example:
 * [getPos player] call afsz_zombies_fnc_spawnZombie
 *
 * Public: Yes
 */

#define DAMAGE_LIMBS 0.35
#define DAMAGE_LIMBS_TORSO 0.45

params [
    ["_position", nil, [[]]],
    ["_class", "", [""]]
];

if (_class == "") then {
    _class = ZOMBIE_CLASSES call BIS_fnc_selectRandomWeighted;
};
TRACE_1("Spawning zombie",_class);

private _zombie = createAgent [_class, _position , [], 0, "CAN_COLLIDE"];
_zombie setDir random 360;
EGVAR(zombie_ai,list) pushBack _zombie;

// in case we would add support for animal zombies
_zombie setVariable ["BIS_fnc_animalBehaviour_disable", true];
// prevent randomization if some other mod class is used as zombie
_zombie setVariable ["BIS_enableRandomization", false];

// disable unwanted AI features
_zombie disableAI "ALL";
{
    _zombie enableAI _x
} forEach [
    "ANIM",
    "MOVE",
    "PATH",
    "TEAMSWITCH"
];

_zombie setSkill 0;
_zombie addRating -1E4;
_zombie setCombatMode "BLUE";
_zombie setBehaviour "CARELESS";
_zombie allowFleeing 0;

_zombie allowSprint true;
_zombie enableStamina false;
_zombie forceSpeed 2;

_zombie setDamage selectRandom [DAMAGE_LIMBS, DAMAGE_LIMBS_TORSO];

private _anim = GVAR(zombieAnimMap) getOrDefault [typeOf _zombie, "babe_rvg_zed_stand_zombie_walker"];
// TODO disabled temporarily
// _zombie playActionNow _anim;

_zombie // return

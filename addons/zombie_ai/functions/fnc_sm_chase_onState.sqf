#include "script_component.hpp"
/*
 * Author: veteran29
 * Function description
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_unit"];

if (CBA_missionTime < _unit getVariable QGVAR(statemachineCheck)) exitWith {};
_unit setVariable [QGVAR(statemachineCheck), CBA_missionTime + 3];

private _victim = _unit getVariable QGVAR(victim);
TRACE_2("Chasing",_unit,_victim);

_unit lookAt _victim;
_unit setDestination [getPosATL _victim, "LEADER PLANNED", true];

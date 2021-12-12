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

#define SEARCH_DIST_IDLE 500

params ["_unit"];

if (CBA_missionTime < _unit getVariable [QGVAR(statemachineCheck), 5]) exitWith {};
_unit setVariable [QGVAR(statemachineCheck), CBA_missionTime + 1];

private _targets = nearestObjects [_unit, ["CAManBase"], SEARCH_DIST_IDLE];
_targets = (_targets select {!(_x isKindOf QGVAR(base))}) - [_unit];
TRACE_2("Targets",_unit,_targets);

if (_targets isEqualTo []) exitWith {};

private _victim = _targets select 0;
_unit setVariable [QGVAR(victim), _victim];
_unit setVariable [QGVAR(victimTimeout), CBA_missionTime + 10];

#include "script_component.hpp"
/*
 * Author: <author>
 * Function description
 *
 * Arguments:
 * 0: Objects <ARRAY>
 * 1: All <BOOL>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_unit"];

if (_unit getVariable [QGVAR(victimCheck), 0] < CBA_missionTime) exitWith {};

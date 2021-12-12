#include "script_component.hpp"
/*
 * Author: veteran29
 * Function description
 *
 * Arguments:
 * 0: Objects <ARRAY>
 * 1: All <BOOL>
 *
 * Return Value:
 * None
 *
 * Example:
 * [[bob, ted], false] call afsz_main_fnc_example
 *
 * Public: No
 */

params ["_unit"];

alive (_unit getVariable [QGVAR(victim), objNull]) // return

#include "script_component.hpp"
/*
 * Author: veteran29
 * Handle statemachine Dead state entered.
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

GVAR(list) = GVAR(list) - [_unit];

nil

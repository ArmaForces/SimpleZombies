#include "script_component.hpp"
ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

GVAR(list) = [];
GVAR(statemachine) = [configFile >> QGVAR(Statemachine)] call CBA_statemachine_fnc_createFromConfig;

ADDON = true;

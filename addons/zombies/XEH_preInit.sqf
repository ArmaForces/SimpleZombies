#include "script_component.hpp"
ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

GVAR(zombieAnimMap) = createHashMapFromArray [
    [QGVAR(walker), "babe_rvg_zed_stand_zombie_walker"],
    [QGVAR(runner), "babe_rvg_zed_stand_zombie_runner"],
    [QGVAR(bolter), "babe_rvg_zed_stand_zombie_bolter"]
];

ADDON = true;

#define COMPONENT zombies
#include "\z\afsz\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_ZOMBIES
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_ZOMBIES
    #define DEBUG_SETTINGS DEBUG_SETTINGS_ZOMBIES
#endif

#include "\z\afsz\addons\main\script_macros.hpp"

#define ZOMBIE_CLASSES [\
    QGVAR(walker), 0.75,\
    QGVAR(runner), 0.25\
]

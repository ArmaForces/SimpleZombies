#define MAINPREFIX z
#define PREFIX afsz

#include "script_version.hpp"

#define VERSION     MAJOR.MINOR
#define VERSION_STR MAJOR.MINOR.PATCH
#define VERSION_AR  MAJOR,MINOR,PATCH

#define REQUIRED_VERSION 2.06

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(AFSZ - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(AFSZ - COMPONENT)
#endif

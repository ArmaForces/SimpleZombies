
class CfgVehicles {
    class Civilian_F;
    class GVAR(base): Civilian_F {
        author = "ArmaForces";
        scope = 1;

        aiBrainType = "";

        identityTypes[] = {
            "rvg_zed_1",
            "rvg_zed_2",
            "rvg_zed_3",
            "rvg_zed_4",
            "rvg_zed_5",
            "rvg_zed_6",
            "rvg_zed_7",
            "rvg_zed_8",
            "rvg_zed_9",
            "rvg_zed_10"
        };
        linkedItems[] = {};
    };
    class GVAR(walker): GVAR(base) {
        displayName = "Zombie Walker";
    };
    class GVAR(runner): GVAR(base) {
        displayName = "Zombie Runner";
    };
};


class GVAR(Statemachine) {
    list = QUOTE(GVAR(list) select {local _x});
    skipNull = 1;

    class Idle {
        onState = QFUNC(sm_idle_onState);

        class Death {
            targetState = "Dead";
            condition = QUOTE(!alive _this);
        };
        class Chase {
            targetState = "Chasing";
            condition = QFUNC(sm_idle_chase_condition);
        };
    };
    class Chasing {
        onState = QFUNC(sm_chase_onState);

        class Death {
            targetState = "Dead";
            condition = QUOTE(!alive _this);
        };
        class Attack {
            targetState = "Attacking";
            condition = QFUNC(sm_chase_attack_condition);
        };
        class Idle {
            targetState = "Idle";
            condition = QFUNC(sm_chase_idle_condition);
        };
    };
    class Attacking {
        onStateEntered = QFUNC(sm_attack_onStateEntered);

        class Death {
            targetState = "Dead";
            condition = QUOTE(!alive _this);
        };
        class Attack {
            targetState = "Attacking";
            condition = QFUNC(sm_attack_attack_condition);
        };
        class Chase {
            targetState = "Chasing";
            condition = QFUNC(sm_attack_chase_condition);
        };
    };
    class Dead {
        // when the unit is killed it's no longer handled by the statemachine
        onStateEntered = QFUNC(sm_dead_onStateEntered);
    };
};

_screen = param[0,objNull];
{
    _screen removeAction _x;
} forEach (_screen getVariable["sga_malpConnectionActionIDs",[] ] );

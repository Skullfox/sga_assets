/*
	Author: Phil aka Skullfox

	Description:
	Init the Autopilot actions and conditions

	Parameter(s):
		0 : Vehicle

*/

_vehicle = param[0,objNull];

[_vehicle] call sga_needleTheaderAutopilot_fnc_autopilot;

_vehicle addAction
[
    "<t color='#FF0000'>[AP]</t>Turn On",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        _target setVariable["sga_needleThreader_apScan",true];
        while {_target getVariable["sga_needleThreader_apScan",false]} do {
            systemChat "Scanning for open Gates";
            _gates = nearestObjects [_target, ["sga_gate_orbital"], 600,true];
            if(count _gates > 0)then{
              _gate = _gates select 0;
              if(_gate in sgaopen)then{
                _i = sgaopen find _gate;
                _name = GateName select _i;
                systemChat format["Autopilot available for %1",_name];
                _target setVariable["sga_gateAssigned",_gate];
              };
            };
            sleep 1;
        };
    },
    [],
    10,
    true,
    true,
    "",
    "(driver _target == player) && alive _target && (_target getVariable['sga_needleThreader_apScan',false] isEqualTo false)",
    5,
    false,
    "",
    ""
];

_vehicle addAction
[
    "<t color='#FF0000'>[AP]</t>Turn off",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _target setVariable["sga_needleThreader_apScan",false];
        for [{_i=0}, {_i<10}, {_i=_i+1}] do
        {
          systemChat " ";
        };
        systemChat "[AP] Offline"
    },
    [],
    10,
    true,
    true,
    "",
    "(driver _target == player) && alive _target && _target getVariable['sga_needleThreader_apScan',false] isEqualTo true",
    5,
    false,
    "",
    ""
];

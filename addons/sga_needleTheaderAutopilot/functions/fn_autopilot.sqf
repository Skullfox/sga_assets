/*
	Author: Phil aka Skullfox

	Description:
	Adds the Autopilot Action

	Parameter(s):
		0 : Vehicle

*/


_vehicle = param[0,objNull];

[
	_vehicle,
	"Activate Autopilot",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"[_target ] call sga_needleTheaderAutopilot_fnc_canAutopilot",
	"true",
	{},
	{},
	{
    params["_ship", "_caller", "_actionId", "_arguments"];

		 	playSound3D ["A3\Missions_F_Bootcamp\data\sounds\assemble_target.wss", _ship,false,getposasl _ship,4];

			_ship setVariable["sga_needleThreader_apScan",false];

      _ship allowDamage false;
      _gate = _ship getVariable["sga_gateAssigned",false];
      if(_gate isEqualTo false)exitWith{};
      {
          _x allowDamage false;
      } forEach crew _ship;
      _anchors = [];

      for [{_i=0}, {_i < 1.025}, {_i=_i+0.005}] do
      {
        _v = [[ ((getposasl _ship ) select 0 ) ,((getposasl _ship ) select 1),((getposasl _ship) select 2) -0.5] ,[ ((getposasl _gate ) select 0 ) ,((getposasl _gate ) select 1),((getposasl _gate) select 2) + 2] ,_i] call BIS_fnc_lerpVector;
        _anchors pushBack _v;
      };

      {
        if(_ship getVariable["sga_intransit",false])exitWith{
					[_ship]spawn{
						sleep 2;
						{
								_x allowDamage true;
						} forEach crew (_this select 0);
						(_this select 0) allowDamage true;
					};
				};

        if( (_gate in sgaopen) isEqualTo false )exitWith{Hint "Autopilot Off"};
        _ship setDir getdir _gate;
        _ship setposasl _x;
        sleep 0.05;
      }foreach _anchors;
  },
	{},
	[],
	1,
	10,
	false,
	false
] call BIS_fnc_holdActionAdd;

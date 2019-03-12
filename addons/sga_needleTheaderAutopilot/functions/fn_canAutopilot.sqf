/*
	Author: Phil aka Skullfox

	Description:
	Check if the Autopilot can be activated

	Parameter(s):
		0 : Vehicle

*/

_vehicle = param[0,objNull];

_gate = _vehicle getVariable["sga_gateAssigned",false];
if(_gate isEqualTo false)exitWith{false};
//false gate = open
if( (_gate in sgaopen) isEqualTo false)exitWith{false};
if(_gate getvariable ["iris_Status",true])exitWith{false};
if((getposASl _vehicle) select 2 > 150)exitWith{false};

if(_vehicle getRelDir _gate < 20 ||  _vehicle getRelDir _gate > 340)then{
  true
}else{
  false
};

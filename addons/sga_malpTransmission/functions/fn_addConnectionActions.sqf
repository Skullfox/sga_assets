_screen = param[0,objNull];
_malp = param[1,objNull];


_actionID = _screen addaction[format["Connect to Malp @%1|%2", floor (getpos _malp select 0),floor (getpos _malp select 1)],{
  params ["_screen", "_caller", "_actionId", "_arguments"];
  _malp = _arguments select 0;

  [_screen,_malp]remoteExec["sga_malpTransmission_fnc_switchTransmission",0];

},[_malp],
9,
true,
true,
"",
"true",
50,
false,
"",
""
];

_actionIDs = _screen getVariable["sga_malpConnectionActionIDs",[]];
_screen setVariable ["sga_malpConnectionActionIDs", _actionIDs + [_actionID]];

_screen = param[0,objNull];

if(!local _screen)exitWith{};
_screen setObjectTextureGlobal[0, "\sga_malpTransmission\textures\sgc_wallpaper.paa"];

[_screen,
["Search Malp`s",{

  params ["_screen", "_caller", "_actionId", "_arguments"];

  _malps = [_screen] call sga_malpTransmission_fnc_searchMalps;
  if(_malps isEqualTo false)exitWith{hint"No Malp in range"};

  [_screen] call sga_malpTransmission_fnc_removeConnectionActions;

  {
        [_screen,_x] call sga_malpTransmission_fnc_addConnectionActions;
  } forEach _malps;

},[],
10,
true,
true,
"",
"alive _target",
5,
false,
"",
""]]remoteExec["addaction",0];


{
  _mode = _x select 0;
  _text = _x select 1;

  [_screen,[_text,{

    params ["_screen", "_caller", "_actionId", "_arguments"];

    _mode = _arguments select 0;
    _pipCam = _screen getVariable["sga_malpTransmissionStream",0];
    [_pipcam,[_mode] ]remoteExec["setPiPEffect",0,true];

  },[_mode],
  8,
  true,
  true,
  "",
  "_target getVariable['sga_malpTransmissionActive',false] && alive _target",
  5,
  false,
  "",
  ""]]remoteExec["addaction",0,true];

}foreach [[0,"Normal"],[1,"NVG"],[2,"Thermal"],[7,"Thermal I"]];


[_screen,["Disconnect",{

  params ["_screen", "_caller", "_actionId", "_arguments"];

  _screen setObjectTextureGlobal[0, "\sga_malpTransmission\textures\sgc_wallpaper.paa"];
  _screen setVariable["sga_malpTransmissionActive",false,false];

},[_mode],
10,
true,
true,
"",
"_target getVariable['sga_malpTransmissionActive',false] && alive _target",
5,
false,
"",
""]]remoteExec["addaction",0,true];

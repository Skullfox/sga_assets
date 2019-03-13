_screen = param[0,objNull];
_malp = param[1,objNull];

_pipcam = "sga_malpTransmission";
_screen setVariable["sga_malpTransmissionStream",_pipcam];
_v = format ["#(argb,512,512,1)r2t(%1,1)", _pipcam];
_screen setObjectTexture[0, _v]; // this line gives the error

/* create camera and stream to render surface */

_lastCam = _malp getVariable["sga_malpTransmissionCam",objNull];
deleteVehicle _lastCam;

_cam = "camera" camCreate [0,0,0];

_cam cameraEffect ["Terminate", "Back", _pipcam]; // to reset cam
_cam cameraEffect ["Internal", "Back", _pipcam];
_cam attachTo [_malp,[0,0.9,1.85]];
_cam camSetFov 1;

_malp setVariable["sga_malpTransmissionCam",_cam];
_malp setVariable["sga_malpTransmissionCam",_cam];

_mode = _screen getVariable["sga_malpTransmissionMode",0];
[_pipcam,[_mode] ]remoteExec["setPiPEffect",0,true];

_screen setVariable ["sga_malpTransmissionActive",true];

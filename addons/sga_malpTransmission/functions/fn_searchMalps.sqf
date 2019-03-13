_object = param[0,objNull];
_malps = nearestObjects [position _object,["SGA_MALP"],10000];
if(count _malps == 0)then{
  false
}else{
  _malps
};

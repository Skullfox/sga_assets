player addEventHandler ["Respawn",{

  _bodyNew = _this select 0;
  _bodyOld = _this select 1;

  [] call sga_backpack_zip_fnc_ambient_bag;

}];

player addEventHandler ["InventoryOpened", {

  if(backpack player != "")then{
      [(_this select 0),"sga_backpack_zip_bagOpen"]remoteExec ["say3D",0];
  };

}];

player addEventHandler ["InventoryClosed", {

  if(backpack player != "")then{
      [(_this select 0),"sga_backpack_zip_bagClose"]remoteExec ["say3D",0];
  };

}];

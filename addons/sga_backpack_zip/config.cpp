#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		units[] = {};
		weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_xeh","sga_sgc_base"};
	};
};

class CfgFunctions{

	class ADDON{
		class functions{
			file = "\sga_backpack_zip\functions";
			class init{postInit = 1;};
			class ambientBag{};
		};
	};
};

class CfgSounds{
	sounds[] = {sga_backpack_zip_bagOpen,sga_backpack_zip_bagClose};

	class sga_backpack_zip_bagOpen{
		name = "sga_backpack_zip_bagOpen";
		sound[] = {"\sga_backpack_zip\sounds\bagopen.ogg", 2, 1};
		titles[] = {};
	};

	class sga_backpack_zip_bagClose{
		name = "sga_backpack_zip_bagClose";
		sound[] = {"\sga_backpack_zip\sounds\bagclose.ogg", 2, 1};
		titles[] = {};
	};

};

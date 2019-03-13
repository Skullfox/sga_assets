#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		units[] = {};
		weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {"sga_sgc_base","cba_main_a3"};
	};
};

class CfgFunctions
{
	class sga_malpTransmission
	{
		class malpTransmission
		{
			file = "\sga_malpTransmission\functions";
      class init{};
			class searchMalps{};
			class removeConnectionActions{};
			class addConnectionActions{};
			class switchTransmission{};
		};

	};
};


class Extended_InitPost_EventHandlers
{
    class Land_TripodScreen_01_large_F
    {
        ADDON ="(_this select 0) call sga_malpTransmission_fnc_init";
    };

};

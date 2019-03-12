#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		units[] = {};
		weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {"sga_sgc_base","cba_a3"};
	};
};

class CfgFunctions
{
	class ADDON
	{
		class COMPONENT
		{
			file="\sga_needleTheaderAutopilot\functions";
			class initAutopilot{};
			class autopilot{};
			class canAutopilot{};
		};
	};
};

class Extended_Init_Eventhandlers
{
    class sga_needlethreader_normal
    {
        autopilot ="(_this select 0) call sga_needleThreader_fnc_initAutopilot";
    };

};

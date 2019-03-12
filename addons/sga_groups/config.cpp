#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		units[] = {};
		weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {"sga_sgc_base"};
	};
};
class CfgGroups {
  #include "goauld_groups.hpp"
  #include "jaffa_groups.hpp"
  #include "sg_groups.hpp"
};

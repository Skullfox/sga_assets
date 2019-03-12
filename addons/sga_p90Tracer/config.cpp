#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		units[] = {};
		weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {
				"A3_Weapons_F_Mod",
				"A3_Data_F_Mod",
				"A3_Sounds_F_Mark",
				"A3_Weapons_F",
			};
		ammo[]={
			"B_570x28_Ball",
			"B_570x28_Ball_Tracer_red"
			};
	};
};

class CowsSlot;
class PointerSlot;
class SlotInfo;
class MuzzleSlot;

class CfgWeapons{

	class Rifle_Base_F;
	class SMG_03_TR_BASE: Rifle_Base_F{
		magazines[] += {"50Rnd_570x28_SMG_03_Tracer_red"};
	};

};

class CfgAmmo{
	class BulletBase;
	class B_570x28_Ball: BulletBase{
	};

	class B_570x28_Ball_Tracer_red : B_570x28_Ball{
		tracerScale = 1;
		tracerStartTime = 0.05;
		tracerEndTime = 1;
		model = "\A3\Weapons_f\Data\bullettracer\tracer_red";
		tracerColor[] = {0.7,0.7,0.5,0.04};
		tracerColorR[] = {0.7,0.7,0.5,0.04};
	};
};

class CfgMagazines{
	class CA_Magazine;

	class 50Rnd_570x28_SMG_03: CA_Magazine{
		displayName="5.7mm 50Rnd Mag";
		descriptionShort="5.7mm Rounds: 50";
	};

	class 50Rnd_570x28_SMG_03_Tracer_red: 50Rnd_570x28_SMG_03{
		nvgOnly = 0;
		author = "Skullfox";
		displayName = "5.7mm 50Rnd Tracer (Red) Mag";
		ammo = "B_570x28_Ball_Tracer_red";
		tracersEvery = 2;
		descriptionShort = "Caliber: 5.7mm Tracers - Red";
		displaynameshort = "Tracer";
		lastRoundsTracer = 4;
		picture = "\a3\weapons_f_mod\data\m_adr97mag_ca.paa";
	}
};

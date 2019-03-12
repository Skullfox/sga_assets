[
    "fox_backpack_zip_sound", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Plays ZIP sound global", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "[FOX] Backpack", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    TRUE, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_setting"];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

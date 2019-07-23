﻿/**
* Description:
* setup available beam locations with their respective level
* setup heavy vehicle classnames
* setup beam trigger variable names
*
* Author:
* Lord & James
*
* Arguments:
* None
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called only once by XEH_PreInit.sqf at mission start
*
* Global:
* no 
*
* Sideeffects:
* Define global variables
* GVAR(locations_west), GVAR(locations_east), GVAR(heavy_vehicles), GVAR(beam_trigger) 
*
* Example:
* [parameter] call EFUNC(fnc_setup_beamOrte.sqf);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */


// Position=[0, 0, 0]
// Name = "ABC"
// Stufe = -1-0-1-2-3 // -1 nach Waffenruhe wählbar, 0 Nicht Wählbar,  1 Inf,  2 inf + leichte Fahrzeuge,  3 inf + Schwere Fahrzeuge
//
// Bsp [[Position], Name, Stufe], 


//West
GVAR(locations_west) =
[
    [[3723,0,17576], "Landung_alpha", -1],
    [[9470,0,8942], "Landung_bravo", 0],
    [[9863,0,9728], "Landung_charly", 0],
    [[3003,0,18176], "Marine Basis", -1],
    [[8570,0,7349], "FOB", 0],

    [[12538,31.9272,16319], "1 - Lakka - Fabrik", 0],
    [[12261.611,24.580132,15468.185], "1 - Lakka - Zentrum", 0],
    [[13009.863,23.24024,14861.646], "1 - Lakka - Stavros", 0],    

    [[16660.316,32.487659,19089.379], "2 - Athira - Militär", 0],    
    [[14165.508,27.977919,18659.793], "2 - Athira - Stadt", 0],            
    [[14430.449,39.187088,18884.332], "2 - Athira - Industrie", 0],    

    [[16737.273,17.730064,16132.73], "3 - Telos - Anthrakia", 0],
    [[16295.838,16.738787,17099.875], "3 - Telos - Stadt", 0],
    [[15877.67,15.085531,16974.648], "3 - Telos - Militär", 0],    

    [[12733.035,11.836403,14372.348], "4 - Neochori - Stadt", 0],        
    [[11969.951,14.046638,14291.693], "4 - Neochori - Landhaus", 0],
    [[11023.203,39.982777,14531.577], "4 - Neochori - Alikampos", 0],
    
    [[10385.715,80.255913,17164.092], "5 - Koroni - Orino", 0],
    [[10985.872,59.443657,17920.361], "5 - Koroni - VTOL-Absturz", 0],
    [[11751.703,50.946453,18206.74], "5 - Koroni - Dorf", 0],   
	

    [[12718.259,46.086807,19714.48], "6 - Frini - Ifestiona", 0],    
    [[14163.192,77.935982,21256.35], "6 - Frini - Militär", 0],    
    [[14651.827,46.015129,20746.74], "6 - Frini - Kirche", 0],

    [[18120.027,19.071079,15093.02], "7 - Charkia - Zentrum", 0],
    [[18871.184,27.950462,16450.836], "7 - Charkia - Rodopoli", 0],
    [[18221.91,23.064184,17296.074], "7 - Charkia - Alte Kommandatur", 0],

    [[17068.695,14.694515,12525.737], "8 - Pyrgos - Zentrum", 0],    
    [[17417.117,14.183782,13175.799], "8 - Pyrgos - Militär", 0],    
    [[19577.238,37.416702,13293.302], "8 - Pyrgos - Dorida", 0],
	
    [[10956.118,28.231323,13339.095], "9 - Agios Dionysios - Poliakko", 0],
    [[9523.1953,128.22626,15122.915], "9 - Agios Dionysios - Fabrik", 0],
    [[9227.1748,121.45984,15834.313], "9 - Agios Dionysios - Zentrum", 0],
 
    [[20941.775,44.582573,17101.422], "10 - Paros - Zentrum", 0],    
    [[21351.789,21.15097,16375.116], "10 - Paros - Kalochori", 0],
    [[22599.023,13.503523,16456.139], "10 - Paros - Handelsposten", 0],

    [[21732.85,14.710834,14126.517], "11 - Sumpf - Farm", 0], 
    [[20871.459,2.1758637,14547.363], "11 - Sumpf - Krokodilfarm", 0], 
    [[18369.736,21.488216,14258.045], "11 - Sumpf - Mine", 0]
];

//East
GVAR(locations_east) =
[
    [[7282,0,10998], "Landung_alpha", -1],
    [[12922,0,7989], "Landung_bravo", 0],
    [[12664,0,9651], "Landung_charly", 0],
    [[7147,0,10947], "Marine Basis", -1],
    [[13769,0,6378], "FOB", 0],
	
    [[21378.822,36.758911,8976.4902], "1 - Panagia - Umspannwerk", 0],        
    [[20432.508,39.498234,8917.2764], "1 - Panagia - Stadt", 0],    
    [[19304.264,188.92511,9650.2051], "1 - Panagia - Antenne", 0],
	
    [[17047.197,23.779554,11319.724], "2 - Chalkeia - Steinbruch", 0],    
    [[21552.613,14.999241,10965.695], "2 - Chalkeia - Ausgrabungsstätte", 0],    
    [[20279.32,66.769104,11592.766], "2 - Chalkeia - Zentrum", 0],

    [[20154.674,20.015493,19991.996], "3 - Ioannina - Ausgrabungsstätte", 0],        
    [[21033.391,17.245554,19274.801], "3 - Ioannina - Militärposten", 0],    
    [[22178.254,17.411903,18389.48], "3 - Ioannina - Zollstation", 0],

    [[25334.148,10.723906,20351.393], "4 - Delfinaki - Kraftwerk", 0],
    [[23507.813,92.002312,21134.75], "4 - Delfinaki - Militär", 0],
    [[21900.697,23.09441,21013.383], "4 - Delfinaki - Hotelanlage", 0],
    
    [[9679.2852,4.1055808,22269.486], "5 - Abdera - Krya Nera", 0],    
    [[12202.975,2.3049662,22949.342], "5 - Abdera - Tonos Bay", 0],
    [[9407.8926,118.60757,20303.814], "5 - Abdera - Zentrum", 0],
	
    [[10279.33,131.39256,19127.998], "6 - Galati - Zentrum", 0],
    [[11457.833,136.5833,20568.986], "6 - Galati - Steinbruch", 0],
    [[14163.031,60.523945,22131.926], "6 - Galati - Jagdhaus", 0],

    [[8633.3174,181.03595,18283.008], "7 - Syrta - Zentrum", 0],    
    [[5444.7119,76.440422,17925.609], "7 - Syrta - Verladestation", 0],        
    [[3919.8413,9.3780146,17309.154], "7 - Syrta - Agios Konstantinos", 0],
    
    [[7111.814,111.81547,16434.742], "8 - Kore - Zentrum", 0],    
    [[6788.9038,51.23349,15824.688], "8 - Kore - Müllkippe", 0], 
    [[4871.9341,79.06218,16144.493], "8 - Kore - Negades", 0],     

    [[3378.1877,27.699886,14338.034], "9 - Aggelochori - Villenviertel", 0],
    [[6432.2759,118.61,13770.329], "9 - Aggelochori - Schaffarm", 0],
    [[3753.0562,14.725172,13572.595], "9 - Aggelochori - Zentrum", 0],
	

    [[7493.9761,27.520681,12177.818], "10 - Edessa - Farm", 0],
    [[7114.9277,6.1351104,11061.224], "10 - Edessa - Strand", 0],
    [[8281.8408,15.422586,10903.659], "10 - Edessa - Kraftwerk", 0],

    [[10066.178,20.615116,11325.61], "11 - Zaros - Villa", 0],
    [[9046.04,22.475744,11960.659], "11 - Zaros - Zentrum", 0],
    [[10673.085,17.257212,12266.678], "11 - Zaros - Therisa", 0]

];

GVAR(heavy_vehicles) = 
[
    //Vanilla
    "OPT4_O_APC_Wheeled_02_rcws_F",                 // MSE-3 Marid
    "OPT_O_APC_Wheeled_03_cannon_light_F",          // AFV-4 Gorgon (Leicht)
    "OPT4_O_APC_Wheeled_03_cannon_F",               // AFV-4 Gorgon
    "OPT4_O_APC_Tracked_02_AA_F",                   // ZSU-39 Tigris
    "OPT_O_APC_Tracked_02_cannon_light_F",          // BTR-K Kamysh
    "OPT4_O_APC_Tracked_02_cannon_F",               // BTR-K Kamysh (Titan)
    "OPT4_O_MBT_02_cannon_F",                       // T-100 Varsuk
    "OPT4_O_MBT_02_arty_F",                         // 2S9 Sochor
	"OPT4_O_MRAP_02_gmg_F",
	"OPT4_O_LSV_02_AT_F",
            
    "OPT4_B_APC_Tracked_01_rcws_F",                 // IFV-6c Panther
    "OPT_B_APC_Wheeled_01_cannon_light_F",          // AMV-7 Marshall (Leicht)
    "OPT4_B_APC_Wheeled_01_cannon_F",               // AMV-7 Marshall    
    "OPT4_B_APC_Tracked_01_AA_F",                   // IFV-6a Cheetah
    "OPT4_B_APC_tracked_03_cannon_F",               // FV-720 Mora    
    "OPT4_B_MBT_01_cannon_F",                       // M2A4 Slammer
    "OPT4_B_MBT_01_TUSK_F",                         // M2A4 SlammerUp
    "OPT_B_MBT_03_cannon_F",                        // MBT-52 Kuma, fliegt raus
    "OPT_B_MBT_01_Arty_F",                          // M4 Scorcher
    "OPT4_B_MBT_01_mlrs_F",                         // M4 Scorcher    
    "OPT4_B_MBT_01_arty_F",                         // M4 Scorcher
    "OPT_B_MBT_01_mlrs_F",                           // M5 Sandstorm    
	"OPT4_B_MRAP_01_gmg_F",
	"OPT4_B_LSV_01_AT_F"
 ];


/* List of triggers in Editor for beam functionality */
GVAR(beam_trigger) = 
[
    nato_trigger_beam,
    nato_trigger_beam_1,
    csat_trigger_beam_4,
    csat_trigger_beam_3,
	csat_trigger_beam_5,
	csat_trigger_beam_6
];

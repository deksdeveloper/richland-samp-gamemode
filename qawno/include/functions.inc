/* functions.inc - Last Updated 28th December 2017.

This Include adds wide range of SA-MP functions which gives other script developer extra control over their player.
You're free to use this code in your script. However, you're not allowed to distribute this code without my permission.

Current Natives -

1. IsPlayerAiming(playerid, weaponid); - returns true if a player is aiming. (Includes zoom-in weapons.)
2. IsPlayerSwimming(playerid); - returns true if a player is swimming. (Regardless of the water body.)
3. IsPlayerSkydiving(playerid); - returns true if a player is skydiving.
4. IsPlayerParachuting(playerid); - returns true if a player is parachuting.
5. IsPlayerPassengerAiming(playerid); - returns true if a player is aiming a weapon as passenger of vehicle.
6. IsPlayerInKitchen(playerid); - returns true if player is in Kitchen. (Default Interiors.)
7. IsPlayerNearVending(playerid, type); - returns true if player is near Vending Machine. (Default locations.)
8. IsPlayerNearPump(playerid); - returns true if a player is near Fuel Pump. (Default Locations.)
8. IsPlayerCarSurfing(playerid) - returns true if player is car surfing.
9. IsPlayerNearPlayer(playerid, targetid, float:radius) - returns true if player is near another player in given radius.
10. IsPlayerNearVehicle(playerid, vehicleid, float:radius) - returns true if player is near specified vehicle in given radius.
11. IsPlayerNearDynamicObject(playerid, objectid, float:radius) - returns true if player is near specified dynamic object id in given radius
12. IsPlayerRidingTrain(playerid); - returns true if player is riding a train.
14. IsPlayerSpawned(playerid); - returns true if player is spawned.
*/

#tryinclude <a_samp>
#include <streamer>

#if defined _included_functions
	#endinput
#endif

#define _included_functions

#define VENDING_TYPE_SPRUNK 0
#define VENDING_TYPE_CANDY  1

enum VendingEnum
{
	Type,
	Float: vX,
	Float: vY,
	Float: vZ
};

enum FuelPumpEnum
{
	Float: fuelX,
	Float: fuelY,
	Float: fuelZ
};

enum KitchenEnum
{
	Float: MiniX,
	Float: MiniY,
	Float: MaxiX,
	Float: MaxiY,
	InteriorID
};

static const VendingArray[][VendingEnum] =
{

     	    {VENDING_TYPE_SPRUNK, 2326.0273, -1645.9480, 14.8270},
	    {VENDING_TYPE_SPRUNK, 2060.1038, -1898.4542, 13.5538},
	    {VENDING_TYPE_SPRUNK, 1729.8389, -1943.8608, 13.5687},
	    {VENDING_TYPE_SPRUNK, 1929.5480, -1772.3799, 13.5469},
	    {VENDING_TYPE_SPRUNK, 1788.3971, -1369.2784, 15.7578},
	    {VENDING_TYPE_SPRUNK, 2352.9934, -1357.0977, 24.3984},
	    {VENDING_TYPE_SPRUNK, 1153.9095, -1460.9143, 15.7969},
	    {VENDING_TYPE_SPRUNK, 200.2008, -107.6411, 1.5513},
	    {VENDING_TYPE_SPRUNK, 1278.5946, 372.2171, 19.5547},
	    {VENDING_TYPE_SPRUNK, 2320.0242, 2532.0378, 10.8203},
	    {VENDING_TYPE_SPRUNK, 2086.5876, 2071.3574, 11.0579},
	    {VENDING_TYPE_SPRUNK, 1519.3347, 1055.2349, 10.8203},
	    {VENDING_TYPE_SPRUNK, 2503.1370, 1244.5089, 10.8203},
	    {VENDING_TYPE_SPRUNK, 373.8246, -178.9297, 1000.6328},
	    {VENDING_TYPE_SPRUNK, 2575.9084, -1284.4164, 1060.9844},
	    {VENDING_TYPE_SPRUNK, 495.9450, -23.5309, 1000.6797},
	    {VENDING_TYPE_SPRUNK, 501.8352, -2.2189, 1000.6797},
	    {VENDING_TYPE_SPRUNK, 2224.4141, -1153.4738, 1025.7969},
	    {VENDING_TYPE_SPRUNK, 2156.6990, 1606.7858, 999.9718},
	    {VENDING_TYPE_SPRUNK, 2209.1143, 1607.1713, 999.9691},
	    {VENDING_TYPE_SPRUNK, 2222.9924, 1606.8201, 999.9758},
	    {VENDING_TYPE_SPRUNK, -14.7329, 1176.1732, 19.5634},
	    {VENDING_TYPE_SPRUNK, -862.8334, 1537.4231, 22.5870},
	    {VENDING_TYPE_SPRUNK, -252.9273, 2597.9426, 62.8582},
	    {VENDING_TYPE_SPRUNK, -2419.5483, 985.9162, 45.2969},
	    {VENDING_TYPE_SPRUNK, -2419.5837, 984.5789, 45.2969},
	    {VENDING_TYPE_SPRUNK, -1349.3037, 492.3072, 11.1953},
	    {VENDING_TYPE_SPRUNK, -1981.6035, 142.6650, 27.6875},
	    {VENDING_TYPE_SPRUNK, -2005.6317, -490.8682, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2034.4124, -490.8690, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2063.2695, -490.8681, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2092.0920, -490.8683, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2119.7566, -423.4371, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2119.4058, -422.2168, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2097.2969, -397.5224, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2068.5955, -397.5209, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2039.8862, -397.5221, 35.5313},
	    {VENDING_TYPE_SPRUNK, -2011.1857, -397.5218, 35.5313},
	    {VENDING_TYPE_SPRUNK, -32.5050, -185.9060, 1003.5469},
	    {VENDING_TYPE_SPRUNK, -16.1550, -90.8514, 1003.5469},
	    {VENDING_TYPE_SPRUNK, -15.1533, -139.4374, 1003.5469},
	    {VENDING_TYPE_SPRUNK, -35.7115, -139.4262, 1003.5469},
            {VENDING_TYPE_SPRUNK, -19.0527, -57.0465, 1003.5469},
            {VENDING_TYPE_CANDY,  -75.2803, 1227.9558, 19.7359},
	    {VENDING_TYPE_CANDY,  -252.9929, 2599.7952, 62.8582},
	    {VENDING_TYPE_CANDY,  -1455.1244, 2592.4136, 55.8359},
	    {VENDING_TYPE_CANDY,  -1349.3669, 493.8326, 11.1953},
	    {VENDING_TYPE_CANDY,  -2229.1858, 287.1634, 35.3203},
	    {VENDING_TYPE_CANDY,  -33.9020, -186.0259, 1003.5469},
	    {VENDING_TYPE_CANDY,  -17.5500, -90.9689, 1003.5469},
	    {VENDING_TYPE_CANDY,  -16.4742, -139.5535, 1003.5469},
	    {VENDING_TYPE_CANDY,  -36.1270, -57.1352, 1003.5469},
	    {VENDING_TYPE_CANDY,  1634.0918, -2238.2810, 13.5078},
	    {VENDING_TYPE_CANDY,  2480.8667, -1958.5234, 13.5830},
	    {VENDING_TYPE_CANDY,  2140.2676, -1161.4753, 23.9922},
	    {VENDING_TYPE_CANDY,  2153.8462, -1015.7134, 62.8837},
	    {VENDING_TYPE_CANDY,  662.4010, -551.4146, 16.3359},
	    {VENDING_TYPE_CANDY,  2271.7383, -77.2105, 26.5812},
	    {VENDING_TYPE_CANDY,  2845.7246, 1294.2957, 11.3906},
	    {VENDING_TYPE_CANDY,  1398.8699, 2223.3665, 11.0234},
	    {VENDING_TYPE_CANDY,  1659.4425, 1722.1097, 10.8281},
	    {VENDING_TYPE_CANDY,  2647.6428, 1128.9147, 11.1797},
	    {VENDING_TYPE_CANDY,  374.8246, 188.2364, 1008.3893},
	    {VENDING_TYPE_CANDY,  361.5366, 159.3573, 1008.3828},
	    {VENDING_TYPE_CANDY,  351.6461, 206.0936, 1008.3828},
	    {VENDING_TYPE_CANDY,  371.5602, 177.7127, 1019.9844},
	    {VENDING_TYPE_CANDY,  331.9078, 177.7589, 1019.9912},
	    {VENDING_TYPE_CANDY,  330.6430, 177.7591, 1019.9912},
	    {VENDING_TYPE_CANDY,  378.2992, -178.8477, 1000.6328},
	    {VENDING_TYPE_CANDY,  316.2407, -140.3572, 999.6016},
	    {VENDING_TYPE_CANDY,  500.6049, -2.1070, 1000.6797},
	    {VENDING_TYPE_CANDY,  2156.5854, 1607.8103, 999.9692},
	    {VENDING_TYPE_CANDY,  2202.4285, 1617.7483, 999.9766},
	    {VENDING_TYPE_CANDY,  2209.2668, 1620.4711, 999.9827},
	    {VENDING_TYPE_CANDY,  2223.1074, 1602.5835, 999.9734}
};

static const FuelPumpArray[][FuelPumpEnum] =
{
        {2114.909912, 925.507995, 11.2578},
	{2109.050048, 925.507995, 11.2578},
	{2109.050048, 914.718994, 11.2578},
	{2114.909912, 914.718994, 11.2578},
	{2120.820068, 925.507995, 11.2578},
	{2120.820068, 914.718994, 11.2578},
	{2634.639892, 1100.949951, 11.25},
	{2639.879882, 1100.95996, 11.25},
	{2645.25, 1100.95996, 11.25},
	{2639.879882, 1111.75, 11.25},
	{2634.639892, 1111.75, 11.25},
	{2645.25, 1111.75, 11.25},
	{2141.669921, 2753.320068, 11.2734},
	{2141.669921, 2742.520019, 11.2734},
	{2147.530029, 2753.320068, 11.2734},
	{2147.530029, 2742.520019, 11.2734},
	{2153.310058, 2753.320068, 11.2734},
	{2153.310058, 2742.520019, 11.2734},
	{2196.899902, 2480.330078, 11.3125},
	{2196.899902, 2470.25, 11.3125},
	{2196.899902, 2474.689941, 11.3125},
	{2207.699951, 2480.330078, 11.3125},
	{2207.699951, 2470.25, 11.3125},
	{2207.699951, 2474.689941, 11.3125},
	{1590.349975, 2193.70996, 11.3125},
	{1596.130004, 2193.70996, 11.3125},
	{1602.0, 2193.70996,	11.3125},
	{1596.130004, 2204.5, 11.3125},
	{1602.0, 2204.5, 11.3125},
	{1590.349975, 2204.5, 11.3125},
	{624.046997, 1677.599975, 6.179687},
	{603.484008, 1707.22998, 6.179687},
	{606.89801, 1702.21997, 6.179687},
	{610.25, 1697.270019, 6.179687},
	{613.718994, 1692.270019, 6.179687},
	{617.125, 1687.449951, 6.179687},
	{620.531005, 1682.45996, 6.179687},
	{655.664001, -571.210998, 15.359396},
	{655.664001, -569.601989, 15.359396},
	{655.664001, -558.929992, 15.359396},
	{655.664001, -560.546997, 15.359396},
	{1378.95996, 461.039001, 19.3281},
	{1380.630004, 460.27301,	19.3281},
	{1385.079956, 458.296997, 19.3281},
	{1383.400024, 459.070007, 19.3281},
	{-1477.660034, 1859.72998, 31.820299},
	{-1464.939941, 1860.560058, 31.820299},
	{-1477.849975, 1867.310058, 31.820299},
	{-1465.47998, 1868.270019, 31.820299},
	{-1329.199951, 2669.280029, 49.453098},
	{-1328.589965, 2674.70996, 49.453098},
	{-1327.800048, 2680.129882, 49.453098},
	{-1327.030029, 2685.590087, 49.453098},
	{-1610.619995, -2721.0, 47.929698},
	{-1607.300048, -2716.600097,	47.929698},
	{-1603.98999, -2712.199951, 47.929698},
	{-1600.670043, -2707.800048,	47.929698},
	{-2246.699951, -2559.70996, 31.0625},
	{-2241.71997, -2562.290039, 31.0625},
	{-1685.96997, 409.640991, 6.38281},
	{-1679.359985, 403.054992, 6.38281},
	{-1681.829956, 413.781005, 6.38281},
	{-1675.21997, 407.195007, 6.38281},
	{-1676.520019, 419.117004, 6.38281},
	{-1669.910034, 412.531005, 6.38281},
	{-1672.130004, 423.5, 6.38281},
	{-1665.520019, 416.914001, 6.38281},
	{-2410.800048, 970.851989, 44.484401},
	{-2410.800048, 976.187988, 44.484401},
	{-2410.800048, 981.52301, 44.484401},
	{-97.070297,	-1173.75, 3.03125},
	{-85.242202,	-1165.030029, 2.63281},
	{-90.140602,	-1176.630004, 2.63281},
	{1941.660034, -1778.449951, 14.1406},
	{1941.660034, -1774.310058, 14.1406},
	{1941.660034, -1771.339965, 14.1406},
	{1941.660034, -1767.290039, 14.1406}
};

static const KitchenArray[][KitchenEnum] =
{
	{2321.2590, -1178.3997, 2330.0488, -1171.6429, 5},
	{2331.8948, -1143.2539, 2336.7620, -1134.9282, 12},
	{328.0461, 1118.6470, 334.5276, 1125.9529, 5},
	{2813.8545, -1173.8119, 2820.2859, -1165.2816, 8},
	{2524.1309, -1677.5143, 2528.0942, -1671.8875, 1},
	{2447.2698, -1696.3843, 2452.6807,-1685.2969, 2},
	{1275.3597, -823.5325, 1284.4462, -808.2328, 5},
	{2492.1943, -1712.3373, 2502.0164, -1706.7640, 3},
	{2248.1133,-1214.1265, 2253.5483, -1205.8267, 10},
	{2312.2104, -1014.7668, 2317.4038, -1007.5750, 9},
	{238.3266, 1186.5382, 245.7194, 1195.9844, 3},
	{228.3239, 1242.9048, 233.8900, 1249.0233, 2},
	{217.4082, 1292.0141, 220.8822, 1293.7098, 1},
	{233.5455,1116.1791, 240.1445,1119.6444, 5},
	{259.1785, 1244.1892, 264.1819, 1249.3033, 9},
	{77.4518, 1334.2335, 82.7514, 1341.5323, 9},
	{-52.5171, 1397.3737, -45.2178, 1402.5249, 8},
	{2367.4126, -1134.9651, 2374.6577, -1130.2810, 8},
	{-290.6573, 1475.6393, -283.3589, 1480.9377, 15},
	{-62.0689, 1359.6063, -56.9183, 1366.9070, 6},
	{222.3436, 1079.6068, 228.9904, 1086.0787, 6},
	{25.0063, 1403.3411, 32.2513, 1408.6420, 5}

};
stock static IsPlayerInArea(playerid, Float:MinX, Float:MinY, Float:MaxX, Float:MaxY)
{
	static Float:X, Float:Y, Float:Z;

	GetPlayerPos(playerid, X, Y, Z);
	
	return MinX <= X <= MaxX && MinY <= Y <= MaxY;
}

stock static Float:GetVehicleSpeed(vehicleid)
{
    static Float:vX, Float:vY, Float:vZ, Float:Velocity;

	Velocity = GetVehicleVelocity(vehicleid, vX, vY, vZ);
	Velocity = (floatsqroot(((vX*vX)+(vY*vY))+(vZ*vZ))* 181.5);

	return Velocity;
}

stock IsPlayerNearPump(playerid)
{
	for(new i; i < sizeof(FuelPumpArray); i++)
	{
	    return IsPlayerInRangeOfPoint(playerid, 2, FuelPumpArray[i][fuelX], FuelPumpArray[i][fuelY], FuelPumpArray[i][fuelZ]);
	}
}

stock IsPlayerNearVending(playerid, type)
{
	for(new i; i < sizeof(VendingArray); i++)
	{
	    return type == VendingArray[i][Type] && IsPlayerInRangeOfPoint(playerid, 1.2, [VendingArray][i][vX], [VendingArray][i][vY], [VendingArray][i][vZ]);
	}
}

stock IsPlayerNearKitchen(playerid)
{
	for(new i; i < sizeof(KitchenArray); i++)
	{
	    return GetPlayerInterior(playerid) == KitchenArray[i][InteriorID] && (IsPlayerInArea(playerid, KitchenArray[i][MiniX], KitchenArray[i][MiniY], KitchenArray[i][MaxiX], KitchenArray[i][MaxiY]);
	}
}

stock IsPlayerAiming(playerid, weaponid)
{
    weaponid = GetPlayerWeapon(playerid);
    new camera = GetPlayerCameraMode(playerid);

    if((camera == 7 || camera == 8 || camera == 51 || camera == 53 || camera == 46) && (22 <= weaponid <= 38) && (GetPlayerState(playerid) == PLAYER_STATE_ONFOOT))
        return 1;
        
    return 0;
}

stock IsPlayerSwimming(playerid)
{
	new Anim = GetPlayerAnimationIndex(playerid);

	if (((Anim == 1544) || (Anim == 1250) || (Anim == 1062) || ((1538 <= Anim <= 1542))) && (GetPlayerWeapon(playerid) == 0) && (GetPlayerState(playerid) == PLAYER_STATE_ONFOOT))
		return 1;

	return 0;
}

stock IsPlayerSkydiving(playerid)
{
    return 958 <= GetPlayerAnimationIndex(playerid) <= 962 && GetPlayerWeapon(playerid) == 46 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT;
}

stock IsPlayerParachuting(playerid)
{
    return 963 <= GetPlayerAnimationIndex(playerid) <= 979 && GetPlayerWeapon(playerid) == 46 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT;
}

stock IsPlayerCarSurfing(playerid)
{
	return GetPlayerSurfingVehicleID(playerid) != INVALID_VEHICLE_ID && GetVehicleSpeed(Vehicle) > 0.0 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT;
}

stock IsPlayerRidingTrain(playerid)
{
	new Vehicle = GetPlayerVehicleID(playerid);
	
	if((GetPlayerCameraMode(playerid) == 3) && (GetPlayerWeapon(playerid) == 0) && (GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) && (Vehicle == 538 || Vehicle == 537))
		return 1;
		
	return 0;
}

stock IsPlayerPassengerAiming(playerid)
{
	return GetPlayerCameraMode(playerid) == 55 && 22 <= GetPlayerWeapon(playerid) <= 38 && GetPlayerState(playerid) == PLAYER_STATE_PASSENGER;
}

stock IsPlayerNearPlayer(playerid, targetid, float:radius)
{
	new Float:rX, Float:rY, Float:rZ;

	GetPlayerPos(playerid, rX, rY, rZ);

	return GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(targetid) && GetPlayerInterior(playerid) == GetPlayerInterior(targetid) && IsPlayerInRangeOfPoint(targetid, radius, rX, rY, rZ);
}

stock IsPlayerNearVehicle(playerid, vehicleid, float:radius)
{
	new Float:vX, Float:vY, Float:vZ;

	GetVehiclePos(vehicleid, vX, vY, vZ);

	return GetVehicleVirtualWorld(vehicleid) == GetPlayerVirtualWorld(playerid) && IsVehicleStreamedIn(vehicleid, playerid) && IsPlayerInRangeOfPoint(playerid, radius, vX, vY, vZ);
}

stock IsPlayerNearDynamicObject(playerid, objectid, float:radius)
{
	new Float:oX, Float:oY, Float:oZ;
	
	GetDynamicObjectPos(objectid, oX, oY, oZ);
	
	return IsPlayerInRangeOfPoint(playerid, radius, oX, oY, oZ);
}

stock IsPlayerSpawned(playerid)
{
	new pState = GetPlayerState(playerid);
	
	return 0 <= playerid < MAX_PLAYERS && pState != PLAYER_STATE_NONE && pState != PLAYER_STATE_WASTED && pState != PLAYER_STATE_SPECTATING;
}

/*
    Anti Car Push (Crasher) | Lasho4 changed to include
    (C) don't know code author
*/

enum (+=1)
{
    ACP_VEHICLE_USE_TYPE_UNFROZEN,
    ACP_VEHICLE_USE_TYPE_UNOCCUPIED,
    ACP_VEHICLE_USE_TYPE_HASDRIVER
}

enum e_acp_vehicle
{
    Float:acp_vPosX,
    Float:acp_vPosY,
    Float:acp_vPosZ,
    Float:acp_vZAngle,
    acp_vUsed
}
new acp_Vehicle[MAX_VEHICLES][e_acp_vehicle];

public OnPlayerExitVehicle(playerid, vehicleid)
{
    acp_Vehicle[vehicleid][acp_vUsed] = ACP_VEHICLE_USE_TYPE_UNFROZEN;
    #if defined acp_OnPlayerExitVehicle
		return acp_OnPlayerExitVehicle(playerid, vehicleid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerExitVehicle
	#undef OnPlayerExitVehicle
#else
	#define _ALS_OnPlayerExitVehicle
#endif
#define OnPlayerExitVehicle acp_OnPlayerExitVehicle
#if defined acp_OnPlayerExitVehicle
	forward acp_OnPlayerExitVehicle(playerid, vehicleid);
#endif

public OnPlayerStateChange(playerid, PLAYER_STATE:newstate, PLAYER_STATE:oldstate)
{
    if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
    {
        acp_Vehicle[GetPlayerVehicleID(playerid)][acp_vUsed] = ACP_VEHICLE_USE_TYPE_HASDRIVER;
    }
    #if defined acp_OnPlayerStateChange
		return acp_OnPlayerStateChange(playerid, newstate, oldstate);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerStateChange
	#undef OnPlayerStateChange
#else
	#define _ALS_OnPlayerStateChange
#endif
#define OnPlayerStateChange acp_OnPlayerStateChange
#if defined acp_OnPlayerStateChange
	forward acp_OnPlayerStateChange(playerid, newstate, oldstate);
#endif


public OnVehicleSpawn(vehicleid)
{
    GetVehiclePos(vehicleid,acp_Vehicle[vehicleid][acp_vPosX],acp_Vehicle[vehicleid][acp_vPosY],acp_Vehicle[vehicleid][acp_vPosZ]);
    GetVehicleZAngle(vehicleid,acp_Vehicle[vehicleid][acp_vZAngle]);
    acp_Vehicle[vehicleid][acp_vUsed] = ACP_VEHICLE_USE_TYPE_UNOCCUPIED;
    #if defined acp_OnVehicleSpawn
		return acp_OnVehicleSpawn(vehicleid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnVehicleSpawn
	#undef OnVehicleSpawn
#else
	#define _ALS_OnVehicleSpawn
#endif
#define OnVehicleSpawn acp_OnVehicleSpawn
#if defined acp_OnVehicleSpawn
	forward acp_OnVehicleSpawn(vehicleid);
#endif

public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z)
{
    if(acp_GetVehicleSpeed(vehicleid) != 0)
        if(acp_Vehicle[vehicleid][acp_vUsed] != ACP_VEHICLE_USE_TYPE_UNFROZEN)
            acp_Vehicle[vehicleid][acp_vUsed] = ACP_VEHICLE_USE_TYPE_UNFROZEN;
    if(acp_Vehicle[vehicleid][acp_vUsed] == ACP_VEHICLE_USE_TYPE_UNFROZEN)
    {
        if(acp_GetVehicleSpeed(vehicleid) == 0)
        {
            GetVehiclePos(vehicleid,acp_Vehicle[vehicleid][acp_vPosX],acp_Vehicle[vehicleid][acp_vPosY],acp_Vehicle[vehicleid][acp_vPosZ]);
            GetVehicleZAngle(vehicleid,acp_Vehicle[vehicleid][acp_vZAngle]);
            acp_Vehicle[vehicleid][acp_vUsed] = ACP_VEHICLE_USE_TYPE_UNOCCUPIED;
        }
    }
    if(acp_Vehicle[vehicleid][acp_vUsed] == 1)
    {
        #if defined foreach
        foreach(new i:Player)
        {
        #else
        for(new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
        {
            if(!IsPlayerConnected(i)) continue;
        #endif
                if(GetPlayerState(i) == PLAYER_STATE_ONFOOT) 
                    if(IsPlayerInRangeOfPoint(i,3.2,acp_Vehicle[vehicleid][acp_vPosX],acp_Vehicle[vehicleid][acp_vPosY],acp_Vehicle[vehicleid][acp_vPosZ]))
                    {
                         SetVehiclePos(vehicleid,acp_Vehicle[vehicleid][acp_vPosX],acp_Vehicle[vehicleid][acp_vPosY],acp_Vehicle[vehicleid][acp_vPosZ]);
                         SetVehicleZAngle(vehicleid,acp_Vehicle[vehicleid][acp_vZAngle]);
                    }
        }
    }
    #if defined acp_OnUnoccupiedVehicleUpdate
		return acp_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnUnoccupiedVehicleUpdate
	#undef OnUnoccupiedVehicleUpdate
#else
	#define _ALS_OnUnoccupiedVehicleUpdate
#endif
#define OnUnoccupiedVehicleUpdate acp_OnUnoccupiedVehicleUpdate
#if defined acp_OnUnoccupiedVehicleUpdate
	forward acp_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z);
#endif

stock acp_GetVehicleSpeed(vehicleid, bool:kmh = true)
{
    new
        Float:xx,
        Float:yy,
        Float:zz,
        Float:vehSpeed;
   
    GetVehicleVelocity(vehicleid,xx,yy,zz);
    vehSpeed  = floatsqroot((xx * xx) + (yy * yy) + (zz * zz));
    return kmh ? floatround((vehSpeed * 195.12)) : floatround((vehSpeed * 136.66667));
}

/* 
Made by RogueDrifter 2018/2/13 
-=-=-=-=-=-=-=-=-=-=-=-=-=-

Callbacks:
-=-=-=-=-
	OnPlayerBreakAir(playerid, breaktype);

-=-=-=-=Usable Defenitions:-=-=-=-=

USE THIS BEFORE THE INCLUDE IF YOU CANCEL THE ORIGINAL SAMP INTERIORS (INCLUDING MOD GARAGES!) TO AVOID EXTRA CHECKS!

#define OPBA_CUSTOM_INTERIORS 

if you don't, use this to define maximum interiors you use:

#define OPBA_MAX_INTERIORS [number]
*/

#if defined r_BreakAir_ 
	#endinput
#endif

#define r_BreakAir_

#include <a_samp>

#if !defined FILTERSCRIPT

#if !defined OPBA_RESET_TIME
	#define OPBA_RESET_TIME 3500
#endif

forward OPBA_SetPlayerPos(playerid, Float:x, Float:y, Float:z);
forward OPBA_SetPlayerPosFindZ(playerid, Float:x, Float:y, Float:z);
forward OPBA_TogglePlayerSpectating(playerid, toggle);
forward OPBA_SetVehiclePos(vehicleid, Float:x, Float:y, Float:z);
forward OPBA_PutPlayerInVehicle(playerid, vehicleid, seatid);

forward OPBA_AirbrakeTeleport(playerid);
forward OPBA_SafeReset();
forward OPBA_ResetPImuunity(playerid);
forward OPBA_SetPPos(playerid);

#if !defined IsValidVehicle
	native IsValidVehicle(vehicleid); 
#endif

#if !defined OPBA_CUSTOM_INTERIORS

#if !defined OPBA_MAX_INTERIORS
	#define OPBA_MAX_INTERIORS 255
#endif

#endif

#if defined OPBA_OnPlayerDisconnect
	forward OPBA_OnPlayerDisconnect(playerid, reason);
#endif

#if defined OPBA_OnPlayerInteriorChange
	forward OPBA_OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid);
#endif

#if defined OPBA_OnPlayerConnect
	forward OPBA_OnPlayerConnect(playerid);
#endif

#if defined OPBA_OnPlayerUpdate
	forward OPBA_OnPlayerUpdate(playerid);
#endif

#if defined OPBA_OnPlayerDeath
	forward OPBA_OnPlayerDeath(playerid, killerid, reason);
#endif

#if defined OPBA_OnPlayerSpawn
	forward OPBA_OnPlayerSpawn(playerid);
#endif

#if defined OnPlayerBreakAir
	forward OnPlayerBreakAir(playerid, breaktype);
#endif

#if defined OPBA_OnPlayerStateChange
	forward OPBA_OnPlayerStateChange(playerid, newstate, oldstate);
#endif

#if defined OPBA_OnPlayerEnterVehicle
	forward OPBA_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
#endif

#if defined OPBA_OnGameModeInit
	forward OPBA_OnGameModeInit();
#endif

#if defined OPBA_OnGameModeExit
	forward OPBA_OnGameModeExit();
#endif

enum E_OPBA_PLAYER_DATA
{
	bool:RacBreakImmunity,
	bool:RacSImu,

	RacPauseTicks,

	Float:RacX,
	Float:RacY,
	Float:RacZ,
	
	RacDetectTimer
};

#if !defined OPBA_CUSTOM_INTERIORS

new 
	OPBA_Player[MAX_PLAYERS][E_OPBA_PLAYER_DATA],
	
	bool:OPBA_PInteriors[MAX_PLAYERS][OPBA_MAX_INTERIORS],

	OPBA_VOwner[MAX_VEHICLES],

	OP_SafeTimer;

#else

new 
	OPBA_Player[MAX_PLAYERS][E_OPBA_PLAYER_DATA],

	OPBA_VOwner[MAX_VEHICLES],

	OP_SafeTimer;

#endif

public OPBA_AirbrakeTeleport(playerid)
{
	#if !defined OPBA_CUSTOM_INTERIORS
	new OpbaTempInt = GetPlayerInterior(playerid);
	#endif

	if(OPBA_GetPlayerSpeed(playerid) <= 60 && GetTickCount() < (OPBA_Player[playerid][RacPauseTicks]+1500) 
	&& !OPBA_Player[playerid][RacBreakImmunity] && OPBA_Player[playerid][RacSImu])
	{
		switch(GetPlayerState(playerid))
		{
			case 1:
			{
				if(GetPlayerSurfingVehicleID(playerid) == INVALID_VEHICLE_ID && GetPlayerSpecialAction(playerid) != 2 && GetPlayerAnimationIndex(playerid) != 1130)
				{
					#if !defined OPBA_CUSTOM_INTERIORS
					if(!IsPlayerInRangeOfPoint(playerid, 25.0, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]) && OPBA_PInteriors[playerid][OpbaTempInt])
					{
						#if defined OnPlayerBreakAir
						OnPlayerBreakAir(playerid, 1);
						#endif
					}

					#else

					if(!IsPlayerInRangeOfPoint(playerid, 25.0, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]))
					{
						#if defined OnPlayerBreakAir
						OnPlayerBreakAir(playerid, 1);
						#endif
					}
					#endif
				}
			}
			case 2:
			{
				#if !defined OPBA_CUSTOM_INTERIORS
				if(!IsPlayerInRangeOfPoint(playerid, 50.0, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]) && OPBA_PInteriors[playerid][OpbaTempInt])
				{
					#if defined OnPlayerBreakAir
					OnPlayerBreakAir(playerid, 2);
					#endif
				}

				#else

				if(!IsPlayerInRangeOfPoint(playerid, 50.0, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]))
				{
					#if defined OnPlayerBreakAir
					OnPlayerBreakAir(playerid, 2);
					#endif
				}
				#endif
			}
			case 3:
			{
	 			if(OPBA_VOwner[GetPlayerVehicleID(playerid)] == INVALID_PLAYER_ID)
				{
					#if !defined OPBA_CUSTOM_INTERIORS
					if(!IsPlayerInRangeOfPoint(playerid, 50.0, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]) && OPBA_PInteriors[playerid][OpbaTempInt])
					{
						#if defined OnPlayerBreakAir
						OnPlayerBreakAir(playerid, 2);
						#endif
					}

					#else

				if(!IsPlayerInRangeOfPoint(playerid, 50.0, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]))
				{
					#if defined OnPlayerBreakAir
					OnPlayerBreakAir(playerid, 2);
					#endif
				}
				#endif
				}
			}
		}
	}
	
	GetPlayerPos(playerid, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]);

	return 1;
}

public OPBA_SafeReset() 
{ 
    static const tmp2[sizeof(OPBA_VOwner)] = {INVALID_PLAYER_ID,...}; 
    memcpy(OPBA_VOwner, tmp2, 0, sizeof(OPBA_VOwner) * 4); 
    for(new i, j = GetPlayerPoolSize(); i <= j; i++) 
    { 
        if(!IsPlayerConnected(i)) continue; 
        if(GetPlayerState(i)== PLAYER_STATE_DRIVER) 
        OPBA_VOwner[GetPlayerVehicleID(i)]=  i ; 
    } 

    return 1; 
} 

public OPBA_ResetPImuunity(playerid) return OPBA_Player[playerid][RacBreakImmunity] = false;
public OPBA_SetPPos(playerid) return OPBA_Player[playerid][RacSImu] = true;

public OPBA_SetPlayerPos(playerid, Float:x, Float:y, Float:z)
{
	if(!OPBA_Player[playerid][RacBreakImmunity]) SetTimerEx("OPBA_ResetPImuunity", OPBA_RESET_TIME, false, "i", playerid),
	OPBA_Player[playerid][RacBreakImmunity] = true;
	OPBA_Player[playerid][RacX] = x;
	OPBA_Player[playerid][RacY] = y;
	OPBA_Player[playerid][RacZ] = z;
	SetPlayerPos(playerid, Float:x, Float:y, Float:z);

	return 1;
}

public OPBA_TogglePlayerSpectating(playerid, toggle)
{
	if(!OPBA_Player[playerid][RacBreakImmunity]) SetTimerEx("OPBA_ResetPImuunity", OPBA_RESET_TIME, false, "i", playerid),
	OPBA_Player[playerid][RacBreakImmunity] = true;
	TogglePlayerSpectating(playerid, toggle);

	return 1;
}

public OPBA_SetPlayerPosFindZ(playerid, Float:x, Float:y, Float:z)
{
	if(!OPBA_Player[playerid][RacBreakImmunity]) SetTimerEx("OPBA_ResetPImuunity", OPBA_RESET_TIME, false, "i", playerid),
	OPBA_Player[playerid][RacBreakImmunity] = true;
	OPBA_Player[playerid][RacX] = x;
	OPBA_Player[playerid][RacY] = y;
	OPBA_Player[playerid][RacZ] = z;
	SetPlayerPosFindZ(playerid, Float:x, Float:y, Float:z);

	return 1;
}

public OPBA_SetVehiclePos(vehicleid, Float:x, Float:y, Float:z)
{
    if(OPBA_VOwner[vehicleid] != INVALID_PLAYER_ID)
    {
    	if(!OPBA_Player[OPBA_VOwner[vehicleid]][RacBreakImmunity]) SetTimerEx("OPBA_ResetPImuunity", OPBA_RESET_TIME, false, "i", OPBA_VOwner[vehicleid]),
    	OPBA_Player[OPBA_VOwner[vehicleid]][RacBreakImmunity] = true;
		OPBA_Player[OPBA_VOwner[vehicleid]][RacX] = x;
		OPBA_Player[OPBA_VOwner[vehicleid]][RacY] = y;
		OPBA_Player[OPBA_VOwner[vehicleid]][RacZ] = z;
    	SetVehiclePos(vehicleid, Float:x, Float:y, Float:z);
    }
    else SetVehiclePos(vehicleid, Float:x, Float:y, Float:z);

	return 1;
}

public OPBA_PutPlayerInVehicle(playerid, vehicleid, seatid)
{
	if(!OPBA_Player[playerid][RacBreakImmunity]) SetTimerEx("OPBA_ResetPImuunity", OPBA_RESET_TIME, false, "i", playerid),
	OPBA_Player[playerid][RacBreakImmunity] = true;
	new Float:x , Float:y, Float:z;
	GetVehiclePos(vehicleid, x, y, z);
	OPBA_Player[playerid][RacX] = x;
	OPBA_Player[playerid][RacY] = y;
	OPBA_Player[playerid][RacZ] = z;
	PutPlayerInVehicle(playerid, vehicleid, seatid);

	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(OPBA_VOwner[vehicleid] != INVALID_PLAYER_ID && !ispassenger && !OPBA_Player[playerid][RacBreakImmunity])
	{
		if(!OPBA_Player[playerid][RacBreakImmunity]) SetTimerEx("OPBA_ResetPImuunity", OPBA_RESET_TIME, false, "i", playerid),
		OPBA_Player[playerid][RacBreakImmunity] = true;
	}

		#if defined OPBA_OnPlayerEnterVehicle
	return OPBA_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
		#else
	return 1;
		#endif
}
public OnGameModeInit()
{
    OP_SafeTimer = SetTimer("OPBA_SafeReset", 5000, true);

        #if defined OPBA_OnGameModeInit
    return OPBA_OnGameModeInit();
        #else
    return 1;
            #endif
}

public OnGameModeExit()
{
	KillTimer(OP_SafeTimer);

        #if defined OPBA_OnGameModeExit
    return OPBA_OnGameModeExit();
        #else
    return 1;
            #endif
}

public OnPlayerConnect(playerid)
{
	OPBA_Player[playerid][RacDetectTimer] = SetTimerEx("OPBA_AirbrakeTeleport", 250, true, "i", playerid);

		#if defined OPBA_OnPlayerConnect
	return OPBA_OnPlayerConnect(playerid);
		#else
	return 1;
		#endif
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	new OPBA_TempCar = GetPlayerVehicleID(playerid);

	switch(newstate)
	{
		case 1:
		{
			if(oldstate ==2) OPBA_VOwner[OPBA_TempCar] = INVALID_PLAYER_ID;
		}
		case 2:
		{
			OPBA_VOwner[OPBA_TempCar] = playerid;
		}
	}

			#if defined OPBA_OnPlayerStateChange
	return OPBA_OnPlayerStateChange(playerid, newstate, oldstate);
		#else
	return 1;
		#endif
}

public OnPlayerDisconnect(playerid, reason)
{
	KillTimer(OPBA_Player[playerid][RacDetectTimer]);

	if(GetPlayerState(playerid) == 2) OPBA_VOwner[GetPlayerVehicleID(playerid)] = INVALID_PLAYER_ID;

	OPBA_Player[playerid][RacBreakImmunity] = false;
	OPBA_Player[playerid][RacSImu] = false;

	#if !defined OPBA_CUSTOM_INTERIORS

	for(new i; i < OPBA_MAX_INTERIORS; i++)
    {
    	OPBA_PInteriors[playerid][i] = false;
    }

    #endif
			#if defined OPBA_OnPlayerDisconnect
	return OPBA_OnPlayerDisconnect(playerid, reason);
		#else
	return 1;
		#endif
}

public OnPlayerSpawn(playerid)
{
	GetPlayerPos(playerid, OPBA_Player[playerid][RacX], OPBA_Player[playerid][RacY], OPBA_Player[playerid][RacZ]);
	SetTimerEx("OPBA_SetPPos", 2500, false, "i", playerid);

	#if !defined OPBA_CUSTOM_INTERIORS

	OPBA_PInteriors[playerid][GetPlayerInterior(playerid)] = true;
	#endif

		#if defined OPBA_OnPlayerSpawn
	return OPBA_OnPlayerSpawn(playerid);
		#else
	return 1;
		#endif
}

#if !defined OPBA_CUSTOM_INTERIORS

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
    OPBA_PInteriors[playerid][oldinteriorid] = false;
    OPBA_PInteriors[playerid][newinteriorid] = true;

		#if defined OPBA_OnPlayerInteriorChange
	return OPBA_OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid);
		#else
	return 1;
		#endif
}

#endif

public OnPlayerDeath(playerid, killerid, reason)
{
	OPBA_Player[playerid][RacSImu] = false;

		#if defined OPBA_OnPlayerDeath	
	return OPBA_OnPlayerDeath(playerid, killerid, reason);
		#else
	return 1;
		#endif
}

public OnPlayerUpdate(playerid)
{
	OPBA_Player[playerid][RacPauseTicks] = GetTickCount();

		#if defined OPBA_OnPlayerUpdate	
	return OPBA_OnPlayerUpdate(playerid);
		#else
	return 1;
		#endif
}

stock OPBA_GetPlayerSpeed(playerid)
{
    new Float:ST[4];

    if(IsPlayerInAnyVehicle(playerid))
    GetVehicleVelocity(GetPlayerVehicleID(playerid),ST[0],ST[1],ST[2]);

    else GetPlayerVelocity(playerid,ST[0],ST[1],ST[2]);
    ST[3] = floatsqroot(floatpower(floatabs(ST[0]), 2.0) + floatpower(floatabs(ST[1]), 2.0) + floatpower(floatabs(ST[2]), 2.0)) * 179.28625;
    return floatround(ST[3]);
}

#if defined _ALS_OnPlayerConnect
  #undef OnPlayerConnect
#else
    #define _ALS_OnPlayerConnect
#endif

#define OnPlayerConnect OPBA_OnPlayerConnect

#if defined _ALS_OnPlayerDisconnect
  #undef OnPlayerDisconnect
#else
    #define _ALS_OnPlayerDisconnect
#endif

#define OnPlayerDisconnect OPBA_OnPlayerDisconnect

#if defined _ALS_OnPlayerStateChange
  #undef OnPlayerStateChange
#else
    #define _ALS_OnPlayerStateChange
#endif

#define OnPlayerStateChange OPBA_OnPlayerStateChange

#if defined _ALS_OnPlayerInteriorChange
  #undef OnPlayerInteriorChange
#else
    #define _ALS_OnPlayerInteriorChange
#endif

#define OnPlayerInteriorChange OPBA_OnPlayerInteriorChange

#if defined _ALS_OnPlayerSpawn
  #undef OnPlayerSpawn
#else
    #define _ALS_OnPlayerSpawn
#endif

#define OnPlayerSpawn OPBA_OnPlayerSpawn

#if defined _ALS_OnPlayerUpdate
  #undef OnPlayerUpdate
#else
    #define _ALS_OnPlayerUpdate
#endif

#define OnPlayerUpdate OPBA_OnPlayerUpdate

#if defined _ALS_OnPlayerEnterVehicle
  #undef OnPlayerEnterVehicle
#else
    #define _ALS_OnPlayerEnterVehicle
#endif

#define OnPlayerEnterVehicle OPBA_OnPlayerEnterVehicle

#if defined _ALS_OnGameModeInit
  #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif

#define OnGameModeInit OPBA_OnGameModeInit

#if defined _ALS_OnGameModeExit
  #undef OnGameModeExit
#else
    #define _ALS_OnGameModeExit
#endif

#define OnGameModeExit OPBA_OnGameModeExit

#if defined _ALS_OnPlayerDeath
  #undef OnPlayerDeath
#else
    #define _ALS_OnPlayerDeath
#endif

#define OnPlayerDeath OPBA_OnPlayerDeath

#if defined _ALS_SetPlayerPos
  #undef SetPlayerPos
#else
    #define _ALS_SetPlayerPos
#endif

#define SetPlayerPos OPBA_SetPlayerPos

#if defined _ALS_SetVehiclePos
  #undef SetVehiclePos
#else
    #define _ALS_SetVehiclePos
#endif

#define SetVehiclePos OPBA_SetVehiclePos

#if defined _ALS_TogglePlayerSpectating
  #undef TogglePlayerSpectating
#else
    #define _ALS_TogglePlayerSpectating
#endif

#define TogglePlayerSpectating OPBA_TogglePlayerSpectating

#if defined _ALS_SetPlayerPosFindZ
  #undef SetPlayerPosFindZ
#else
    #define _ALS_SetPlayerPosFindZ
#endif

#define SetPlayerPosFindZ OPBA_SetPlayerPosFindZ

#if defined _ALS_PutPlayerInVehicle
  #undef PutPlayerInVehicle
#else
    #define _ALS_PutPlayerInVehicle
#endif

#define PutPlayerInVehicle OPBA_PutPlayerInVehicle

#else //If its a filterscript.

stock OPBA_FSetPlayerPos(playerid, Float:x, Float:y, Float:z)
	return CallRemoteFunction("OPBA_SetPlayerPos", "ifff", playerid, x, y, z);

stock OPBA_FSetVehiclePos(vehicleid, Float:x, Float:y, Float:z)
	return CallRemoteFunction("OPBA_SetVehiclePos", "ifff", vehicleid, x, y, z);

stock OPBA_FSetPlayerPosFindZ(playerid, Float:x, Float:y, Float:z)
	return CallRemoteFunction("OPBA_SetPlayerPosFindZ", "ifff", playerid, x, y, z);

stock OPBA_FPutPlayerInVehicle(playerid, vehicleid, seatid)
	return CallRemoteFunction("OPBA_PutPlayerInVehicle", "iii", playerid, vehicleid, seatid);

stock OPBA_FTogglePlayerSpectating(playerid, toggle)
	return CallRemoteFunction("OPBA_TogglePlayerSpectating", "ii", playerid, toggle);

#if defined _ALS_SetPlayerPos
  #undef SetPlayerPos
#else
    #define _ALS_SetPlayerPos
#endif

#define SetPlayerPos OPBA_FSetPlayerPos

#if defined _ALS_SetVehiclePos
  #undef SetVehiclePos
#else
    #define _ALS_SetVehiclePos
#endif

#define SetVehiclePos OPBA_FSetVehiclePos

#if defined _ALS_SetPlayerPosFindZ
  #undef SetPlayerPosFindZ
#else
    #define _ALS_SetPlayerPosFindZ
#endif

#define SetPlayerPosFindZ OPBA_FSetPlayerPosFindZ

#if defined _ALS_PutPlayerInVehicle
  #undef PutPlayerInVehicle
#else
    #define _ALS_PutPlayerInVehicle
#endif

#define PutPlayerInVehicle OPBA_FPutPlayerInVehicle

#if defined _ALS_TogglePlayerSpectating
  #undef TogglePlayerSpectating
#else
    #define _ALS_TogglePlayerSpectating
#endif

#define TogglePlayerSpectating OPBA_FTogglePlayerSpectating

#endif

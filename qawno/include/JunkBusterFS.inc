/*
+-----------------------------------------------------------------------+
¦                        JunkBuster Anti-Cheat                          ¦
¦                                  by                                   ¦
¦                           Double-O-Seven                              ¦
¦                                                                       ¦
¦ You should use JunkBuster in your gamemode! If you want to use it in  ¦
¦ a filterscript, too, include JunkBusterFS  (#include <JunkBusterFS>). ¦
+-----------------------------------------------------------------------+
*/

#if defined _JB_included
	#endinput
#endif
#define _JB_included

#include <a_samp>

forward FS_PutPlayerInVehicle(playerid,vehicleid,seatid);
forward FS_SetPlayerPos(playerid,Float:x,Float:y,Float:z);
forward FS_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z);
forward FS_SetPlayerHealth(playerid,Float:health);
forward FS_SetPlayerArmour(playerid,Float:armour);
forward FS_TogglePlayerControllable(playerid,toggle);
forward FS_SetVehicleVelocity(vehicleid,Float:x,Float:y,Float:z);
forward FS_SetPlayerSpecialAction(playerid,actionid);

public FS_PutPlayerInVehicle(playerid,vehicleid,seatid)
	return CallRemoteFunction("JB_PutPlayerInVehicle","iii",playerid,vehicleid,seatid);
	
public FS_SetPlayerPos(playerid,Float:x,Float:y,Float:z)
	return CallRemoteFunction("JB_SetPlayerPos","ifff",playerid,x,y,z);

public FS_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z)
	return CallRemoteFunction("JB_SetVehiclePos","ifff",vehicleid,x,y,z);
	
public FS_SetVehicleVelocity(vehicleid,Float:x,Float:y,Float:z)
	return CallRemoteFunction("JB_SetVehicleVelocity","ifff",vehicleid,x,y,z);
	
public FS_SetPlayerHealth(playerid,Float:health)
	return CallRemoteFunction("JB_SetPlayerHealth","if",playerid,health);
	
public FS_SetPlayerArmour(playerid,Float:armour)
	return CallRemoteFunction("JB_SetPlayerArmour","if",playerid,armour);
	
public FS_TogglePlayerControllable(playerid,toggle)
	return CallRemoteFunction("JB_TogglePlayerControllable","ii",playerid,toggle);
	
public FS_SetPlayerSpecialAction(playerid,actionid)
	return CallRemoteFunction("JB_SetPlayerSpecialAction","ii",playerid,actionid);
	
#define PutPlayerInVehicle FS_PutPlayerInVehicle
#define SetPlayerPos FS_SetPlayerPos
#define SetVehiclePos FS_SetVehiclePos
#define SetPlayerHealth FS_SetPlayerHealth
#define SetPlayerArmour FS_SetPlayerArmour
#define TogglePlayerControllable FS_TogglePlayerControllable
#define SetVehicleVelocity FS_SetVehicleVelocity
#define SetPlayerSpecialAction FS_SetPlayerSpecialAction

#pragma compat 1
#pragma dynamic 500000
#pragma warning disable 217
#pragma warning disable 201
#pragma warning disable 203
#pragma warning disable 213
#pragma warning disable 219
#pragma warning disable 225
#pragma warning disable 239
#pragma warning disable 214
#pragma warning disable 218
#define FILTERSCRIPT


#include <open.mp>


enum(<<= 1)
{
        NULL = 0,
SOBEIT = 0x5E8606 //orijinal
//SOBEIT = 0x54307B // benim whitetiger anti cheatten buldugum (calismadi)
};
#include <easyDialog>
#include <pause>
#define COLOR_RED         (0xFF0000FF)
#pragma warning disable 217
#pragma warning disable 208
#pragma warning disable 239
#pragma warning disable 214

new sobeitveri[MAX_PLAYERS];
new spawnoldu[MAX_PLAYERS];
new Timer2[MAX_PLAYERS];
new Timer1[MAX_PLAYERS];
new afkoldu[MAX_PLAYERS];
new sobeitkontrol[MAX_PLAYERS];
new sobeit2kontrol[MAX_PLAYERS];
new static sobeit2kontroltimer[MAX_PLAYERS];
new static sobeit3kontroltimer[MAX_PLAYERS];
new sobeitekmek[MAX_PLAYERS];
new afkveri[MAX_PLAYERS];
new afkveriekmek[MAX_PLAYERS];
new retndatabirkere[MAX_PLAYERS];
new harbiciyimoglan[MAX_PLAYERS] = 0;
new sobeitspam = 1;
new actionidekmek[MAX_PLAYERS];
new memaddrekmek[MAX_PLAYERS];
new retndataekmek[MAX_PLAYERS];






/*public OnIncomingRPC(playerid, rpcid, BitStream:bs)
{
    switch(rpcid)
    {
        case 103: //onclientcheckresponse
        {


        }
    }

    return 1;
}*/








forward SobeitSpam();

KickEx(playerid)
{
	SetTimerEx("KickTimer", 200, false, "d", playerid);

	return 1;
}




stock Log_Write(const path[], const str[], {Float,_}:...)
{
	static
	    args,
	    start,
	    end,
	    File:file,
	    string[2048]
	;
	if ((start = strfind(path, "/")) != -1) {
	    strmid(string, path, 0, start + 1);

	    if (!fexist(string))
	        return printf("** Warning: Directory \"%s\" doesn't exist.", string);
	}
	#emit LOAD.S.pri 8
	#emit STOR.pri args

	file = fopen(path, io_append);

	if (!file)
	    return 0;

	if (args > 8)
	{
		#emit ADDR.pri str
		#emit STOR.pri start

	    for (end = start + (args - 8); end > start; end -= 4)
		{
	        #emit LREF.pri end
	        #emit PUSH.pri
		}
		#emit PUSH.S str
		#emit PUSH.C 1024
		#emit PUSH.C string
		#emit PUSH.C args
		#emit SYSREQ.C format

		fwrite(file, string);
		fwrite(file, "\r\n");
		fclose(file);

		#emit LCTRL 5
		#emit SCTRL 4
		#emit RETN
	}
	fwrite(file, str);
	fwrite(file, "\r\n");
	fclose(file);

	return 1;
}



forward TumSendClientCheck(playerid);
public TumSendClientCheck(playerid)
{

return 1;
}




forward KickTimer(playerid);
public KickTimer(playerid)
{
return Kick(playerid);
}
ReturnDate()
{
	static
	    date[36];

	getdate(date[2], date[1], date[0]);
	gettime(date[3], date[4], date[5]);

	format(date, sizeof(date), "%02d/%02d/%d, %02d:%02d", date[0], date[1], date[2], date[3], date[4]);
	return date;
}
ReturnName(playerid)
{
	new name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, MAX_PLAYER_NAME);
	return name;
}





forward SobeitControl2(playerid);
public SobeitControl2(playerid)
{
if (afkoldu[playerid] == 0)
{
sobeitveri[playerid] = 0;
}
//SendClientMessage(playerid, -1, "Veriyi 0 yapt? sobeitveri");
return 1;
}
forward SobeitControlBitroast(playerid);
public SobeitControlBitroast(playerid)
{
//SendClientMessage(playerid, -1, "Veri kontrol 1");
if (sobeitveri[playerid] == 0)
{
//SendClientMessage(playerid, -1, "Veri kontrol 2");
if (spawnoldu[playerid] == 1)
{
//SendClientMessage(playerid, -1, "Veri kontrol 3");
if (afkoldu[playerid] == 0)
{
//SendClientMessage(playerid, -1, "Veri kontrol 4");
if (IsPlayerConnected(playerid))
{
if (sobeitkontrol[playerid] == 0)
{
//SendClientMessage(playerid, -1, "Veri kontrol 5");
new plrIP[16];
GetPlayerIp(playerid, plrIP, sizeof(plrIP));
Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (Deks Tespit) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
//Dialog_Show(playerid, WhiteList, DIALOG_STYLE_MSGBOX, "Hile Kontrol?", "s0beit tespit edildi, at?ld?n!", "Kapat", "");
KickEx(playerid);
}
}
}
}
}
return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
sobeitveri[playerid] = 0;
retndatabirkere[playerid] = 1;
spawnoldu[playerid] = 0;
afkoldu[playerid] = 0;
sobeitkontrol[playerid] = 0;
afkveriekmek[playerid] = 0;
KillTimer(sobeit2kontroltimer[playerid]);
KillTimer(sobeit3kontroltimer[playerid]);
KillTimer(Timer1[playerid]);
//KillTimer(Timer2[playerid]);
sobeitekmek[playerid] = 0;
sobeit2kontroltimer[playerid] = false;
sobeit3kontroltimer[playerid] = false;
harbiciyimoglan[playerid] = 0;
return 1;
}

public SobeitSpam()
{
sobeitspam = 1;
return 1;
}

public OnPlayerPause(playerid)
{
afkoldu[playerid] = 1;
afkveri[playerid] = 0;
return 1;
}
public OnPlayerResume(playerid, pausedtime)
{
afkveriekmek[playerid]++;
if (afkveriekmek[playerid] > 0)
{
afkoldu[playerid] = 0;
afkveri[playerid] = 0;
SetTimerEx("afkdondur", 5000, false, "i", playerid);
}
return 1;
}



forward afkdondur(playerid);
public afkdondur(playerid)
{
afkveri[playerid] = 1;
//SendClientMessage(playerid, -1, "Afk veri 1 test 5 saniye timer?n ard?ndan");
return 1;
}





forward sobeit2control(playerid);
public sobeit2control(playerid)
{
if (afkveri[playerid] == 1)
{
sobeit2kontrol[playerid] = 0;
//SendClientMessage(playerid, -1, "Injector test mesaj?");
//SetTimerEx("sobeit3control", 60000, true, "i", playerid);
/*if (!sobeit3kontroltimer[playerid])
{
sobeit3kontroltimer[playerid] = SetTimerEx("sobeit3control", 35000, true, "i", playerid);
}*/
}
return 1;
}

/*forward sobeit3control(playerid);
public sobeit3control(playerid)
{
if (IsPlayerConnected(playerid))
{
if (afkoldu[playerid] == 0)
{
if (afkveri[playerid] == 1)
{
if (sobeit2kontrol[playerid] == 0)
{
if (afkveri[playerid] == 1)
{
sobeitekmek[playerid]++;
//SendClientMessage(playerid, -1, "sobeitekmek + 1");
if (sobeitekmek[playerid] > 2)
{
if (_:hilelog == 0) hilelog = DCC_FindChannelById("965670504725872660");
new msg[128];
new plrIP[16];
GetPlayerIp(playerid, plrIP, sizeof(plrIP));
format(msg, sizeof(msg), "%s (%d) adli oyuncu s0beit tespitine yakalanip kicklendi. (Injector Tespit) IP: %s", ReturnName(playerid), playerid, plrIP);
if (sobeitspam == 1)
{
DCC_SendChannelMessage(hilelog, msg);
sobeitspam = 0;
SetTimer("SobeitSpam", 5000, false);
}
Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Liveable Guard", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 3) \n ", "Kapat", "");
KickEx(playerid);
}
}
}
}
}
}
return 1;
}*/







forward NullYaptir(playerid);
public NullYaptir(playerid)
{
if(afkveri[playerid] == 1)
{
actionidekmek[playerid] = 1;
memaddrekmek[playerid] = 1;
retndataekmek[playerid] = 1;
//printf("%d idsine null verildi testi", playerid);
}

return 1;
}


forward CheckResponse(playerid);
public CheckResponse(playerid)
{
	if(actionidekmek[playerid] == 1 && memaddrekmek[playerid] == 1 && retndataekmek[playerid] == 1)
		{
		    if(afkveri[playerid] == 1)
		    {
		    	//SendClientMessage(i, -1, "{c9c9c9}[Liveable Roleplay] {FFFFFF}Paketler dönü? sa??amady.");
		    //	Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Liveable AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 6) \n ", "Kapat", "");
		    //	KickEx(playerid);
	    	}
		}

	}



public OnClientCheckResponse(playerid, actionid, memaddr, retndata)
{
//printf("playerid: %d, actionid: %d, memaddr: %d, retndata: %d", playerid, actionid, memaddr, retndata);


if (playerid != INVALID_PLAYER_ID)
{
//SendClientMessage(playerid, -1, "OnClientCheckResponse algylandy.");
actionidekmek[playerid] = 0;
memaddrekmek[playerid] = 0;
retndataekmek[playerid] = 0;
harbiciyimoglan[playerid] = 1;
}




if (actionid == 5)
{
if (retndata != 192)
{
if (memaddr == 0x5E8606)
{
// code 1

return 0;
}
}
}



















if (sobeitkontrol[playerid] == 0)
{
//SendClientMessage(playerid, 0xFF6347FF, "[LIVEABLE AC] s0beit kontrolü yapylyyor.");
}
sobeitveri[playerid] = 1;
//SendClientMessage(playerid, -1, "anti sobeit test 2");
sobeit2kontrol[playerid] = 1;
sobeitkontrol[playerid]++;

        if (retndata != 192 && actionid != 72)
        {
			if (memaddr == 0x5E8606)
			{
			// code 2
            new plrIP[16];
    		GetPlayerIp(playerid, plrIP, sizeof(plrIP));
            //SendClientMessage(playerid, COLOR_RED, "Sistem taraf?ndan ??pheli ???nc? parti yaz?l?mlar tespit edildi. E?er s0beit kullan?yorsan silmen gerek.");
            Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 2) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
            if (sobeitspam == 1)
            {
	        sobeitspam = 0;
	        SetTimer("SobeitSpam", 5000, false);
	        }
	        //Dialog_Show(playerid, WhiteList, DIALOG_STYLE_MSGBOX, "Hile Kontrol?", "s0beit tespit edildi, at?ld?n!", "Kapat", "");
	        Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Deks-AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 2) \n ", "Kapat", "");
            KickEx(playerid);
            return 0;
            }
        }


        if(retndata != 196 && memaddr == 0x6EFBC7)
        {
        // code 3
        	new plrIP[16];
    		GetPlayerIp(playerid, plrIP, sizeof(plrIP));
            //SendClientMessage(playerid, COLOR_RED, "Sistem taraf?ndan ??pheli ???nc? parti yaz?l?mlar tespit edildi. E?er s0beit kullan?yorsan silmen gerek.");
            Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 3) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
            if (sobeitspam == 1)
            {
	        sobeitspam = 0;
	        SetTimer("SobeitSpam", 5000, false);
	        }
	        //Dialog_Show(playerid, WhiteList, DIALOG_STYLE_MSGBOX, "Hile Kontrol?", "s0beit tespit edildi, at?ld?n!", "Kapat", "");
	        Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Deks-AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 3) \n ", "Kapat", "");
            KickEx(playerid);
            return 0;
        }

        /*if(retndata != 72 && memaddr == 0x543081 && actionid != 72)
        {
        // code 4
        new plrIP[16];
    		GetPlayerIp(playerid, plrIP, sizeof(plrIP));
            //SendClientMessage(playerid, COLOR_RED, "Sistem taraf?ndan ??pheli ???nc? parti yaz?l?mlar tespit edildi. E?er s0beit kullan?yorsan silmen gerek.");
            Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 4) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
            if (sobeitspam == 1)
            {
            if (_:hilelog == 0) hilelog = DCC_FindChannelById("965670504725872660");
            new msg[128];
	        format(msg, sizeof(msg), "%s (%d) adli oyuncu s0beit tespitine yakalanip kicklendi. (code 4) IP: %s", ReturnName(playerid), playerid, plrIP);
	        DCC_SendChannelMessage(hilelog, msg);
	        sobeitspam = 0;
	        SetTimer("SobeitSpam", 5000, false);
	        }
	        //Dialog_Show(playerid, WhiteList, DIALOG_STYLE_MSGBOX, "Hile Kontrol?", "s0beit tespit edildi, at?ld?n!", "Kapat", "");
	        Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Liveable AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 4) \n ", "Kapat", "");
            KickEx(playerid);
            return 0;
        }*/

        if (actionid == 5)
{
if (retndata != 8)
{
if (memaddr == 0x6E9E23)
{
new plrIP[16];
GetPlayerIp(playerid, plrIP, sizeof(plrIP));
Log_Write("logs/sobeit_log.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 8) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
if (sobeitspam == 1)
{

sobeitspam = 0;
SetTimer("SobeitSpam", 5000, false);
}
Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Deks-AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 8) \n ", "Kapat", "");
KickEx(playerid);
return 0;
}
}
}

if (actionid == 5)
{
if (retndata != 204)
{
if (memaddr == 0x6EFBDA)
{
new plrIP[16];
GetPlayerIp(playerid, plrIP, sizeof(plrIP));
Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 7) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
if (sobeitspam == 1)
{

sobeitspam = 0;
SetTimer("SobeitSpam", 5000, false);
}
Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Deks-AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 7) \n ", "Kapat", "");
KickEx(playerid);
return 0;
}
}
}



if (actionid == 5)
{
if (retndata != 4)
{
if (memaddr == 0x6EFBCB)
{
new plrIP[16];
GetPlayerIp(playerid, plrIP, sizeof(plrIP));
Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 6) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
if (sobeitspam == 1)
{

sobeitspam = 0;
SetTimer("SobeitSpam", 5000, false);
}
Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Deks-AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 6) \n ", "Kapat", "");
KickEx(playerid);
return 0;
}
}
}

if (actionid == 5)
{
if (retndata != 192)
{
if (memaddr == 0x6D6259)
{
new plrIP[16];
GetPlayerIp(playerid, plrIP, sizeof(plrIP));
Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 9) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
if (sobeitspam == 1)
{

sobeitspam = 0;
SetTimer("SobeitSpam", 5000, false);
}
Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Deks-AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 9) \n ", "Kapat", "");
KickEx(playerid);
return 0;
}
}
}



if (actionid == 5)
{
	if (retndata != 8)
	{
		if (memaddr == 0x5E8620)
		{
			new plrIP[16];
			GetPlayerIp(playerid, plrIP, sizeof(plrIP));
			Log_Write("deksac/giriskontrolu.txt", "[%s] %s s0beit tespitine yakalanip kicklendi. (code 10) IP: %s", ReturnDate(), ReturnName(playerid), plrIP);
			if (sobeitspam == 1)
		{

		sobeitspam = 0;
		SetTimer("SobeitSpam", 5000, false);
    }
	Dialog_Show(playerid, Antihile, DIALOG_STYLE_MSGBOX, "Deks-AC", " Sunucudan Kicklendiniz! \n Kickleyen: Sistem \n Kicklenme Gerekceniz: s0beit(code 10) \n ", "Kapat", "");
	KickEx(playerid);
	return 0;
}
}
}










        return 1;
}




forward sobeitcontrol(playerid);
public sobeitcontrol(playerid)
{
	if (playerid != INVALID_PLAYER_ID)
	{
	if (IsPlayerConnected(playerid))
	{
//	SendClientCheck(playerid, 0x2, 0, 0, 4);
	if (afkveri[playerid] == 1) // afk de??e veri yollayacak, yoksa oyuna dönünce karakterin donmasy bile ge?idiyor. Komut i?lemiyor vs
	{
    new actionid = 0x5, memaddr = SOBEIT, retndata = 0x4;
   SendClientCheck(playerid, actionid, memaddr, NULL, retndata); // düzgün
  // SendClientCheck(playerid, actionid, 0x543081, NULL, retndata); // düzgün fakat kapatyldy ?kü asi okuyor. Silerlerse asi tespit edemez
   SendClientCheck(playerid, actionid, 0x6EFBC7, NULL, retndata); // düzgün
   SendClientCheck(playerid, actionid, 0x6EFBCB, NULL, retndata); // düzgün
   SendClientCheck(playerid, actionid, 0x6EFBDA, NULL, retndata); // düzgün
   SendClientCheck(playerid, actionid, 0x6E9E23, NULL, retndata); // düzgün
   SendClientCheck(playerid, actionid, 0x6D6259, NULL, retndata); // düzgün, onclientcheckresponse'de retndata 192 de??e kickleyecek
   SendClientCheck(playerid, actionid, 0x5E8620, NULL, retndata); // düzgün, onclientcheckresponse'de retndata 8 de??e kickleyecek
  	}
   // SendClientCheck(playerid, actionid, 0x5242CD, NULL, retndata);
	//SendClientCheck(playerid, actionid, 0x543081, NULL, retndata);
	//SendClientCheck(playerid, actionid, 0x6EFBC7, NULL, retndata);
    }
    }
   // SendClientMessage(playerid, -1, "anti sobeit test 1");
    return 1;
}



public OnPlayerConnect(playerid)
{
actionidekmek[playerid] = NULL;
memaddrekmek[playerid] = NULL;
retndataekmek[playerid] = NULL;
sobeitveri[playerid] = 0;
spawnoldu[playerid] = 0;
afkoldu[playerid] = 1;
sobeitkontrol[playerid] = 0;
sobeitekmek[playerid] = 0;
afkveriekmek[playerid] = 0;
retndatabirkere[playerid] = 1;
afkveri[playerid] = 0;
harbiciyimoglan[playerid] = 0;
new actionid = 0x5, memaddr = SOBEIT, retndata = 0x4;
SendClientCheck(playerid, actionid, memaddr, NULL, retndata); // düzgün
//SendClientCheck(playerid, actionid, 0x543081, NULL, retndata); // düzgün kaldyryldy ?kü asi okuyor silerlerse asi tespit edemez
SendClientCheck(playerid, actionid, 0x6EFBC7, NULL, retndata); //düzgün
SendClientCheck(playerid, actionid, 0x6EFBCB, NULL, retndata); // düzgün
SendClientCheck(playerid, actionid, 0x6EFBDA, NULL, retndata); // düzgün
SendClientCheck(playerid, actionid, 0x6E9E23, NULL, retndata); // düzgün
SendClientCheck(playerid, actionid, 0x6D6259, NULL, retndata); // düzgün, onclientcheckresponse'de retndata 192 de??e kickleyecek
SendClientCheck(playerid, actionid, 0x5E8620, NULL, retndata); // düzgün, onclientcheckresponse'de retndata 8 de??e kickleyecek
Timer1[playerid] = SetTimerEx("sobeitcontrol", 100, true, "i", playerid);
//Timer1[playerid] = SetTimerEx("NullYaptir", 60000, true, "d", playerid); // oyuna sonradan onclientcheckresponse kapatan sobeitler fix (1.11.2022'de beni s0beit olmamama ra?? kickledi.)
//Timer2[playerid] = SetTimerEx("CheckResponse", 90000, true, "d", playerid); // oyuna sonradan onclientcheckresponse kapatan sobeitler fix (1.11.2022'de beni s0beit olmamama ra?? kickledi.)
return 1;
}

forward HarbiciAdam(playerid);
public HarbiciAdam(playerid)
{
new plrIP2[16];
GetPlayerIp(playerid, plrIP2, sizeof(plrIP2));
if (strcmp(plrIP2, "31.223.42.43", true)) // bu ipye e?it de??e
{
if (IsPlayerConnected(playerid))
{
if (harbiciyimoglan[playerid] == 0)
{

return 0;
}
}
}
return 1;
}



public OnPlayerSpawn(playerid)
{
//SendClientCheck(playerid, 0x2, 0, 0, 4);
new actionid = 0x5, memaddr = SOBEIT, retndata = 0x4;
SendClientCheck(playerid, actionid, memaddr, NULL, retndata); // düzgün
//SendClientCheck(playerid, actionid, 0x543081, NULL, retndata); // düzgün fakat kaldyryldy ?kü aside okuma yapyyor silerlese asi tespit edemez
SendClientCheck(playerid, actionid, 0x6EFBC7, NULL, retndata); // düzgün
SendClientCheck(playerid, actionid, 0x6EFBCB, NULL, retndata); // düzgün
SendClientCheck(playerid, actionid, 0x6EFBDA, NULL, retndata); // düzgün
SendClientCheck(playerid, actionid, 0x6E9E23, NULL, retndata); // düzgün
SendClientCheck(playerid, actionid, 0x6D6259, NULL, retndata); // düzgün, onclientcheckresponse'de retndata 192 de??e kickleyecek
SendClientCheck(playerid, actionid, 0x5E8620, NULL, retndata); // düzgün, onclientcheckresponse'de retndata 8 de??e kickleyecek
sobeit2kontroltimer[playerid] = false;
sobeit3kontroltimer[playerid] = false;
sobeitveri[playerid] = 0;
spawnoldu[playerid] = 0;
afkoldu[playerid] = 0;
afkveriekmek[playerid] = 0;
afkveri[playerid] = 1;
sobeitkontrol[playerid] = 0;
SendClientCheck(playerid, 72, 0, 0, 2); // düzgün
//SetTimerEx("SobeitControlBitroast", 35000, true, "d", playerid);
//SetTimerEx("SobeitControl2", 10000, true, "d", playerid);
spawnoldu[playerid] = 1;
//if (!sobeit2kontroltimer[playerid])
//{
//sobeit2kontroltimer[playerid] = SetTimerEx("sobeit2control", 15000, true, "i", playerid);
//SendClientMessage(playerid, -1, "Injector timery atandy.");
//}
SetTimerEx("HarbiciAdam", 60000, false, "d", playerid); // oyuna ilk girerken yüklenen sendclientcheck kapatan sobeitler fix
actionidekmek[playerid] = 1;
memaddrekmek[playerid] = 1;
retndataekmek[playerid] = 1;
return 1;
}


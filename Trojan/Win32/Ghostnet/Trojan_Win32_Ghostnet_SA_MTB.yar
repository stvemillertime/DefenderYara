
rule Trojan_Win32_Ghostnet_SA_MTB{
	meta:
		description = "Trojan:Win32/Ghostnet.SA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 75 f0 e8 90 0a 30 00 8a 90 01 01 32 90 01 01 02 90 01 01 88 90 01 01 83 90 01 01 01 83 90 01 01 01 75 f0 90 00 } //01 00 
		$a_81_1 = {4e 6f 44 72 69 76 65 73 } //01 00  NoDrives
		$a_81_2 = {52 65 73 74 72 69 63 74 52 75 6e } //01 00  RestrictRun
		$a_81_3 = {4e 6f 4e 65 74 43 6f 6e 6e 65 63 74 44 69 73 63 6f 6e 6e 65 63 74 } //01 00  NoNetConnectDisconnect
		$a_81_4 = {4e 6f 52 65 63 65 6e 74 44 6f 63 73 48 69 73 74 6f 72 79 } //01 00  NoRecentDocsHistory
		$a_81_5 = {4e 6f 43 6c 6f 73 65 } //00 00  NoClose
	condition:
		any of ($a_*)
 
}
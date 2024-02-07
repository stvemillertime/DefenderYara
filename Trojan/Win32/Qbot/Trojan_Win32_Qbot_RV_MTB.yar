
rule Trojan_Win32_Qbot_RV_MTB{
	meta:
		description = "Trojan:Win32/Qbot.RV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {79 3a 5c 74 65 73 74 34 5c 65 39 31 5c 44 65 62 75 67 5c 65 39 31 2e 70 64 62 } //01 00  y:\test4\e91\Debug\e91.pdb
		$a_01_1 = {47 65 74 43 50 49 6e 66 6f } //01 00  GetCPInfo
		$a_01_2 = {47 65 74 53 74 72 69 6e 67 54 79 70 65 57 } //01 00  GetStringTypeW
		$a_01_3 = {47 65 74 4d 6f 64 75 6c 65 46 69 6c 65 4e 61 6d 65 41 } //01 00  GetModuleFileNameA
		$a_01_4 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //01 00  GetStartupInfoA
		$a_01_5 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //01 00  GetTickCount
		$a_01_6 = {47 65 74 53 79 73 74 65 6d 49 6e 66 6f } //01 00  GetSystemInfo
		$a_01_7 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //00 00  IsDebuggerPresent
	condition:
		any of ($a_*)
 
}
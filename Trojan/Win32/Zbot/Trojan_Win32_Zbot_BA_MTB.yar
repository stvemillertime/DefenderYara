
rule Trojan_Win32_Zbot_BA_MTB{
	meta:
		description = "Trojan:Win32/Zbot.BA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {74 65 6d 70 2e 65 78 65 } //01 00  temp.exe
		$a_01_1 = {51 75 65 72 79 50 65 72 66 6f 72 6d 61 6e 63 65 43 6f 75 6e 74 65 72 } //01 00  QueryPerformanceCounter
		$a_81_2 = {74 70 77 5a 79 7a 45 69 51 71 } //01 00  tpwZyzEiQq
		$a_81_3 = {72 65 62 72 66 4b 48 66 61 61 } //01 00  rebrfKHfaa
		$a_01_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_01_5 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //00 00  GetTickCount
	condition:
		any of ($a_*)
 
}
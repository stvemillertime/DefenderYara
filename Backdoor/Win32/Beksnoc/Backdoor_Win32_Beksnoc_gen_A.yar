
rule Backdoor_Win32_Beksnoc_gen_A{
	meta:
		description = "Backdoor:Win32/Beksnoc.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b6 11 81 fa e3 00 00 00 74 17 8b 45 90 01 01 03 45 90 01 01 0f be 08 81 f1 e3 00 00 00 90 00 } //01 00 
		$a_01_1 = {0f be 42 05 83 f8 2b 0f 85 } //01 00 
		$a_03_2 = {c7 45 ec 3d 0d 00 00 8b 0d 90 01 04 83 e9 40 f7 d9 1b c9 90 00 } //01 00 
		$a_01_3 = {45 53 43 4b 3a 25 75 00 } //00 00  卅䭃┺u
	condition:
		any of ($a_*)
 
}

rule VirTool_Win32_CeeInject_FV{
	meta:
		description = "VirTool:Win32/CeeInject.FV,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {81 7d ec dd 07 00 00 75 02 eb 02 eb c0 } //01 00 
		$a_03_1 = {0f b7 45 fc 89 45 d4 8d 45 f0 50 e8 90 01 04 0f b7 45 f6 89 45 e0 0f b7 45 f8 89 45 dc 0f b7 45 fa 89 45 d8 0f b7 45 fc 89 45 d0 8b 5d d0 3b 5d d4 75 02 eb d1 90 00 } //01 00 
		$a_01_2 = {57 72 69 74 65 41 6e 64 57 61 74 63 68 54 68 69 73 52 74 6c 5a 65 72 6f 4d 65 6d 6f 72 79 00 } //02 00 
		$a_01_3 = {8a 06 46 51 8a 4d f7 d2 c8 59 50 56 ff 45 f8 8b 75 f8 8a 06 46 8b 5d fc 39 5d f8 75 0c 8b 55 10 89 55 f8 8b 75 f8 8a 06 46 88 45 f7 5e 58 88 07 47 49 83 f9 00 75 c9 } //02 00 
		$a_03_4 = {33 c0 33 f6 33 c9 eb 26 6b c6 28 03 45 a0 8b 5d a4 03 58 0c 8b 15 90 01 04 03 50 14 6a 00 ff 70 10 52 53 ff 75 a8 ff 15 90 01 04 46 66 3b 77 06 72 d4 90 00 } //02 00 
		$a_03_5 = {ff 75 fc ff 35 90 01 04 e8 90 01 04 0b c0 0f 84 90 01 04 50 e8 90 01 04 a3 90 01 04 6a 0f 68 90 01 04 ff 35 90 01 04 ff 35 90 01 04 e8 90 01 04 6a 03 68 90 01 04 ff 35 90 01 04 ff 35 90 01 04 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
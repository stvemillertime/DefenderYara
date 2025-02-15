
rule VirTool_Win32_Obfuscator_GQ{
	meta:
		description = "VirTool:Win32/Obfuscator.GQ,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 02 00 09 00 00 02 00 "
		
	strings :
		$a_03_0 = {79 fc fc 31 c9 89 c8 31 d2 f6 35 90 01 04 86 e0 30 e4 02 80 90 01 04 02 81 90 01 04 00 05 90 00 } //02 00 
		$a_01_1 = {64 8b 15 18 00 00 00 8b 52 30 8b 52 54 8b 52 04 8b 52 04 8b 52 08 83 ea 49 } //01 00 
		$a_01_2 = {64 a1 30 00 00 00 8b 80 90 00 00 00 8b 00 8b 40 08 2d ff ee ff ee } //01 00 
		$a_03_3 = {83 ef 03 30 12 f7 d2 f7 da 81 fa 90 01 04 75 90 00 } //01 00 
		$a_03_4 = {30 1a 83 ea 90 01 01 90 02 01 83 c2 90 01 01 81 fa 90 01 04 75 90 00 } //01 00 
		$a_03_5 = {40 30 02 f7 d2 f7 da 81 fa 90 01 04 75 90 00 } //01 00 
		$a_03_6 = {f7 d0 f7 d8 30 02 42 81 fa 90 01 04 75 90 00 } //01 00 
		$a_03_7 = {40 30 02 42 81 fa 90 01 04 75 90 00 } //01 00 
		$a_03_8 = {40 30 06 46 81 fe 90 01 04 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
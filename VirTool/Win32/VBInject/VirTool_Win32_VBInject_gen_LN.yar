
rule VirTool_Win32_VBInject_gen_LN{
	meta:
		description = "VirTool:Win32/VBInject.gen!LN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_13_0 = {0f 6e 45 00 90 02 20 66 0f 6e cc 90 02 30 66 0f ef c1 90 02 30 66 0f 7e 45 fc 90 02 20 81 7d fc 90 90 90 90 90 90 90 90 75 90 00 01 } //00 20 
		$a_0f_1 = {6e 4c 24 08 90 02 20 0f ef c1 90 02 20 0f 7e 45 00 83 c5 } //04 90 
		$a_20_2 = {7c 24 } //0c 00  |$
		$a_90_3 = {01 00 1b 03 6c 74 00 00 90 01 04 42 4d 90 01 0c 28 00 00 00 90 01 1e 00 00 00 00 00 00 90 00 00 00 5d 04 00 00 e7 16 03 80 5c 2c 00 00 e8 16 03 80 00 00 01 00 2e 00 16 00 42 65 68 61 76 69 6f 72 3a 57 69 6e 33 32 2f 52 61 6d 64 6f 2e 43 00 00 01 40 05 82 70 00 04 00 b3 35 00 00 03 00 02 02 00 02 60 00 00 11 40 00 00 00 00 00 00 00 00 00 00 60 40 02 } //01 02 
	condition:
		any of ($a_*)
 
}

rule TrojanSpy_Win32_Banker_gen_B{
	meta:
		description = "TrojanSpy:Win32/Banker.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 06 00 00 04 00 "
		
	strings :
		$a_01_0 = {5c 6c 65 67 6f 7a 5c 6e 6c 68 74 6d 6c } //01 00  \legoz\nlhtml
		$a_03_1 = {26 64 61 74 61 5f 74 79 70 65 3d 64 6c 90 01 01 26 64 61 74 61 5f 63 6f 6e 74 65 6e 74 3d 90 00 } //01 00 
		$a_01_2 = {26 63 68 65 63 6b 3d 61 57 73 45 64 52 } //01 00  &check=aWsEdR
		$a_01_3 = {5c 49 6d 70 6c 65 6d 65 6e 74 65 64 20 43 61 74 65 67 6f 72 69 65 73 } //01 00  \Implemented Categories
		$a_01_4 = {5c 52 65 71 75 69 72 65 64 20 43 61 74 65 67 6f 72 69 65 73 } //01 00  \Required Categories
		$a_01_5 = {4d 00 6f 00 64 00 75 00 6c 00 65 00 5f 00 52 00 61 00 77 00 } //00 00  Module_Raw
	condition:
		any of ($a_*)
 
}

rule TrojanSpy_Win32_Bancos_TA{
	meta:
		description = "TrojanSpy:Win32/Bancos.TA,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0b 00 00 0a 00 "
		
	strings :
		$a_00_0 = {42 4b 62 68 54 62 7e 58 42 4b 21 3b ba 28 c3 } //0a 00 
		$a_01_1 = {0f b7 1a 0f bf 31 0f af de 81 c3 00 08 00 00 8b 74 24 24 c1 fb 0c 83 c1 02 89 1e 83 c2 02 83 44 24 24 04 40 83 f8 40 7c d7 } //01 00 
		$a_00_2 = {53 65 6e 68 61 20 64 65 20 41 75 74 6f 2d 41 74 65 6e 64 69 6d 65 6e 74 6f 3a 20 43 6f 6e 74 65 } //01 00  Senha de Auto-Atendimento: Conte
		$a_02_3 = {68 74 74 70 3a 2f 2f 73 72 6d 76 78 2e 63 6f 6d 2e 62 72 2f 75 70 6c 6f 61 64 73 2f 90 02 10 2e 70 68 70 90 00 } //01 00 
		$a_02_4 = {70 72 61 71 75 65 6d 3d 90 02 20 40 67 6d 61 69 6c 2e 63 6f 6d 90 00 } //01 00 
		$a_02_5 = {70 72 61 71 75 65 6d 3d 90 02 20 74 69 74 75 6c 6f 3d 52 7b 32 33 37 7d 90 02 20 46 72 6f 6d 3d 46 72 6f 6d 3a 90 00 } //01 00 
		$a_00_6 = {42 72 61 64 65 73 63 6f } //01 00  Bradesco
		$a_02_7 = {41 67 65 6e 63 69 61 90 02 21 43 6f 6e 74 61 90 02 50 53 65 6e 68 61 90 00 } //01 00 
		$a_02_8 = {43 6f 6e 74 61 3a 2e 2e 2e 90 02 30 53 65 6e 68 61 90 02 30 44 69 67 69 74 6f 90 00 } //01 00 
		$a_02_9 = {68 00 74 00 74 00 63 00 70 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 90 02 20 2e 00 70 00 68 00 70 00 90 00 } //01 00 
		$a_02_10 = {6c 00 65 00 67 00 6c 00 6f 00 6e 00 67 00 6e 00 69 00 2e 00 74 00 33 00 35 00 2e 00 63 00 6f 00 6d 00 2f 00 90 02 20 2e 00 70 00 68 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
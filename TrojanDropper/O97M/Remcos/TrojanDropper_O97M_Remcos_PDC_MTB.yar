
rule TrojanDropper_O97M_Remcos_PDC_MTB{
	meta:
		description = "TrojanDropper:O97M/Remcos.PDC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 72 61 6e 67 65 28 22 61 31 22 29 2e 76 61 6c 75 65 65 6e 64 66 75 6e 63 74 69 6f 6e } //01 00  =range("a1").valueendfunction
		$a_01_1 = {2e 73 65 6c 66 2e 69 6e 76 6f 6b 65 76 65 72 62 22 70 61 22 2b 22 73 74 65 22 65 6e 64 66 75 6e 63 74 69 6f 6e 70 72 69 76 61 74 65 66 75 6e 63 74 69 6f 6e } //01 00  .self.invokeverb"pa"+"ste"endfunctionprivatefunction
		$a_03_2 = {2e 6f 70 65 6e 28 90 02 05 2b 22 5c 90 02 0a 2e 6a 22 2b 22 73 22 29 65 6e 64 73 75 62 73 75 62 90 02 0f 28 90 1b 00 29 6e 61 6d 65 90 00 } //01 00 
		$a_03_3 = {63 6f 6e 73 74 75 73 65 72 5f 70 72 6f 66 69 6c 65 3d 26 68 32 38 26 61 63 74 69 76 65 73 68 65 65 74 2e 6f 6c 65 6f 62 6a 65 63 74 73 28 31 29 2e 63 6f 70 79 73 65 74 90 02 06 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 6d 65 72 6d 6b 64 28 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
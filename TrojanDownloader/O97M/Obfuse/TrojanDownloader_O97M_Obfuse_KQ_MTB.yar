
rule TrojanDownloader_O97M_Obfuse_KQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c } //01 00  , Null, Null, Null
		$a_03_1 = {26 20 43 68 72 28 90 02 45 29 90 02 02 4e 65 78 74 90 00 } //01 00 
		$a_03_2 = {53 68 65 65 74 73 28 90 02 12 29 2e 43 65 6c 6c 73 28 90 02 08 29 2e 56 61 6c 75 65 90 00 } //01 00 
		$a_03_3 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 90 02 18 29 2e 56 61 6c 75 65 90 00 } //01 00 
		$a_03_4 = {3d 20 31 20 54 6f 20 4c 65 6e 28 90 02 40 29 20 53 74 65 70 20 32 90 02 02 44 69 6d 90 00 } //01 00 
		$a_03_5 = {3d 20 4d 69 64 28 90 02 40 2c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
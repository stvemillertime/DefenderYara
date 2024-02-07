
rule Backdoor_Win64_Ggey_MTB{
	meta:
		description = "Backdoor:Win64/Ggey!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 81 f8 ff 00 00 00 41 0f b6 c0 4d 8d 49 01 41 0f 46 c0 44 8b c0 41 ff c0 0f b6 44 04 50 49 03 c3 0f b6 c8 0f b6 44 0c 50 43 32 44 0a ff 41 88 41 ff 48 83 ef 01 75 c8 } //01 00 
		$a_01_1 = {50 00 61 00 74 00 63 00 68 00 20 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 } //01 00  Patch Registry
		$a_01_2 = {44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Delete Service
		$a_01_3 = {43 00 72 00 65 00 61 00 74 00 65 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Create Service
		$a_01_4 = {53 00 74 00 61 00 72 00 74 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //00 00  Start Service
	condition:
		any of ($a_*)
 
}
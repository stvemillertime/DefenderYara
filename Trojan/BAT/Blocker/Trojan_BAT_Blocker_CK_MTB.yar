
rule Trojan_BAT_Blocker_CK_MTB{
	meta:
		description = "Trojan:BAT/Blocker.CK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {54 68 65 20 74 68 65 20 71 75 69 63 6b 20 62 72 6f 77 6e 20 66 6f 78 20 20 66 6f 78 20 6a 75 6d 70 73 20 6f 76 65 72 20 74 68 65 20 6c 61 7a 79 20 64 6f 67 20 64 6f 67 2e } //01 00  The the quick brown fox  fox jumps over the lazy dog dog.
		$a_01_1 = {24 65 39 66 37 38 32 39 31 2d 39 30 30 61 2d 34 32 31 63 2d 39 37 37 37 2d 63 31 38 66 30 63 39 35 64 35 35 32 } //01 00  $e9f78291-900a-421c-9777-c18f0c95d552
		$a_81_2 = {70 6f 77 65 72 73 68 65 6c 6c } //01 00  powershell
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_4 = {4b 79 6e 63 73 79 74 68 7a } //01 00  Kyncsythz
		$a_81_5 = {7b 30 7d 20 69 73 20 61 20 63 75 72 72 65 6e 63 79 20 76 61 6c 75 65 2e } //01 00  {0} is a currency value.
		$a_81_6 = {73 6c 6f 76 65 6e 69 61 5f 31 36 78 31 36 5f 33 33 30 38 34 } //01 00  slovenia_16x16_33084
		$a_01_7 = {4b 79 6e 63 73 79 74 68 7a 2e 64 6c 6c } //00 00  Kyncsythz.dll
	condition:
		any of ($a_*)
 
}
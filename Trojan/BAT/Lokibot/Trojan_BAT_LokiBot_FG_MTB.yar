
rule Trojan_BAT_LokiBot_FG_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.FG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {39 00 36 00 47 00 65 00 39 00 36 00 74 00 39 00 36 00 54 00 79 00 70 00 65 00 39 00 36 00 } //01 00  96Ge96t96Type96
		$a_01_1 = {39 00 36 00 41 00 39 00 36 00 73 00 73 00 39 00 36 00 65 00 6d 00 39 00 36 00 62 00 6c 00 79 00 } //01 00  96A96ss96em96bly
		$a_01_2 = {39 00 36 00 45 00 6e 00 39 00 36 00 74 00 72 00 79 00 39 00 36 00 50 00 6f 00 69 00 6e 00 74 00 } //01 00  96En96try96Point
		$a_01_3 = {39 00 36 00 49 00 39 00 36 00 6e 00 76 00 6f 00 39 00 36 00 6b 00 65 00 } //01 00  96I96nvo96ke
		$a_01_4 = {39 00 36 00 4c 00 39 00 36 00 6f 00 61 00 64 00 } //01 00  96L96oad
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_7 = {52 65 67 65 78 } //01 00  Regex
		$a_01_8 = {43 6f 6e 63 61 74 } //00 00  Concat
	condition:
		any of ($a_*)
 
}
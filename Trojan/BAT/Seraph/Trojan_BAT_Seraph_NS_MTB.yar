
rule Trojan_BAT_Seraph_NS_MTB{
	meta:
		description = "Trojan:BAT/Seraph.NS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 0c 00 00 06 2b cd 28 90 01 01 00 00 0a 2b cc 07 2b cb 6f 90 01 01 00 00 0a 2b c6 6f 90 01 01 00 00 0a 2b cb 28 90 01 01 00 00 0a 2b c6 90 00 } //01 00 
		$a_01_1 = {44 65 7a 78 67 62 6a } //00 00  Dezxgbj
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Seraph_NS_MTB_2{
	meta:
		description = "Trojan:BAT/Seraph.NS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {7b 04 00 00 04 6f 90 01 03 0a 28 90 01 03 0a 28 90 01 03 06 20 90 01 03 00 7e 90 01 03 04 7b 90 01 03 04 39 90 01 03 ff 26 20 90 01 03 00 38 90 01 03 ff 73 90 01 03 0a 13 02 20 90 01 03 00 38 90 01 03 ff 11 00 11 00 6f 90 01 03 0a 11 00 28 90 01 03 06 90 00 } //01 00 
		$a_01_1 = {43 75 75 6f 6b 73 62 64 64 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //00 00  Cuuoksbdd.Properties.Resources.resources
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Seraph_NS_MTB_3{
	meta:
		description = "Trojan:BAT/Seraph.NS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {11 0a 11 0a 6f 18 00 00 0a 11 0a 6f 90 01 03 0a 6f 90 01 03 0a 13 0d 20 90 01 03 00 7e 90 01 03 04 7b 90 01 03 04 3a 90 01 03 ff 26 20 90 01 03 00 38 90 01 03 ff 00 20 90 01 03 00 7e 90 01 03 04 7b 90 01 03 04 39 90 01 03 ff 26 20 90 01 03 00 38 90 01 03 ff 11 0a 20 90 01 03 8c 28 90 01 03 06 28 90 01 03 0a 6f 90 01 03 0a 20 90 01 03 00 38 90 01 03 ff 90 00 } //01 00 
		$a_01_1 = {56 70 77 62 68 6c 75 72 65 75 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //00 00  Vpwbhlureu.Properties.Resources.resources
	condition:
		any of ($a_*)
 
}

rule Trojan_BAT_AveMaria_NAA_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {07 20 1f d8 36 76 5a 20 90 01 03 98 61 38 90 01 03 ff 00 07 20 90 01 03 5f 5a 20 90 01 03 69 61 38 90 01 03 ff 02 7b 90 01 03 04 1a 28 90 01 03 06 90 00 } //01 00 
		$a_01_1 = {41 69 72 70 6f 72 74 42 61 67 67 61 67 65 2e 50 72 6f 70 65 72 74 69 65 73 } //00 00  AirportBaggage.Properties
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AveMaria_NAA_MTB_2{
	meta:
		description = "Trojan:BAT/AveMaria.NAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 8b 01 00 06 61 7e 90 01 02 00 04 28 90 01 02 00 06 11 01 11 03 17 58 11 01 8e 69 5d 91 7e 90 01 02 00 04 28 90 01 02 00 06 59 20 90 01 02 00 00 58 20 90 01 02 00 00 5d 7e 90 01 02 00 04 28 90 01 02 00 06 9c 90 00 } //01 00 
		$a_01_1 = {6b 43 73 4b 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //01 00  kCsK.g.resources
		$a_01_2 = {45 78 69 74 45 78 61 6d 41 70 70 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //00 00  ExitExamApp.Properties.Resources.resources
	condition:
		any of ($a_*)
 
}
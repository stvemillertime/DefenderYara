
rule Trojan_BAT_Remcos_AMAA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {00 11 0a 11 04 5d 13 0b 11 0a 11 05 5d 13 0c 08 11 0b 91 13 0d 09 11 0c 6f 90 01 01 00 00 0a 13 0e 08 11 0a 17 58 11 04 5d 91 13 0f 11 0d 11 0e 11 0f 28 90 01 01 00 00 06 13 10 08 11 0b 11 10 20 00 01 00 00 5d d2 9c 00 11 0a 17 59 13 0a 11 0a 16 fe 04 16 fe 01 13 11 11 11 2d a7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Remcos_AMAA_MTB_2{
	meta:
		description = "Trojan:BAT/Remcos.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 06 07 6f 90 01 01 00 00 0a 06 18 6f 90 01 01 00 00 0a 06 1b 6f 90 01 01 00 00 0a 06 6f 90 01 01 00 00 0a 0d 09 04 16 04 8e 69 6f 90 01 01 00 00 0a 2a 73 2b 00 00 0a 90 01 01 99 0a 2b 98 0b 2b 9e 90 00 } //01 00 
		$a_80_1 = {63 64 68 66 64 66 67 66 64 6b 66 66 73 68 64 68 64 73 68 64 67 68 66 } //cdhfdfgfdkffshdhdshdghf  01 00 
		$a_80_2 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //RijndaelManaged  00 00 
	condition:
		any of ($a_*)
 
}

rule Trojan_BAT_AgentTesla_EQZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EQZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 11 05 17 da 28 90 01 03 06 08 11 05 08 28 90 01 03 06 5d 28 90 01 03 06 da 13 06 09 11 06 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 0d 11 05 17 d6 13 05 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_01_2 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //00 00  GetTypeFromHandle
	condition:
		any of ($a_*)
 
}
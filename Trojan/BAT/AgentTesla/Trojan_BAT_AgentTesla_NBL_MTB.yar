
rule Trojan_BAT_AgentTesla_NBL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NBL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {02 6c 23 ff b9 f4 ee 2a 81 f7 3f 5b 28 90 01 03 0a b7 28 90 01 03 0a 28 90 01 03 0a 0b 07 0a 2b 00 06 2a 90 00 } //05 00 
		$a_01_1 = {42 00 75 00 6e 00 00 0d 69 00 66 00 75 00 5f 00 54 00 65 00 00 07 78 00 74 00 42 00 00 05 6f 00 78 } //00 00 
	condition:
		any of ($a_*)
 
}
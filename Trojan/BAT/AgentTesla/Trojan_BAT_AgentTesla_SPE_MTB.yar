
rule Trojan_BAT_AgentTesla_SPE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.SPE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {07 09 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 28 90 01 03 0a 16 91 13 05 08 17 8d 51 00 00 01 25 16 11 05 9c 6f 90 01 03 0a 00 09 18 58 0d 00 09 07 6f 90 01 03 0a fe 04 13 06 11 06 2d c1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
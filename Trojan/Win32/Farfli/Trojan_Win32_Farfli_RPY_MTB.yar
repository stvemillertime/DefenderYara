
rule Trojan_Win32_Farfli_RPY_MTB{
	meta:
		description = "Trojan:Win32/Farfli.RPY!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 8d 45 fc 50 ff 36 ff d3 3d 0d 00 00 c0 74 24 83 c6 04 83 c7 10 81 fe } //00 00 
	condition:
		any of ($a_*)
 
}
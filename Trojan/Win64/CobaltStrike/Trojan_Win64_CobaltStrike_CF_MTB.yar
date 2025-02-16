
rule Trojan_Win64_CobaltStrike_CF_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 63 d0 48 8b 45 90 01 01 48 01 d0 0f b6 08 8b 45 90 01 01 48 63 d0 48 8b 45 90 01 01 48 01 d0 44 89 c2 31 ca 88 10 83 45 90 01 02 83 45 90 01 02 8b 45 90 01 01 48 98 48 3b 45 90 01 01 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_CobaltStrike_CF_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.CF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {48 8b 0b 48 8d 54 24 90 01 01 4c 8b c7 ff 15 90 01 04 3d 0d 00 00 c0 74 90 01 01 48 83 c7 90 01 01 48 83 c3 90 01 01 48 3b dd 7c 90 01 01 33 d2 48 8b ce ff 15 90 01 04 eb 90 00 } //01 00 
		$a_01_1 = {2e 70 64 62 } //00 00  .pdb
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_CobaltStrike_CF_MTB_3{
	meta:
		description = "Trojan:Win64/CobaltStrike.CF!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 48 8b 14 25 30 00 00 00 48 89 90 a6 08 00 00 48 8b 80 a6 08 00 00 48 8b 40 60 48 8b 40 18 48 8b 58 10 48 8d 78 10 } //00 00 
	condition:
		any of ($a_*)
 
}
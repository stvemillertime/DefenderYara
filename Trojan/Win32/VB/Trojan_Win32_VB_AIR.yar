
rule Trojan_Win32_VB_AIR{
	meta:
		description = "Trojan:Win32/VB.AIR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {79 09 66 4b 66 81 cb 00 ff 66 43 0f bf c3 8d 4d bc 50 51 ff 15 90 01 01 10 40 00 8d 95 7c ff ff ff 8d 45 bc 52 8d 4d ac 50 51 ff 15 90 01 02 40 00 50 ff 15 90 01 01 10 40 00 90 00 } //01 00 
		$a_03_1 = {8b 4d e0 8b 55 90 01 01 51 52 ff d3 8b d0 8d 4d e0 ff d6 b8 02 00 00 00 03 c7 0f 80 86 00 00 00 8b f8 b8 02 00 00 00 e9 42 ff ff ff 8b 55 e0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}

rule Trojan_Win32_Redline_GNQ_MTB{
	meta:
		description = "Trojan:Win32/Redline.GNQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {03 ce 89 4c 24 90 01 01 8b 4c 24 90 01 01 d3 ee 8b 4c 24 90 01 01 8d 44 24 90 01 01 c7 05 90 01 04 ee 3d ea f4 89 74 24 90 01 01 e8 90 01 04 8b 44 24 90 01 01 31 44 24 90 01 01 81 3d 90 01 04 e6 09 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
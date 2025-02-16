
rule Trojan_BAT_FormBook_AAF_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 06 11 06 08 6f 90 01 03 0a 00 08 6f 90 01 03 0a 03 6a da 17 6a da 13 07 16 6a 13 08 2b 0f 07 1b 6f 90 01 03 0a 00 11 08 17 6a d6 13 08 11 08 11 07 31 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_AAF_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.AAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {0d 16 13 05 2b 1a 00 09 11 05 07 11 05 91 08 11 05 08 8e 69 5d 91 61 d2 9c 00 11 05 17 58 13 05 11 05 07 8e 69 fe 04 13 06 11 06 2d d9 } //01 00 
		$a_01_1 = {47 00 72 00 6f 00 75 00 70 00 50 00 72 00 6f 00 6a 00 } //00 00  GroupProj
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_AAF_MTB_3{
	meta:
		description = "Trojan:BAT/FormBook.AAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {7b 35 00 00 04 8e 69 17 59 8d 58 00 00 01 0b 02 7b 35 00 00 04 07 02 7b 35 00 00 04 8e 69 17 59 28 90 01 03 0a 11 04 16 8c 39 00 00 01 07 13 05 11 05 6f 90 00 } //01 00 
		$a_01_1 = {51 00 4c 00 42 00 61 00 6e 00 48 00 61 00 6e 00 67 00 } //00 00  QLBanHang
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_AAF_MTB_4{
	meta:
		description = "Trojan:BAT/FormBook.AAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {16 13 20 2b 25 11 1e 11 20 18 28 90 01 03 06 20 03 02 00 00 28 90 01 03 0a 13 22 11 1f 11 22 6f 90 01 03 0a 11 20 18 58 13 20 11 20 11 1e 90 00 } //01 00 
		$a_01_1 = {47 00 61 00 73 00 74 00 72 00 6f 00 65 00 6e 00 74 00 65 00 72 00 6f 00 6c 00 6f 00 67 00 79 00 } //00 00  Gastroenterology
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_AAF_MTB_5{
	meta:
		description = "Trojan:BAT/FormBook.AAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {72 8f 11 00 70 28 90 01 03 0a 0b 06 07 6f 90 01 03 0a 0c 02 8e 69 8d 90 01 03 01 0d 08 02 16 02 8e 69 09 16 6f 90 01 03 0a 13 04 09 11 04 90 00 } //01 00 
		$a_01_1 = {57 00 65 00 62 00 5f 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5f 00 5f 00 48 00 57 00 5f 00 52 00 47 00 4d 00 5f 00 32 00 30 00 31 00 32 00 } //00 00  Web_Browser__HW_RGM_2012
	condition:
		any of ($a_*)
 
}

rule Trojan_BAT_RevengeRat_ARV_MTB{
	meta:
		description = "Trojan:BAT/RevengeRat.ARV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {7e 7b 00 00 04 08 7e 79 00 00 04 06 7e 75 00 00 04 08 28 90 01 03 06 1e 5b 28 90 01 03 06 16 2c 79 26 26 26 7e 7d 00 00 04 08 7e 79 00 00 04 06 7e 77 00 00 04 08 28 90 00 } //01 00 
		$a_01_1 = {57 00 69 00 6e 00 57 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //00 00  WinWord.exe
	condition:
		any of ($a_*)
 
}
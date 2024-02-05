
rule Trojan_Win32_CoinMiner_BV_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.BV!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 00 8b 55 90 01 01 8b 42 54 50 8b 4d 08 51 8b 90 02 05 52 8b 85 90 01 04 50 ff 95 90 00 } //01 00 
		$a_03_1 = {8b 55 08 03 51 3c 03 55 90 01 01 8b 90 02 05 0f af 45 90 01 01 03 d0 89 95 90 00 } //01 00 
		$a_03_2 = {6a 00 8b 85 90 01 04 8b 48 10 51 8b 95 90 01 04 8b 45 08 03 42 14 50 8b 8d 90 01 04 8b 90 02 05 03 51 0c 52 8b 85 90 01 04 50 ff 95 90 00 } //01 00 
		$a_03_3 = {6a 00 6a 04 8b 55 90 01 01 83 c2 34 52 8b 45 90 01 01 8b 88 a4 00 00 00 83 c1 08 51 8b 95 90 01 04 52 ff 95 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}

rule Trojan_BAT_SpySnake_MQ_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 3f b6 1d 09 0b 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 9b 00 00 00 13 00 00 00 7c 00 00 00 90 00 00 00 9a } //05 00 
		$a_01_1 = {31 63 37 63 36 61 34 65 2d 62 31 36 61 2d 34 65 64 34 2d 38 38 31 33 2d 35 61 61 33 30 65 39 65 66 63 36 39 } //01 00  1c7c6a4e-b16a-4ed4-8813-5aa30e9efc69
		$a_01_2 = {4a 61 6d 62 6f } //01 00  Jambo
		$a_01_3 = {77 65 62 42 72 6f 77 73 65 72 5f 4e 61 76 69 67 61 74 65 43 6f 6d 70 6c 65 74 65 } //01 00  webBrowser_NavigateComplete
		$a_01_4 = {50 61 73 73 55 72 6c 54 6f 42 72 6f 6b 65 72 } //00 00  PassUrlToBroker
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SpySnake_MQ_MTB_2{
	meta:
		description = "Trojan:BAT/SpySnake.MQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 49 55 54 45 52 53 57 42 41 4a 48 47 46 46 } //01 00  OIUTERSWBAJHGFF
		$a_01_1 = {50 4c 4f 4b 4e 4d 4a 49 55 48 42 56 47 59 54 46 43 } //01 00  PLOKNMJIUHBVGYTFC
		$a_01_2 = {4d 44 49 50 50 31 5a } //01 00  MDIPP1Z
		$a_01_3 = {6e 75 6d 65 72 69 63 55 70 44 6f 77 6e 31 5f 56 61 6c 75 65 43 68 61 6e 67 65 64 } //01 00  numericUpDown1_ValueChanged
		$a_01_4 = {4d 44 49 50 50 31 } //01 00  MDIPP1
		$a_01_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_6 = {44 65 61 6c 44 61 6d 61 67 65 } //01 00  DealDamage
		$a_01_7 = {4e 75 6d 65 72 69 63 55 70 44 6f 77 6e } //01 00  NumericUpDown
		$a_01_8 = {67 65 74 5f 4b 69 6c 6c 43 6f 75 6e 74 } //01 00  get_KillCount
		$a_01_9 = {39 63 35 34 62 31 39 30 2d 65 35 63 61 2d 34 62 34 32 2d 38 66 62 63 2d 32 65 30 66 38 61 31 36 33 66 63 63 } //00 00  9c54b190-e5ca-4b42-8fbc-2e0f8a163fcc
	condition:
		any of ($a_*)
 
}
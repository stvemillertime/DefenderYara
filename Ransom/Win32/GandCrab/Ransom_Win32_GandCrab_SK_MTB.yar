
rule Ransom_Win32_GandCrab_SK_MTB{
	meta:
		description = "Ransom:Win32/GandCrab.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,56 00 56 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 00 61 00 6e 00 73 00 6f 00 6d 00 5f 00 69 00 64 00 } //01 00  ransom_id
		$a_01_1 = {6f 00 73 00 5f 00 62 00 69 00 74 00 20 00 } //01 00  os_bit 
		$a_01_2 = {6f 00 73 00 5f 00 6d 00 61 00 6a 00 6f 00 72 00 } //01 00  os_major
		$a_01_3 = {70 00 63 00 5f 00 6b 00 65 00 79 00 62 00 } //01 00  pc_keyb
		$a_01_4 = {70 00 63 00 5f 00 6c 00 61 00 6e 00 67 00 } //01 00  pc_lang
		$a_01_5 = {70 00 63 00 5f 00 67 00 72 00 6f 00 75 00 70 00 20 00 } //01 00  pc_group 
		$a_01_6 = {70 00 63 00 5f 00 6e 00 61 00 6d 00 65 00 } //01 00  pc_name
		$a_01_7 = {70 00 63 00 5f 00 75 00 73 00 65 00 72 00 } //1e 00  pc_user
		$a_01_8 = {2f 00 63 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 2d 00 63 00 20 00 35 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 25 00 73 00 22 00 20 00 2f 00 66 00 20 00 2f 00 71 00 } //1e 00  /c timeout -c 5 & del "%s" /f /q
		$a_01_9 = {7b 00 55 00 53 00 45 00 52 00 49 00 44 00 7d 00 } //05 00  {USERID}
		$a_01_10 = {6d 00 79 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 71 00 6f 00 73 00 2e 00 65 00 78 00 65 00 } //05 00  mydesktopqos.exe
		$a_01_11 = {6d 00 79 00 73 00 71 00 6c 00 64 00 2e 00 65 00 78 00 65 00 } //05 00  mysqld.exe
		$a_01_12 = {74 00 68 00 75 00 6e 00 64 00 65 00 72 00 62 00 69 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //05 00  thunderbird.exe
		$a_01_13 = {76 00 69 00 73 00 69 00 6f 00 2e 00 65 00 78 00 65 00 } //00 00  visio.exe
		$a_00_14 = {5d 04 00 00 d1 3b 04 80 5c 2a 00 00 d2 3b 04 80 00 00 01 00 08 00 14 00 ac 21 44 61 74 61 53 74 65 61 6c 65 72 2e 56 44 21 4d 54 42 00 00 01 40 05 82 70 00 04 00 78 2f 00 00 01 00 01 00 01 00 00 01 00 22 03 8b } //c2 83 
	condition:
		any of ($a_*)
 
}
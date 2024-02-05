
rule TrojanDownloader_Win32_Kolilks_B{
	meta:
		description = "TrojanDownloader:Win32/Kolilks.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 74 5a 33 c0 66 c7 45 d4 68 00 66 89 55 d6 66 89 55 d8 66 c7 45 da 70 00 66 c7 45 dc 3a 00 66 c7 45 de 2f 00 66 c7 45 e0 2f 00 } //01 00 
		$a_03_1 = {6a 7c 8d 4d 90 01 01 89 5d 90 01 01 e8 90 01 04 83 c6 04 ff 4d f0 8b d8 75 b6 90 00 } //01 00 
		$a_03_2 = {68 bb 01 00 00 50 8d 4d 90 01 01 e8 90 01 04 8b d8 f7 db 1a db 8d 4d fc fe c3 e8 90 01 04 84 db 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
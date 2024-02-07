
rule Trojan_BAT_Downloader_CAK_MTB{
	meta:
		description = "Trojan:BAT/Downloader.CAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 30 64 35 31 39 32 62 30 2d 31 33 65 65 2d 34 30 35 31 2d 39 36 32 39 2d 38 30 38 39 63 30 66 33 31 36 33 35 } //01 00  $0d5192b0-13ee-4051-9629-8089c0f31635
		$a_81_1 = {68 74 74 70 73 3a 2f 2f 61 2e 75 67 75 75 2e 73 65 2f 79 55 75 75 4a 6a 69 6f 2e 74 78 74 } //01 00  https://a.uguu.se/yUuuJjio.txt
		$a_01_2 = {68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 } //01 00  https://cdn.discordapp.com/attachments
		$a_01_3 = {43 3a 5c 55 73 65 72 73 5c 6a 70 69 6e 74 5c 73 6f 75 72 63 65 5c 72 65 70 6f 73 5c 53 74 75 62 75 6c 61 72 5c 53 74 75 62 75 6c 61 72 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 53 74 75 62 75 6c 61 72 2e 70 64 62 } //01 00  C:\Users\jpint\source\repos\Stubular\Stubular\obj\Release\Stubular.pdb
		$a_81_4 = {47 72 65 65 6e 4c 69 67 68 74 2e 63 61 72 64 } //01 00  GreenLight.card
		$a_01_5 = {47 72 65 65 6e 4c 69 67 68 74 2e 64 6c 6c } //01 00  GreenLight.dll
		$a_01_6 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_7 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_01_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}
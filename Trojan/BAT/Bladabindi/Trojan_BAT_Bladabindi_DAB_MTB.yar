
rule Trojan_BAT_Bladabindi_DAB_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.DAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {78 79 7a 2e 65 78 65 } //01 00  xyz.exe
		$a_01_1 = {24 36 35 38 34 32 33 66 39 2d 39 61 34 33 2d 34 33 63 36 2d 39 38 66 38 2d 62 37 32 31 66 36 37 39 64 36 36 62 } //01 00  $658423f9-9a43-43c6-98f8-b721f679d66b
		$a_01_2 = {47 65 74 54 65 6d 70 46 69 6c 65 50 61 74 68 } //01 00  GetTempFilePath
		$a_01_3 = {43 72 79 70 74 6f 54 72 61 6e 73 66 6f 72 6d } //01 00  CryptoTransform
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_5 = {46 3a 5c 70 61 79 6c 6f 61 64 46 20 2d 20 43 6f 70 79 20 28 32 29 5c 46 69 6e 61 6c 42 75 69 6c 64 5c 46 69 6e 61 6c 42 75 69 6c 64 5c 46 69 6e 61 6c 42 75 69 6c 64 5c 6f 62 6a 5c 44 65 62 75 67 5c 57 69 6e 64 6f 77 73 52 75 6e 6e 65 72 2e 70 64 62 } //00 00  F:\payloadF - Copy (2)\FinalBuild\FinalBuild\FinalBuild\obj\Debug\WindowsRunner.pdb
	condition:
		any of ($a_*)
 
}
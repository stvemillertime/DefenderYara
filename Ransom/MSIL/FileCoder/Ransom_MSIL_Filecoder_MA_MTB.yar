
rule Ransom_MSIL_Filecoder_MA_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {0b 07 06 6f 90 01 03 0a 0c 03 19 73 90 01 03 0a 0d 73 90 01 03 0a 13 04 09 11 04 08 08 6f 90 01 03 0a 16 73 90 01 03 0a 13 05 04 18 73 90 01 03 0a 13 06 2b 0b 11 06 11 07 d2 6f 90 01 03 0a 00 11 05 6f 90 01 03 0a 25 13 07 15 fe 01 16 fe 01 13 08 11 08 2d df 90 00 } //01 00 
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 } //01 00  DisableTaskmgr
		$a_01_3 = {44 65 63 72 79 70 74 46 69 6c 65 } //01 00  DecryptFile
		$a_01_4 = {45 6e 63 72 79 70 74 46 69 6c 65 73 } //01 00  EncryptFiles
		$a_01_5 = {6c 00 6f 00 63 00 6b 00 66 00 69 00 6c 00 65 00 } //01 00  lockfile
		$a_01_6 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_7 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_8 = {2a 00 2e 00 66 00 72 00 65 00 65 00 75 00 6b 00 72 00 61 00 69 00 6e 00 65 00 } //01 00  *.freeukraine
		$a_01_9 = {59 00 6f 00 75 00 72 00 20 00 61 00 6c 00 6c 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 69 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 } //00 00  Your all files in encrypted.
	condition:
		any of ($a_*)
 
}
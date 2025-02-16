
rule Ransom_Win32_Filecoder_AC_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_80_0 = {43 72 79 70 74 45 6e 63 72 79 70 74 20 66 61 69 6c 65 64 } //CryptEncrypt failed  01 00 
		$a_80_1 = {52 61 6e 73 6f 6d 5c 52 65 6c 65 61 73 65 5c 52 61 6e 73 6f 6d 2e 70 64 62 } //Ransom\Release\Ransom.pdb  01 00 
		$a_80_2 = {57 61 6c 6b 20 64 69 72 65 63 74 6f 72 79 20 63 72 79 70 74 20 66 61 69 6c 65 64 } //Walk directory crypt failed  01 00 
		$a_80_3 = {69 6e 69 74 5f 63 72 79 70 74 } //init_crypt  00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Filecoder_AC_MTB_2{
	meta:
		description = "Ransom:Win32/Filecoder.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 4c 4c 20 59 4f 55 52 20 46 49 4c 45 53 20 48 41 53 20 42 45 45 4e 20 45 4e 43 52 59 50 54 45 44 } //01 00  ALL YOUR FILES HAS BEEN ENCRYPTED
		$a_01_1 = {46 6f 72 20 75 6e 6c 6f 63 6b 20 79 6f 75 72 20 66 69 6c 65 73 20 66 6f 6c 6c 6f 77 20 74 68 65 20 69 6e 73 74 72 75 63 74 69 6f 6e 73 20 66 72 6f 6d 20 74 68 65 20 72 65 61 64 6d 65 5f 66 6f 72 5f 75 6e 6c 6f 63 6b 2e 74 78 74 } //01 00  For unlock your files follow the instructions from the readme_for_unlock.txt
		$a_01_2 = {72 00 65 00 61 00 64 00 6d 00 65 00 5f 00 66 00 6f 00 72 00 5f 00 75 00 6e 00 6c 00 6f 00 63 00 6b 00 2e 00 74 00 78 00 74 00 } //01 00  readme_for_unlock.txt
		$a_01_3 = {2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //00 00  /c vssadmin.exe delete shadows /all /quiet
	condition:
		any of ($a_*)
 
}

rule Trojan_Win32_Donut_CB_MTB{
	meta:
		description = "Trojan:Win32/Donut.CB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 00 6e 00 69 00 72 00 74 00 53 00 64 00 61 00 6f 00 6c 00 6e 00 77 00 6f 00 44 00 } //01 00  gnirtSdaolnwoD
		$a_01_1 = {67 00 6e 00 69 00 72 00 74 00 53 00 34 00 36 00 65 00 73 00 61 00 42 00 6d 00 6f 00 72 00 46 00 } //01 00  gnirtS46esaBmorF
		$a_01_2 = {43 00 79 00 62 00 65 00 72 00 53 00 45 00 43 00 78 00 2f 00 52 00 54 00 4b 00 5f 00 41 00 64 00 76 00 5f 00 44 00 49 00 6e 00 76 00 6f 00 6b 00 65 00 5f 00 42 00 36 00 34 00 5f 00 42 00 69 00 6e 00 61 00 72 00 79 00 } //01 00  CyberSECx/RTK_Adv_DInvoke_B64_Binary
		$a_01_3 = {43 00 79 00 62 00 65 00 72 00 64 00 79 00 6e 00 65 00 } //01 00  Cyberdyne
		$a_01_4 = {70 00 65 00 65 00 6c 00 53 00 } //01 00  peelS
		$a_01_5 = {53 4d 5f 4c 41 53 54 53 4d 5f 78 36 34 2e 65 78 65 } //01 00  SM_LASTSM_x64.exe
		$a_01_6 = {54 00 33 00 50 00 52 00 39 00 34 00 46 00 4e 00 } //00 00  T3PR94FN
	condition:
		any of ($a_*)
 
}
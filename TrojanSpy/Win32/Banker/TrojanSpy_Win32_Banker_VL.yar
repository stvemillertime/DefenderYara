
rule TrojanSpy_Win32_Banker_VL{
	meta:
		description = "TrojanSpy:Win32/Banker.VL,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {55 42 53 61 75 74 68 65 6e 74 69 63 61 74 65 41 58 43 2e 6f 63 78 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //0a 00 
		$a_02_1 = {53 56 8b d8 b1 37 b2 37 b0 37 e8 90 01 03 ff 8b d0 8b 83 e0 02 00 00 e8 90 01 03 ff b1 ff b2 ff b0 ff e8 90 01 03 ff 8b d0 8b c3 e8 90 01 03 ff 33 d2 8b 83 e0 02 00 00 e8 90 01 03 ff b2 01 a1 90 01 02 46 00 e8 90 01 03 ff 90 00 } //01 00 
		$a_01_2 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_00_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //00 00  ShellExecuteA
	condition:
		any of ($a_*)
 
}

rule Trojan_Win32_ProcKiller_C_MTB{
	meta:
		description = "Trojan:Win32/ProcKiller.C!MTB,SIGNATURE_TYPE_PEHSTR,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  cmd /c taskkill.exe /f /im svchost.exe
		$a_01_1 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //01 00  HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\
		$a_01_2 = {72 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 } //01 00  regwrite
		$a_01_3 = {31 00 2e 00 76 00 62 00 70 00 } //01 00  1.vbp
		$a_01_4 = {76 62 36 63 68 73 2e 64 6c 6c } //00 00  vb6chs.dll
		$a_01_5 = {00 5d 04 00 00 0a 42 04 80 5c 24 00 00 } //0b 42 
	condition:
		any of ($a_*)
 
}
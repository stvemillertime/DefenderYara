
rule BrowserModifier_Win32_Xider{
	meta:
		description = "BrowserModifier:Win32/Xider,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 74 5c 43 4c 53 49 44 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext\CLSID
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 41 70 70 72 6f 76 65 64 45 78 74 65 6e 73 69 6f 6e 73 4d 69 67 72 61 74 69 6f 6e } //02 00  Software\Microsoft\Internet Explorer\ApprovedExtensionsMigration
		$a_01_2 = {63 72 69 65 65 6e 61 62 6c 65 72 } //02 00  crieenabler
		$a_01_3 = {49 65 45 6e 61 62 6c 65 72 2e 65 78 65 } //00 00  IeEnabler.exe
		$a_00_4 = {78 f4 00 } //00 22 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Xider_2{
	meta:
		description = "BrowserModifier:Win32/Xider,SIGNATURE_TYPE_PEHSTR_EXT,22 00 22 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 74 5c 43 4c 53 49 44 } //0a 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext\CLSID
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 41 70 70 72 6f 76 65 64 20 45 78 74 65 6e 73 69 6f 6e 73 } //0a 00  Software\Microsoft\Internet Explorer\Approved Extensions
		$a_01_2 = {00 65 6e 61 62 6c 65 5f 62 68 6f 00 } //02 00  攀慮汢彥桢o
		$a_01_3 = {63 72 69 65 65 6e 61 62 6c 65 72 } //02 00  crieenabler
		$a_01_4 = {49 45 45 78 74 65 6e 73 69 6f 6e 55 74 69 6c 73 } //02 00  IEExtensionUtils
		$a_01_5 = {49 65 45 6e 61 62 6c 65 72 2e 65 78 65 } //02 00  IeEnabler.exe
		$a_01_6 = {41 6c 72 65 61 64 79 20 61 70 70 72 6f 76 65 64 20 74 68 69 73 20 62 68 6f 20 69 6e 20 74 68 65 20 70 61 73 74 } //00 00  Already approved this bho in the past
		$a_00_7 = {78 3d 01 00 1a 00 1a 00 05 00 00 0a 00 39 01 53 6f 66 74 77 61 72 } //65 5c 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Xider_3{
	meta:
		description = "BrowserModifier:Win32/Xider,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 74 5c 50 72 65 41 70 70 72 6f 76 65 64 } //0a 00  Software\Microsoft\Windows\CurrentVersion\Ext\PreApproved
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 74 5c 43 4c 53 49 44 } //01 00  Software\Microsoft\Windows\CurrentVersion\Policies\Ext\CLSID
		$a_03_2 = {65 72 72 5f 75 6e 6d 69 78 69 6e 67 5f 69 65 5f 65 6e 61 62 6c 65 72 5f 90 02 09 43 6f 70 79 69 6e 67 20 66 72 6f 6d 90 02 09 5c 90 02 0f 2e 74 6d 70 90 00 } //01 00 
		$a_03_3 = {65 72 72 5f 65 78 74 72 61 74 69 6e 67 5f 69 65 5f 65 6e 61 62 6c 65 72 90 0a a0 00 5c 90 02 08 2d 90 02 04 2d 90 02 04 2d 90 02 04 2d 90 02 0c 2d 32 2e 65 78 65 90 00 } //05 00 
		$a_03_4 = {2f 6d 6f 6e 65 74 69 7a 61 74 69 6f 6e 2e 67 69 66 3f 65 76 65 6e 74 3d 90 02 02 26 69 62 69 63 3d 90 01 03 26 76 65 72 69 66 69 65 72 3d 90 01 03 26 63 61 6d 70 61 69 67 6e 3d 90 00 } //00 00 
		$a_00_5 = {7e 15 00 00 73 de 5b 70 0c 8e 9a 86 88 22 e1 3a 89 52 e9 16 45 c7 3a db 4d } //87 10 
	condition:
		any of ($a_*)
 
}

rule BrowserModifier_Win32_Raxtecon{
	meta:
		description = "BrowserModifier:Win32/Raxtecon,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 63 6f 6e 64 65 66 73 65 74 75 70 2e 6c 6f 67 } //01 00  \condefsetup.log
		$a_01_1 = {5c 43 6f 6e 74 65 6e 74 20 44 65 66 65 6e 64 65 72 } //01 00  \Content Defender
		$a_01_2 = {5c 63 6f 6e 64 65 66 72 6d 2e 62 61 74 } //01 00  \condefrm.bat
		$a_01_3 = {43 6f 6e 74 65 6e 74 44 65 66 65 6e 64 65 72 5c 52 65 6c 65 61 73 65 5c 63 6f 6e 64 65 66 63 6c 65 61 6e 2e 70 64 62 } //00 00  ContentDefender\Release\condefclean.pdb
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Raxtecon_2{
	meta:
		description = "BrowserModifier:Win32/Raxtecon,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 65 62 20 43 6f 6e 74 65 6e 74 20 42 6c 6f 63 6b 65 64 20 62 79 20 43 6f 6e 74 65 6e 74 20 44 65 66 65 6e 64 65 72 } //01 00  Web Content Blocked by Content Defender
		$a_01_1 = {43 6f 6e 44 65 66 53 65 74 75 70 2e 65 78 65 } //01 00  ConDefSetup.exe
		$a_01_2 = {63 6f 6e 74 65 6e 74 64 65 66 65 6e 64 65 72 64 72 76 2e 73 79 73 } //01 00  contentdefenderdrv.sys
		$a_03_3 = {68 74 74 70 3a 2f 2f 63 6f 6e 74 65 6e 74 64 65 66 65 6e 64 65 72 2d 90 1d 05 00 2e 6f 72 67 2f 76 65 72 73 69 6f 6e 2f 63 68 65 63 6b 6e 65 77 2f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Raxtecon_3{
	meta:
		description = "BrowserModifier:Win32/Raxtecon,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 53 00 65 00 74 00 75 00 70 00 } //01 00  Content Defender Setup
		$a_01_1 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  Content Defender Administration
		$a_01_2 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 } //01 00  ContentDefenderControl
		$a_01_3 = {63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 64 00 72 00 76 00 2e 00 73 00 79 00 73 00 } //01 00  contentdefenderdrv.sys
		$a_01_4 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  ContentDefender.exe
		$a_01_5 = {43 00 6f 00 6e 00 44 00 65 00 66 00 53 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  ConDefSe.exe
		$a_01_6 = {41 00 72 00 74 00 65 00 78 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 } //01 00  Artex Management
		$a_03_7 = {63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 2d 00 90 02 10 2f 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2f 00 63 00 68 00 65 00 63 00 6b 00 6e 00 65 00 77 00 2f 00 90 00 } //00 00 
		$a_00_8 = {78 d2 01 } //00 06 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Raxtecon_4{
	meta:
		description = "BrowserModifier:Win32/Raxtecon,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 20 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 20 00 53 00 65 00 74 00 75 00 70 00 20 00 57 00 69 00 7a 00 61 00 72 00 64 00 } //01 00  Content Protector Setup Wizard
		$a_01_1 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 43 00 6f 00 6e 00 72 00 6f 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00  ContentProtectorConrol.exe
		$a_01_2 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 55 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  ContentProtectorUpdate.exe
		$a_01_3 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 44 00 72 00 76 00 2e 00 73 00 79 00 73 00 } //01 00  ContentProtectorDrv.sys
		$a_01_4 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  ContentProtector.exe
		$a_01_5 = {43 00 6f 00 6e 00 50 00 72 00 6f 00 74 00 53 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  ConProtSe.exe
		$a_01_6 = {41 00 72 00 74 00 65 00 78 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 } //01 00  Artex Management
		$a_01_7 = {66 00 75 00 6c 00 6c 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 5f 00 75 00 72 00 6c 00 } //01 00  full_installer_url
		$a_03_8 = {63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 2d 00 90 02 10 2f 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2f 00 63 00 68 00 65 00 63 00 6b 00 6e 00 65 00 77 00 2f 00 90 00 } //00 00 
		$a_00_9 = {87 10 00 00 } //2b 59 
	condition:
		any of ($a_*)
 
}
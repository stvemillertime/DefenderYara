
rule VirTool_Win32_VBInject_UY{
	meta:
		description = "VirTool:Win32/VBInject.UY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 80 08 00 00 e8 90 01 03 ff 83 c4 1c 68 90 01 02 40 00 e8 90 01 03 ff 57 89 45 b4 ff 75 bc 89 75 ac 8d 5d ac e8 90 01 03 ff 8b c8 8b d3 e8 90 01 03 ff 68 90 01 02 40 00 e8 90 01 03 ff 6a 01 89 45 a4 ff 75 bc 89 75 9c 8d 5d 9c e8 90 01 03 ff 8b c8 8b d3 90 00 } //01 00 
		$a_01_1 = {26 00 48 00 35 00 39 00 35 00 39 00 35 00 39 00 35 00 38 00 } //01 00  &H59595958
		$a_01_2 = {26 00 48 00 36 00 38 00 } //01 00  &H68
		$a_01_3 = {26 00 48 00 45 00 38 00 } //01 00  &HE8
		$a_01_4 = {26 00 48 00 43 00 33 00 } //01 00  &HC3
		$a_01_5 = {4e 00 74 00 55 00 6e 00 6d 00 61 00 70 00 56 00 69 00 65 00 77 00 4f 00 66 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //00 00  NtUnmapViewOfSection
	condition:
		any of ($a_*)
 
}
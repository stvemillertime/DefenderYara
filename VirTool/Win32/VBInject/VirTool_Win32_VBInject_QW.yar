
rule VirTool_Win32_VBInject_QW{
	meta:
		description = "VirTool:Win32/VBInject.QW,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {ff ff c3 00 6a 01 90 09 05 00 66 c7 85 90 00 } //01 00 
		$a_03_1 = {58 59 59 59 6a 04 90 09 06 00 c7 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_2 = {ff ff 59 50 6a 02 90 09 05 00 66 c7 85 90 00 } //01 00 
		$a_03_3 = {e8 00 6a 01 90 09 07 00 66 c7 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
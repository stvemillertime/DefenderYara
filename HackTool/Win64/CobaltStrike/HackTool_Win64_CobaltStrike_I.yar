
rule HackTool_Win64_CobaltStrike_I{
	meta:
		description = "HackTool:Win64/CobaltStrike.I,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 63 c0 48 03 c0 0f 10 04 c2 48 8b c1 f3 0f 7f 01 c3 } //01 00 
		$a_03_1 = {8b d1 48 8b 0d 90 01 04 e9 90 01 02 ff ff cc cc 8b d1 48 8b 0d 90 01 04 e9 90 01 02 ff ff cc cc 8b d1 48 8b 0d 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}

rule Ransom_Win32_Locky_RPX_MTB{
	meta:
		description = "Ransom:Win32/Locky.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {03 54 24 0c 83 44 24 38 19 83 44 24 40 0a 8b c3 0f af 44 24 10 8d 34 c0 03 f2 03 f6 47 83 6c 24 20 01 75 8d } //01 00 
		$a_01_1 = {8b 54 24 18 8b 7c 24 0c 8b c1 0f af c6 89 44 24 78 8d 84 3a f9 01 00 00 89 44 24 18 8b 44 24 14 0f af c1 03 c7 8d 34 db 03 f0 } //00 00 
	condition:
		any of ($a_*)
 
}
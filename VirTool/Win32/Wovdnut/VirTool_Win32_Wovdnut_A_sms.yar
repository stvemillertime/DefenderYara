
rule VirTool_Win32_Wovdnut_A_sms{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {80 3e 00 75 90 01 01 c7 44 14 29 64 6c 6c 00 42 03 ca 33 d2 38 11 74 90 01 01 8d 74 90 00 } //01 00 
		$a_01_1 = {8b 4f 50 b8 00 30 00 00 56 6a 40 50 89 44 24 1c b8 00 10 00 00 03 c8 51 6a 00 ff 53 3c } //01 00 
		$a_03_2 = {68 05 00 00 20 55 89 90 01 01 89 90 01 01 04 ff 90 01 02 00 00 00 85 c0 74 33 8b 03 0b 43 04 74 2c 6a 04 68 00 30 00 00 ff 33 90 01 01 ff 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_2{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {80 3e 00 75 90 01 01 c7 44 14 29 64 6c 6c 00 42 03 ca 33 d2 38 11 74 90 01 01 8d 74 24 90 00 } //01 00 
		$a_03_1 = {6a 40 b8 00 30 00 00 b9 00 10 00 00 50 89 44 24 90 01 01 8b 47 50 03 c1 50 90 01 01 ff 90 00 } //01 00 
		$a_03_2 = {68 05 00 00 20 55 89 90 01 01 89 90 01 01 04 ff 90 01 02 00 00 00 85 c0 74 33 8b 03 0b 43 04 74 2c 6a 04 68 00 30 00 00 ff 33 90 01 01 ff 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_3{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 8d 41 01 8b d0 c6 44 04 40 64 41 8d 41 02 c6 44 04 40 6c 41 8d 41 03 c6 44 04 40 6c 41 8d 41 04 4e 8d 0c 02 88 5c 04 40 8b d3 41 38 19 74 17 } //01 00 
		$a_01_1 = {8b 4f 50 b8 00 30 00 00 56 6a 40 50 89 44 24 1c b8 00 10 00 00 03 c8 51 6a 00 ff 53 } //01 00 
		$a_03_2 = {68 05 00 00 20 55 89 90 01 01 89 90 01 01 04 ff 90 01 02 00 00 00 85 c0 74 33 8b 03 0b 43 04 74 2c 6a 04 68 00 30 00 00 ff 33 90 01 01 ff 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_4{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 8d 41 01 8b d0 c6 44 04 40 64 41 8d 41 02 c6 44 04 40 6c 41 8d 41 03 c6 44 04 40 6c 41 8d 41 04 4e 8d 0c 02 88 5c 04 40 8b d3 41 38 19 74 17 } //01 00 
		$a_03_1 = {6a 40 b8 00 30 00 00 b9 00 10 00 00 50 89 44 24 90 01 01 8b 47 50 03 c1 50 90 01 01 ff 90 00 } //01 00 
		$a_03_2 = {68 05 00 00 20 55 89 90 01 01 89 90 01 01 04 ff 90 01 02 00 00 00 85 c0 74 33 8b 03 0b 43 04 74 2c 6a 04 68 00 30 00 00 ff 33 90 01 01 ff 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_5{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 b9 04 00 00 00 41 b8 00 30 00 00 ba a4 0f 00 00 b9 00 00 00 00 ff } //01 00 
		$a_03_1 = {83 c0 01 89 c0 c6 44 05 90 01 01 64 8b 45 90 01 01 83 c0 02 89 c0 c6 44 05 90 01 01 6c 8b 45 90 01 01 83 c0 03 89 c0 c6 44 05 90 01 01 6c 8b 45 90 01 01 83 c0 04 89 c0 c6 44 05 90 01 01 00 90 00 } //01 00 
		$a_01_2 = {ff d0 3d 76 2f 00 00 0f 85 } //01 00 
		$a_03_3 = {6e 74 64 6c 75 90 02 10 20 20 20 20 90 02 08 6c 2e 64 6c 74 90 00 } //01 00 
		$a_01_4 = {0f b7 00 66 3d 5a 77 75 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_6{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 8d 41 01 8b d0 c6 44 04 40 64 41 8d 41 02 c6 44 04 40 6c 41 8d 41 03 c6 44 04 40 6c 41 8d 41 04 4e 8d 0c 02 88 5c 04 40 8b d3 41 38 19 74 17 } //01 00 
		$a_03_1 = {ba 05 00 00 20 c7 85 90 01 04 08 00 00 00 48 8b ce ff 97 90 01 04 85 c0 0f 85 90 01 04 ff 97 90 01 04 3d 76 2f 00 00 0f 90 00 } //01 00 
		$a_03_2 = {48 81 ec 40 04 00 00 48 8b da 48 8b f1 48 8b 91 90 01 04 41 b8 00 30 00 00 33 c9 48 8d 14 55 02 00 00 00 44 8d 49 04 ff 56 48 4c 8b f0 48 85 c0 0f 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_7{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {c7 44 24 0c 04 00 00 00 c7 44 24 08 00 30 00 00 c7 44 24 04 a4 0f 00 00 c7 04 24 00 00 00 00 8b 45 90 01 01 ff 90 00 } //01 00 
		$a_03_1 = {83 c0 01 c6 44 05 90 01 01 64 8b 45 90 01 01 83 c0 02 c6 44 05 90 01 01 6c 8b 45 90 01 01 83 c0 03 c6 44 05 90 01 01 6c 8b 45 90 01 01 83 c0 04 c6 44 05 90 01 01 00 90 00 } //01 00 
		$a_01_2 = {ff d0 3d 76 2f 00 00 0f 85 } //01 00 
		$a_03_3 = {6e 74 64 6c 75 90 02 10 20 20 20 20 90 02 08 6c 2e 64 6c 74 90 00 } //01 00 
		$a_01_4 = {0f b7 00 66 3d 5a 77 75 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_8{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c0 01 89 c0 c6 44 05 20 64 8b 85 90 01 04 83 c0 02 89 c0 c6 44 05 20 6c 8b 85 90 01 04 83 c0 03 89 c0 c6 44 05 20 90 00 } //01 00 
		$a_03_1 = {ba 05 00 00 20 ff d0 85 c0 0f 84 90 01 04 48 8b 85 90 01 04 48 8b 80 90 01 04 48 85 c0 0f 84 90 01 04 48 8b 85 90 01 04 48 8b 40 90 01 01 48 8b 95 90 01 04 48 8b 92 90 01 04 41 b9 04 00 00 00 41 b8 00 30 00 00 b9 00 00 00 00 ff d0 48 89 90 00 } //01 00 
		$a_01_2 = {8b 52 50 81 c2 00 10 00 00 89 d2 41 b9 40 00 00 00 41 b8 00 30 00 00 b9 00 00 00 00 ff d0 48 89 85 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_9{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 8d 41 01 8b d0 c6 44 04 40 64 41 8d 41 02 c6 44 04 40 6c 41 8d 41 03 c6 44 04 40 6c 41 8d 41 04 4e 8d 0c 02 88 5c 04 40 8b d3 41 38 19 74 } //01 00 
		$a_03_1 = {ba 05 00 00 20 48 8b cb ff 90 01 03 00 00 85 c0 74 90 01 01 48 8b 16 48 85 d2 74 90 01 01 33 c9 45 8d 90 01 02 04 41 b8 00 30 00 00 ff 90 00 } //01 00 
		$a_01_2 = {04 b8 00 32 e0 84 44 8b e3 89 5c 24 } //01 00 
		$a_03_3 = {48 81 ec 40 04 00 00 48 8b da 48 8b f1 48 8b 91 90 01 04 41 b8 00 30 00 00 33 c9 48 8d 14 55 02 00 00 00 44 8d 49 04 ff 56 48 4c 8b f0 48 85 c0 0f 84 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Wovdnut_A_sms_10{
	meta:
		description = "VirTool:Win32/Wovdnut.A!sms,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 6c 65 33 32 3b 6f 6c 65 61 75 74 33 32 3b 77 69 6e 69 6e 65 74 3b 6d 73 63 6f 72 65 65 3b 73 68 65 6c 6c 33 32 } //01 00  ole32;oleaut32;wininet;mscoree;shell32
		$a_03_1 = {61 6d 73 69 00 90 02 08 63 6c 72 00 90 02 08 77 6c 64 70 00 90 00 } //01 00 
		$a_03_2 = {57 6c 64 70 51 75 65 72 79 44 79 6e 61 6d 69 63 43 6f 64 65 54 72 75 73 74 00 90 02 10 57 6c 64 70 49 73 43 6c 61 73 73 49 6e 41 70 70 72 6f 76 65 64 4c 69 73 74 00 90 00 } //01 00 
		$a_03_3 = {41 6d 73 69 49 6e 69 74 69 61 6c 69 7a 65 00 90 02 08 41 6d 73 69 53 63 61 6e 42 75 66 66 65 72 00 90 02 08 41 6d 73 69 53 63 61 6e 53 74 72 69 6e 67 00 90 00 } //01 00 
		$a_01_4 = {2f cb 3a ab d2 11 9c 40 00 c0 4f a3 0a 3e 22 67 2f cb 3a ab d2 11 9c 40 00 c0 4f a3 0a 3e dc } //01 00 
	condition:
		any of ($a_*)
 
}
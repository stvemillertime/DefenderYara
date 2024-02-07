
rule Trojan_MacOS_KeyStealer_A{
	meta:
		description = "Trojan:MacOS/KeyStealer.A,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 4d 6f 62 69 6c 65 44 65 76 69 63 65 2f 50 72 6f 76 69 73 69 6f 6e 69 6e 67 20 50 72 6f 66 69 6c 65 73 } //01 00  /MobileDevice/Provisioning Profiles
		$a_00_1 = {2f 4c 69 62 72 61 72 79 2f 4c 61 75 6e 63 68 44 61 65 6d 6f 6e 73 2f 63 6f 6d 2e 61 70 70 6c 65 2e 67 6f 6f 67 6c 65 63 68 72 6f 6d 65 2e 70 6c 69 73 74 } //01 00  /Library/LaunchDaemons/com.apple.googlechrome.plist
		$a_00_2 = {78 61 74 74 72 20 2d 63 20 2d 72 20 25 40 } //01 00  xattr -c -r %@
		$a_00_3 = {63 68 6d 6f 64 20 2b 78 20 25 40 } //00 00  chmod +x %@
	condition:
		any of ($a_*)
 
}
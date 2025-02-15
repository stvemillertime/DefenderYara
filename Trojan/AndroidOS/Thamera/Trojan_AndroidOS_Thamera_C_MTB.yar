
rule Trojan_AndroidOS_Thamera_C_MTB{
	meta:
		description = "Trojan:AndroidOS/Thamera.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 72 67 2f 6a 61 63 6b 61 6a 6b 73 2f 74 68 65 72 2f 53 6d 73 52 65 63 65 69 76 65 72 } //01 00  org/jackajks/ther/SmsReceiver
		$a_01_1 = {53 4d 53 5f 41 50 50 5f 4e 45 57 5f 43 41 4c 4c } //01 00  SMS_APP_NEW_CALL
		$a_01_2 = {53 63 68 65 64 75 6c 65 64 4d 65 73 73 61 67 65 52 65 63 65 69 76 65 72 } //01 00  ScheduledMessageReceiver
		$a_01_3 = {69 73 53 6d 73 43 61 70 61 62 6c 65 } //01 00  isSmsCapable
		$a_01_4 = {63 6f 6d 2e 61 6e 64 72 6f 69 64 2e 63 6f 6e 74 61 63 74 73 2f 63 6f 6e 74 61 63 74 73 } //01 00  com.android.contacts/contacts
		$a_01_5 = {48 65 61 64 6c 65 73 73 53 6d 73 53 65 6e 64 53 65 72 76 69 63 65 } //00 00  HeadlessSmsSendService
	condition:
		any of ($a_*)
 
}
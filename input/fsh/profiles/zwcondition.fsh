Profile: ZimCondition
Parent: Condition
Id: zw-condition
Title: "Zimbabwe Condition"
Description: "A clinical condition, problem or diagnosis recorded for a Zimbabwe patient."

* ^status = #draft

* clinicalStatus MS
* verificationStatus MS
* category MS
* code 1..1 MS

* subject 1..1 MS
* subject only Reference(ZimPatient)

* encounter MS
* encounter only Reference(ZimEncounter)

* onset[x] MS
* recordedDate MS

* recorder MS
* recorder only Reference(ZimPractitioner)

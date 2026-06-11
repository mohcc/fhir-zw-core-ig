Profile: ZimProcedure
Parent: Procedure
Id: zw-procedure
Title: "Zimbabwe Procedure"
Description: "A procedure performed on a Zimbabwe patient."

* ^status = #draft

* status 1..1 MS
* code 1..1 MS

* subject 1..1 MS
* subject only Reference(ZimPatient)

* encounter MS
* encounter only Reference(ZimEncounter)

* performed[x] MS

* performer MS
* performer.actor only Reference(ZimPractitioner or ZimOrganization)

* reasonReference MS
* reasonReference only Reference(ZimCondition)

* location MS
* location only Reference(ZimLocation)

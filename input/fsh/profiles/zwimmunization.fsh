Profile: ZimImmunization
Parent: Immunization
Id: zw-immunization
Title: "Zimbabwe Immunization"
Description: "A vaccine administered to a Zimbabwe patient (e.g. under the national Expanded Programme on Immunization)."

* ^status = #draft

* status 1..1 MS
* vaccineCode 1..1 MS

* patient 1..1 MS
* patient only Reference(ZimPatient)

* encounter MS
* encounter only Reference(ZimEncounter)

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime

* primarySource MS

* location MS
* location only Reference(ZimLocation)

* performer MS
* performer.actor only Reference(ZimPractitioner or ZimOrganization)

* lotNumber MS
* doseQuantity MS
* protocolApplied MS

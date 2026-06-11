Profile: ZimMedicationRequest
Parent: MedicationRequest
Id: zw-medication-request
Title: "Zimbabwe Medication Request"
Description: "A prescription or medication order for a Zimbabwe patient."

* ^status = #draft

* status 1..1 MS
* intent 1..1 MS

* medication[x] 1..1 MS
* medication[x] only CodeableConcept

* subject 1..1 MS
* subject only Reference(ZimPatient)

* encounter MS
* encounter only Reference(ZimEncounter)

* authoredOn MS

* requester MS
* requester only Reference(ZimPractitioner)

* reasonReference MS
* reasonReference only Reference(ZimCondition)

* dosageInstruction MS

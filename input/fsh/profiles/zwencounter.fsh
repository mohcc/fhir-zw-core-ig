Profile: ZimEncounter
Parent: Encounter
Id: zw-encounter
Title: "Zimbabwe Encounter"
Description: "An interaction between a patient and one or more healthcare providers at a Zimbabwe health facility (e.g. an outpatient visit or inpatient admission)."

* ^status = #draft

* status 1..1 MS
* class 1..1 MS
* type MS

* subject 1..1 MS
* subject only Reference(ZimPatient)

* participant MS
* participant.individual MS
* participant.individual only Reference(ZimPractitioner)

* period MS

* reasonCode MS

* location MS
* location.location only Reference(ZimLocation)

* serviceProvider MS
* serviceProvider only Reference(ZimOrganization)

Profile: ZimAllergyIntolerance
Parent: AllergyIntolerance
Id: zw-allergy-intolerance
Title: "Zimbabwe Allergy Intolerance"
Description: "An allergy or intolerance (and its reactions) recorded for a Zimbabwe patient."

* ^status = #draft

* clinicalStatus MS
* verificationStatus MS
* type MS
* category MS
* criticality MS
* code 1..1 MS

* patient 1..1 MS
* patient only Reference(ZimPatient)

* encounter MS
* encounter only Reference(ZimEncounter)

* onset[x] MS
* recordedDate MS

* recorder MS
* recorder only Reference(ZimPractitioner)

* reaction MS
* reaction.manifestation MS

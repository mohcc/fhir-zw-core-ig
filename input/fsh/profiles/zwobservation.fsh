Profile: ZimObservation
Parent: Observation
Id: zw-observation
Title: "Zimbabwe Observation"
Description: "Base Observation profile for Zimbabwe: a measurement, test result or assertion about a patient. Other, more specific observation profiles can derive from this."

* ^status = #draft

* status 1..1 MS
* category MS
* code 1..1 MS

* subject 1..1 MS
* subject only Reference(ZimPatient)

* encounter MS

* effective[x] MS
* effective[x] only dateTime or Period

* performer MS
* performer only Reference(ZimPractitioner or ZimOrganization)

* value[x] MS

* dataAbsentReason MS

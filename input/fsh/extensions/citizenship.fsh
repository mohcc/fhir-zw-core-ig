Extension: Citizenship
Id: citizenship
Title: "Patient Citizenship"
Description: "The patient's legal status as citizen of a country."
Context: Patient
* extension contains
    code 0..1 MS and
    period 0..1 MS
* extension[code] ^short = "Nation code of citizenship"
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/country (preferred)
* extension[period] ^short = "Time period of citizenship"
  * valuePeriod

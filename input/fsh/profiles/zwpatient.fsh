
Profile: ZWPatient
Parent: Patient
Id: zw-patient
Title: "Zimbabwe Patient"
Description: "Patient profile for Zimbabwe with support for citizenship information."



* extension contains $citizenship named citizenship 0..*
* extension[citizenship] ^short = "Patient citizenship"



* gender 1..1
* gender from ZimGenderVS


* identifier 0..*

// Slicing configuration for identifier: slice by identifier.type.text using a pattern discriminator
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on identifier.system to distinguish National Identity, Health ID, and Passport Number"

* identifier contains NationalIdentity 0..1
* identifier contains HealthId 0..1
* identifier contains PassportNumber 0..*


* identifier[NationalIdentity].type.text = "National Identity"
* identifier[HealthId].type.text = "Health ID"
* identifier[PassportNumber].type.text = "Passport Number"

//
// * identifier[NationalIdentity].value = "01-234567B89"
// * identifier[HealthId].value = "H987654321"
// * identifier[PassportNumber].value = "AB0123456"
// 
* identifier[NationalIdentity].system = "http://mohcc.gov.zw/identifiers/nationalID"
* identifier[HealthId].system = "http://mohcc.gov.zw/fhir/identifiers/healthID"
* identifier[PassportNumber].system = "http://mohcc.gov.zw/fhir/identifiers/passport"


Invariant: NationalIdentityPattern
Description: "If present, National Identity identifier.value must match the pattern: 2 digits, a hyphen, 5 or 6 digits, one letter (case-insensitive), then 2 digits (examples: 01-234567B89, 01-23456b78)."
Expression: "identifier.where(type.text = 'National Identity').all(value.matches('^\\d{2}-\\d{5,6}[A-Za-z]\\d{2}$'))"
Severity: error

Invariant: PassportNumberPattern
Description: "If present, Passport Number identifier.value must match the pattern: 2 uppercase letters followed by 7 digits (example: AB0123456)."
Expression: "identifier.where(type.text = 'Passport Number').all(value.matches('^[A-Z]{2}\\d{7}$'))"
Severity: error
Profile: ZWPatientIdentifier
Parent: Patient
Id: ZWPatientIdentifier

Description: "Patient profile that defines identifier slices for National Identity, Health ID and Passport Number"

* identifier 0..*

// Slicing configuration for identifier: slice by identifier.type.text using a pattern discriminator
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type.text"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on identifier.type.text to distinguish National Identity, Health ID, and Passport Number"

* identifier contains NationalIdentity 0..1
* identifier contains HealthId 0..1
* identifier contains PassportNumber 0..*


* identifier[NationalIdentity].type.text = "National Identity"
* identifier[HealthId].type.text = "Health ID"
* identifier[PassportNumber].type.text = "Passport Number"

* identifier[NationalIdentity].value = "01-234567B89"
* identifier[HealthId].value = "H987654321"
* identifier[PassportNumber].value = "AB0123456"


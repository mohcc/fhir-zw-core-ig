Profile: ZimPractitioner
Parent: Practitioner
Id: zw-practitioner
Title: "Zimbabwe Practitioner"
Description: "Practitioner profile for Zimbabwe: a health worker with a professional council registration number and core demographics."

* ^status = #draft

* identifier 1..* MS
* obeys PractitionerNationalIdentityPattern

// Slice identifiers by system: professional registration number and (optionally) national identity
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on identifier.system to distinguish the professional Registration Number and the National Identity"

* identifier contains
    RegistrationNumber 1..1 MS and
    NationalIdentity 0..1 MS

* identifier[RegistrationNumber].type = $v2-0203#PRN "Provider number"
* identifier[RegistrationNumber].type.text = "Registration Number"
* identifier[RegistrationNumber].system = "http://mohcc.gov.zw/identifiers/practitioner-registration"

* identifier[NationalIdentity].type = $v2-0203#NI "National unique individual identifier"
* identifier[NationalIdentity].type.text = "National Identity"
* identifier[NationalIdentity].system = "http://mohcc.gov.zw/identifiers/nationalID"

// Core demographics
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS

* telecom MS
* gender MS

// Professional qualification(s)
* qualification MS
* qualification.code MS

Invariant: PractitionerNationalIdentityPattern
Description: "If present, National Identity identifier.value must match the pattern: 2 digits, a hyphen, 5 or 6 digits, one letter (case-insensitive), then 2 digits (example: 01-234567B89)."
Expression: "identifier.where(type.text = 'National Identity').all(value.matches('^\\\\d{2}-\\\\d{5,6}[A-Za-z]\\\\d{2}$'))"
Severity: #error

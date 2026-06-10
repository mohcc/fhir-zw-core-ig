Profile: ZimPatient
Parent: Patient
Id: zw-patient
Title: "Zimbabwe Patient"
Description: "Patient profile for Zimbabwe core data: demographics, national identifiers, citizenship, place of birth, contact details and preferred language."

* ^status = #draft

// ---------------------------------------------------------------------------
// Extensions
// ---------------------------------------------------------------------------
* extension contains
    Citizenship named citizenship 0..* MS and
    $birthPlace named placeofbirth 0..1 MS
* extension[citizenship] ^short = "Patient citizenship"
* extension[placeofbirth] ^short = "Patient place of birth"

// ---------------------------------------------------------------------------
// Core demographics
// ---------------------------------------------------------------------------
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS

* gender 1..1 MS
* gender from ZimGenderVS (required)

* birthDate 1..1 MS

* maritalStatus 1..1 MS
* maritalStatus from ZimMaritalStatusVS (required)

* deceased[x] 0..1 MS

// ---------------------------------------------------------------------------
// Contact details
// ---------------------------------------------------------------------------
* telecom 0..* MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS

// Preferred language (Zimbabwe official languages)
* communication 0..* MS
* communication.language from ZimLanguageVS (preferred)

// Next of kin / emergency contact
* contact 0..* MS
* contact.relationship MS
* contact.name MS
* contact.telecom MS

// ---------------------------------------------------------------------------
// Address with Zimbabwe province binding
// ---------------------------------------------------------------------------
* address 0..* MS
* address.line MS
* address.city MS
* address.district MS
* address.state 0..1 MS
* address.state ^short = "Province"
* address.state ^label = "Province"
* address.state ^definition = "The province within Zimbabwe (carried in the FHIR Address.state element)."
* address.state from ZimProvinceVS (required)
* address.country 1..1
* address.country = "ZW"  // restrict country to Zimbabwe

// ---------------------------------------------------------------------------
// Identifiers
// ---------------------------------------------------------------------------
* identifier 1..* MS
* obeys NationalIdentityPattern and PassportNumberPattern and HealthIdPattern

// Slice identifiers by identifier.system to distinguish National Identity, Health ID and Passport Number
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on identifier.system to distinguish National Identity, Health ID, and Passport Number"

* identifier contains
    NationalIdentity 0..1 MS and
    HealthId 0..1 MS and
    PassportNumber 0..* MS

// Coded identifier types (HL7 v2-0203) plus human-readable text.
// Health ID has no standard v2-0203 code, so it carries text only.
* identifier[NationalIdentity].type = $v2-0203#NI "National unique individual identifier"
* identifier[NationalIdentity].type.text = "National Identity"
* identifier[HealthId].type.text = "Health ID"
* identifier[PassportNumber].type = $v2-0203#PPN "Passport number"
* identifier[PassportNumber].type.text = "Passport Number"

* identifier[NationalIdentity].system = "http://mohcc.gov.zw/identifiers/nationalID"
* identifier[HealthId].system = "http://mohcc.gov.zw/identifiers/phid"
* identifier[PassportNumber].system = "http://mohcc.gov.zw/identifiers/passport"


Invariant: NationalIdentityPattern
Description: "If present, National Identity identifier.value must match the pattern: 2 digits, a hyphen, 5 or 6 digits, one letter (case-insensitive), then 2 digits (examples: 01-234567B89, 01-23456b78)."
Expression: "identifier.where(type.text = 'National Identity').all(value.matches('^\\\\d{2}-\\\\d{5,6}[A-Za-z]\\\\d{2}$'))"
Severity: #error

Invariant: PassportNumberPattern
Description: "If present, Passport Number identifier.value must match the pattern: 2 uppercase letters followed by 6 or 7 digits (example: CN123456)."
Expression: "identifier.where(type.text = 'Passport Number').all(value.matches('^[A-Z]{2}\\\\d{6,7}$'))"
Severity: #error

Invariant: HealthIdPattern
Description: "If present, the Health ID (PHID) must follow the format DDDSDDDX: three digits, one letter (A-Z excluding I and O), three digits, and a final Luhn check digit (a digit). This invariant enforces the structural format; the Luhn check digit value itself must be validated by the assigning system / application layer."
Expression: "identifier.where(type.text = 'Health ID').all(value.matches('^[0-9]{3}[A-HJ-NP-Z][0-9]{3}[0-9]$'))"
Severity: #error

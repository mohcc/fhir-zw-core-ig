Profile: ZimRelatedPerson
Parent: RelatedPerson
Id: zw-related-person
Title: "Zimbabwe Related Person"
Description: "A person related to a Zimbabwe patient (e.g. next of kin, guardian or emergency contact)."

* ^status = #draft

// The patient this person is related to
* patient 1..1 MS
* patient only Reference(ZimPatient)

* relationship 1..* MS

// Core demographics
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS

* telecom MS

* gender MS
* gender from ZimGenderVS (required)

* birthDate MS

// Address with Zimbabwe province binding
* address MS
* address.line MS
* address.city MS
* address.district MS
* address.state 0..1 MS
* address.state ^short = "Province"
* address.state ^label = "Province"
* address.state ^definition = "The province within Zimbabwe (carried in the FHIR Address.state element)."
* address.state from ZimProvinceVS (required)
* address.country 1..1
* address.country = "ZW"

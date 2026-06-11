Profile: ZimOrganization
Parent: Organization
Id: zw-organization
Title: "Zimbabwe Organization"
Description: "Organization profile for Zimbabwe, used primarily for health facilities (hospitals, clinics, health centres)."

* ^status = #draft

* identifier 1..* MS
* obeys FacilityCodePattern
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on identifier.system for the national facility code"

* identifier contains FacilityCode 0..1 MS
* identifier[FacilityCode].type.text = "Facility Code"
* identifier[FacilityCode].system = "http://mohcc.gov.zw/identifiers/facility-code"

* active 1..1 MS
* name 1..1 MS

* type MS
* type from ZimFacilityTypeVS (extensible)

* telecom MS

* address MS
* address.state 0..1 MS
* address.state ^short = "Province"
* address.state ^label = "Province"
* address.state ^definition = "The province within Zimbabwe (carried in the FHIR Address.state element)."
* address.state from ZimProvinceVS (required)
* address.district MS
* address.district from ZimDistrictVS (required)
* address.country 1..1
* address.country = "ZW"

* partOf only Reference(ZimOrganization)
* partOf MS

Invariant: FacilityCodePattern
Description: "If present, Facility Code must be ZW followed by the 6-character national facility code, which is composed of the 2-digit province code (01-10) + 2-digit district + 2-character facility number (i.e. province code + district = district code, e.g. 0132; + facility = facility code, e.g. 013224). The facility number is alphanumeric; hospitals typically include a letter (examples: ZW010245, ZW03090D)."
Expression: "identifier.where(type.text = 'Facility Code').all(value.matches('^ZW(0[1-9]|10)[0-9A-Z]{4}$'))"
Severity: #error

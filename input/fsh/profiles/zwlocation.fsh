Profile: ZimLocation
Parent: Location
Id: zw-location
Title: "Zimbabwe Location"
Description: "Location profile for Zimbabwe: a physical place where care is delivered, managed by a Zimbabwe Organization."

* ^status = #draft

* identifier MS
* status MS
* name 1..1 MS
* type MS

* telecom MS

* address MS
* address.state 0..1 MS
* address.state ^short = "Province"
* address.state ^label = "Province"
* address.state ^definition = "The province within Zimbabwe (carried in the FHIR Address.state element)."
* address.state from ZimProvinceVS (required)
* address.district MS
* address.country 1..1
* address.country = "ZW"

* managingOrganization only Reference(ZimOrganization)
* managingOrganization MS

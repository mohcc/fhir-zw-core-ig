Instance: zw-patient-example
InstanceOf: ZimPatient
Title: "Example Zimbabwean Patient"
Description: "A simple patient example with core demographics and identifiers."

* birthDate = "1985-06-15"
* gender = #female
* name[0].family = "Moyo"
* name[0].given = "Tendai"

// identifiers inherited from ZWPatientIdentifier
* identifier[0].type.text = "National Identity"
* identifier[0].value = "01-234567B89"
* identifier[1].type.text = "Health ID"
* identifier[1].value = "H987654321"

// add address
* address[0].line[0] = "123 Main Street"
* address[0].city = "Harare"
* address[0].state = #ZW-HA
* address[0].postalCode = "00263"
* address[0].country = #ZW

// add citizenship extension
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#ZW "Zimbabwe"

* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#U

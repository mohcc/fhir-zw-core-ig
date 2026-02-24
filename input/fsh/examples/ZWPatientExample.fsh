Instance: zw-patient-example
InstanceOf: ZWPatient
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

// add citizenship extension
* extension[citizenship].extension[code].valueCodeableConcept = http://hl7.org/fhir/ValueSet/country#ZW "Zimbabwe"

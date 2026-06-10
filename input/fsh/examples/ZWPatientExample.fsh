Instance: zw-patient-example
InstanceOf: ZimPatient
Title: "Example Zimbabwean Patient"
Description: "A Zimbabwean patient with core demographics, national identifiers, contact details, preferred language and citizenship."

* name[0].use = #official
* name[0].family = "Moyo"
* name[0].given = "Tendai"

* gender = #female
* birthDate = "1985-06-15"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"

* telecom[0].system = #phone
* telecom[0].value = "+263772123456"
* telecom[0].use = #mobile

* communication[0].language = urn:ietf:bcp:47#sn "Shona"
* communication[0].preferred = true

// identifiers (sliced in the ZimPatient profile)
* identifier[NationalIdentity].value = "01-234567B89"
* identifier[HealthId].value = "486B3072"

// address with Zimbabwe province
* address[0].use = #home
* address[0].line[0] = "123 Main Street"
* address[0].city = "Harare"
* address[0].district = "Harare"
* address[0].state = "HA"
* address[0].postalCode = "00263"
* address[0].country = "ZW"

// next of kin
* contact[0].relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact[0].name.family = "Moyo"
* contact[0].name.given = "Farai"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+263772987654"

// citizenship extension
* extension[citizenship].extension[code].valueCodeableConcept = ZimCountryCS#ZW "Zimbabwe"

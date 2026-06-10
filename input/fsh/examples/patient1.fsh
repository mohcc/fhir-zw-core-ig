Instance: patient1
InstanceOf: ZimPatient
Title: "Example Zimbabwean Patient (Tinashe Muti)"
Description: "A Zimbabwean patient with place of birth, citizenship and national/passport identifiers."

* name
  * use = #official
  * family = "Muti"
  * given = "Tinashe"

* gender = #male
* birthDate = "2000-03-10"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#U "unmarried"

* extension[placeofbirth].valueAddress.district = "Mutoko"
* extension[citizenship].extension[code].valueCodeableConcept = ZimCountryCS#ZW "Zimbabwe"

* address[0].country = "ZW"

* identifier[NationalIdentity].value = "01-205102B60"
* identifier[PassportNumber].value = "CN123456"

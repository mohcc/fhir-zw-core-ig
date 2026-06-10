Instance: relatedperson1
InstanceOf: ZimRelatedPerson
Title: "Example Related Person (Next of Kin)"
Description: "Next of kin for the example Zimbabwean patient."

* patient = Reference(zw-patient-example)
* relationship[0] = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"

* name[0].use = #official
* name[0].family = "Moyo"
* name[0].given = "Farai"

* gender = #male

* telecom[0].system = #phone
* telecom[0].value = "+263772987654"

* address[0].use = #home
* address[0].city = "Harare"
* address[0].district = "Harare"
* address[0].state = "HA"
* address[0].country = "ZW"

# patient1 - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient1**

## Example Patient: patient1

Profile: [Zimbabwe Patient](StructureDefinition-ZimPatient.md)

Tinashe Muti (official) Male, DoB: 2000-03-10 ( http://mohcc.gov.zw/identifiers/nationalID#01-205102B60)

-------

| | |
| :--- | :--- |
| Marital Status: | unmarried |
| Other Id: | `http://mohcc.gov.zw/fhir/identifiers/passport`/CZ82670 |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html) |  |
| Patient Citizenship: | * code: ZWE
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient1",
  "meta" : {
    "profile" : [
      "http://mohcc.gov.zw/fhir/core/StructureDefinition/ZimPatient"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
      "valueAddress" : {
        "district" : "Mutoko"
      }
    },
    {
      "extension" : [
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "code" : "ZWE"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
    }
  ],
  "identifier" : [
    {
      "system" : "http://mohcc.gov.zw/identifiers/nationalID",
      "value" : "01-205102B60"
    },
    {
      "system" : "http://mohcc.gov.zw/fhir/identifiers/passport",
      "value" : "CZ82670"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Muti",
      "given" : ["Tinashe"]
    }
  ],
  "gender" : "male",
  "birthDate" : "2000-03-10",
  "maritalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
        "code" : "U"
      }
    ]
  }
}

```

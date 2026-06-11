# Example Zimbabwean Patient (Tinashe Muti) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Zimbabwean Patient (Tinashe Muti)**

## Example Patient: Example Zimbabwean Patient (Tinashe Muti)

Profile: [Zimbabwe Patient](StructureDefinition-zw-patient.md)

Tinashe Muti (official) Male, DoB: 2000-03-10 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-205102B60)

-------

| | |
| :--- | :--- |
| Marital Status: | unmarried |
| Other Id: | [ZimPassportNumber](NamingSystem-zw-passport-ns.md)/CN123456 |
| Contact Detail | ZW |
| Patient Citizenship: | * code: Zimbabwe
 |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) |  |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "district" : "Mutoko"
    }
  },
  {
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://mohcc.gov.zw/fhir/core/CodeSystem/ZimCountryCS",
          "code" : "ZW",
          "display" : "Zimbabwe"
        }]
      }
    }],
    "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/citizenship"
  }],
  "identifier" : [{
    "system" : "http://mohcc.gov.zw/identifiers/nationalID",
    "value" : "01-205102B60"
  },
  {
    "system" : "http://mohcc.gov.zw/identifiers/passport",
    "value" : "CN123456"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Muti",
    "given" : ["Tinashe"]
  }],
  "gender" : "male",
  "birthDate" : "2000-03-10",
  "address" : [{
    "country" : "ZW"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "U",
      "display" : "unmarried"
    }]
  }
}

```

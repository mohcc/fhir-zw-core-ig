# Example Zimbabwean Patient - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Zimbabwean Patient**

## Example Patient: Example Zimbabwean Patient

Profile: [Zimbabwe Patient](StructureDefinition-zw-patient.md)

Tendai Moyo Female, DoB: 1985-06-15 ( National Identity: 01-234567B89)

-------

| | |
| :--- | :--- |
| Marital Status: | unmarried |
| Other Id: | Health ID/H987654321 |
| Contact Detail | 123 Main Street Harare ZW-HA 00263 ZW |
| Patient Citizenship: | * code: Zimbabwe
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "zw-patient-example",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "ZW",
          "display" : "Zimbabwe"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
  }],
  "identifier" : [{
    "type" : {
      "text" : "National Identity"
    },
    "value" : "01-234567B89"
  },
  {
    "type" : {
      "text" : "Health ID"
    },
    "value" : "H987654321"
  }],
  "name" : [{
    "family" : "Moyo",
    "given" : ["Tendai"]
  }],
  "gender" : "female",
  "birthDate" : "1985-06-15",
  "address" : [{
    "line" : ["123 Main Street"],
    "city" : "Harare",
    "state" : "ZW-HA",
    "postalCode" : "00263",
    "country" : "ZW"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "U"
    }]
  }
}

```

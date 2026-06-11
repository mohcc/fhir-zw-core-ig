# Example Zimbabwean Patient - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Zimbabwean Patient**

## Example Patient: Example Zimbabwean Patient

Profile: [Zimbabwe Patient](StructureDefinition-zw-patient.md)

Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)

-------

| | |
| :--- | :--- |
| Marital Status: | Married |
| Other Id: | [ZimPatientHealthId](NamingSystem-zw-phid-ns.md)/486B3072 |
| Contact Detail | * [+263772123456](tel:+263772123456)
* 123 Main Street Harare HA 00263 ZW (home)
 |
| Language: | Shona(preferred) |
| Next-of-Kin: | * Farai Moyo 
* [+263772987654](tel:+263772987654)
 |
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
    "value" : "01-234567B89"
  },
  {
    "system" : "http://mohcc.gov.zw/identifiers/phid",
    "value" : "486B3072"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Moyo",
    "given" : ["Tendai"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+263772123456",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1985-06-15",
  "address" : [{
    "use" : "home",
    "line" : ["123 Main Street"],
    "city" : "Harare",
    "district" : "Harare",
    "state" : "HA",
    "postalCode" : "00263",
    "country" : "ZW"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "M",
      "display" : "Married"
    }]
  },
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "N",
        "display" : "Next-of-Kin"
      }]
    }],
    "name" : {
      "family" : "Moyo",
      "given" : ["Farai"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+263772987654"
    }]
  }],
  "communication" : [{
    "language" : {
      "coding" : [{
        "system" : "urn:ietf:bcp:47",
        "code" : "sn",
        "display" : "Shona"
      }]
    },
    "preferred" : true
  }]
}

```

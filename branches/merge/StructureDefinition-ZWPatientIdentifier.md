# ZWPatientIdentifier - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZWPatientIdentifier**

## Resource Profile: ZWPatientIdentifier 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/ZWPatientIdentifier | *Version*:0.1.0 |
| Draft as of 2025-11-13 | *Computable Name*:ZWPatientIdentifier |

 
Patient profile that defines identifier slices for National Identity, Health ID and Passport Number 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/zw.fhir.ig.core|current/StructureDefinition/ZWPatientIdentifier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ZWPatientIdentifier.csv), [Excel](StructureDefinition-ZWPatientIdentifier.xlsx), [Schematron](StructureDefinition-ZWPatientIdentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ZWPatientIdentifier",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/ZWPatientIdentifier",
  "version" : "0.1.0",
  "name" : "ZWPatientIdentifier",
  "status" : "draft",
  "date" : "2025-11-13T08:00:18+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [
    {
      "name" : "MOH Zimbabwe",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://mohcc.org.zw"
        }
      ]
    }
  ],
  "description" : "Patient profile that defines identifier slices for National Identity, Health ID and Passport Number",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "716",
          "display" : "Zimbabwe"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type.text"
            }
          ],
          "description" : "Slice based on identifier.type.text to distinguish National Identity, Health ID, and Passport Number",
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.identifier:NationalIdentity",
        "path" : "Patient.identifier",
        "sliceName" : "NationalIdentity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:NationalIdentity.type.text",
        "path" : "Patient.identifier.type.text",
        "min" : 1,
        "patternString" : "National Identity"
      },
      {
        "id" : "Patient.identifier:NationalIdentity.value",
        "path" : "Patient.identifier.value",
        "patternString" : "01-234567B89"
      },
      {
        "id" : "Patient.identifier:HealthId",
        "path" : "Patient.identifier",
        "sliceName" : "HealthId",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:HealthId.type.text",
        "path" : "Patient.identifier.type.text",
        "min" : 1,
        "patternString" : "Health ID"
      },
      {
        "id" : "Patient.identifier:HealthId.value",
        "path" : "Patient.identifier.value",
        "patternString" : "H987654321"
      },
      {
        "id" : "Patient.identifier:PassportNumber",
        "path" : "Patient.identifier",
        "sliceName" : "PassportNumber",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:PassportNumber.type.text",
        "path" : "Patient.identifier.type.text",
        "min" : 1,
        "patternString" : "Passport Number"
      },
      {
        "id" : "Patient.identifier:PassportNumber.value",
        "path" : "Patient.identifier.value",
        "patternString" : "AB0123456"
      }
    ]
  }
}

```

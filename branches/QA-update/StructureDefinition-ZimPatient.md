# Zimbabwe Patient - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Patient**

## Resource Profile: Zimbabwe Patient 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/ZimPatient | *Version*:0.1.0 |
| Draft as of 2025-11-13 | *Computable Name*:ZimPatient |

 
Patient profile for Zimbabwe with support for citizenship information. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/zw.fhir.ig.core|current/StructureDefinition/ZimPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ZimPatient.csv), [Excel](StructureDefinition-ZimPatient.xlsx), [Schematron](StructureDefinition-ZimPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ZimPatient",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/ZimPatient",
  "version" : "0.1.0",
  "name" : "ZimPatient",
  "title" : "Zimbabwe Patient",
  "status" : "draft",
  "date" : "2025-11-13T06:55:19+00:00",
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
  "description" : "Patient profile for Zimbabwe with support for citizenship information.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "716",
          "display" : "Zimbabwe (ZWE)"
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
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.extension:citizenship",
        "path" : "Patient.extension",
        "sliceName" : "citizenship",
        "short" : "Patient citizenship",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:placeofbirth",
        "path" : "Patient.extension",
        "sliceName" : "placeofbirth",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            }
          ],
          "description" : "Slice based on identifier.system to distinguish National Identity, Health ID, and Passport Number",
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
        "patternString" : "National Identity"
      },
      {
        "id" : "Patient.identifier:NationalIdentity.system",
        "path" : "Patient.identifier.system",
        "min" : 1,
        "patternUri" : "http://mohcc.gov.zw/identifiers/nationalID"
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
        "patternString" : "Health ID"
      },
      {
        "id" : "Patient.identifier:HealthId.system",
        "path" : "Patient.identifier.system",
        "min" : 1,
        "patternUri" : "http://mohcc.gov.zw/fhir/identifiers/healthID"
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
        "patternString" : "Passport Number"
      },
      {
        "id" : "Patient.identifier:PassportNumber.system",
        "path" : "Patient.identifier.system",
        "min" : 1,
        "patternUri" : "http://mohcc.gov.zw/fhir/identifiers/passport"
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimGender"
        }
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimMaritalStatus"
        }
      }
    ]
  }
}

```

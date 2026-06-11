# Patient Profile - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Profile**

## Resource Profile: Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/ZimPatient | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:ZimPatient |

 
Example of a profile of Patient 

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
  "title" : "Patient Profile",
  "status" : "draft",
  "date" : "2025-11-12T14:27:53+00:00",
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
  "description" : "Example of a profile of Patient",
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

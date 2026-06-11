# ZimPatient - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZimPatient**

## Resource Profile: ZimPatient 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/ZimPatient | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:ZimPatient |

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
  "status" : "draft",
  "date" : "2025-11-12T14:04:21+00:00",
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
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimGender"
        }
      }
    ]
  }
}

```

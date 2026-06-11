# Zimbabwe Practitioner - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Practitioner**

## Resource Profile: Zimbabwe Practitioner 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-practitioner | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimPractitioner |

 
Practitioner profile for Zimbabwe: a health worker with a professional council registration number and core demographics. 

**Usages:**

* Refer to this Profile: [Zimbabwe Condition](StructureDefinition-zw-condition.md), [Zimbabwe Encounter](StructureDefinition-zw-encounter.md), [Zimbabwe Immunization](StructureDefinition-zw-immunization.md) and [Zimbabwe Observation](StructureDefinition-zw-observation.md)
* Examples for this Profile: [Practitioner/practitioner1](Practitioner-practitioner1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-practitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-practitioner.csv), [Excel](StructureDefinition-zw-practitioner.xlsx), [Schematron](StructureDefinition-zw-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-practitioner",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-practitioner",
  "version" : "0.1.0",
  "name" : "ZimPractitioner",
  "title" : "Zimbabwe Practitioner",
  "status" : "draft",
  "date" : "2026-06-11T12:30:02+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Practitioner profile for Zimbabwe: a health worker with a professional council registration number and core demographics.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "constraint" : [{
        "key" : "PractitionerNationalIdentityPattern",
        "severity" : "error",
        "human" : "If present, National Identity identifier.value must match the pattern: 2 digits, a hyphen, 5 or 6 digits, one letter (case-insensitive), then 2 digits (example: 01-234567B89).",
        "expression" : "identifier.where(type.text = 'National Identity').all(value.matches('^\\\\d{2}-\\\\d{5,6}[A-Za-z]\\\\d{2}$'))",
        "source" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-practitioner"
      }]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice based on identifier.system to distinguish the professional Registration Number and the National Identity",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:RegistrationNumber",
      "path" : "Practitioner.identifier",
      "sliceName" : "RegistrationNumber",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:RegistrationNumber.type",
      "path" : "Practitioner.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PRN",
          "display" : "Provider number"
        }]
      }
    },
    {
      "id" : "Practitioner.identifier:RegistrationNumber.type.text",
      "path" : "Practitioner.identifier.type.text",
      "patternString" : "Registration Number"
    },
    {
      "id" : "Practitioner.identifier:RegistrationNumber.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/identifiers/practitioner-registration"
    },
    {
      "id" : "Practitioner.identifier:NationalIdentity",
      "path" : "Practitioner.identifier",
      "sliceName" : "NationalIdentity",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:NationalIdentity.type",
      "path" : "Practitioner.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI",
          "display" : "National unique individual identifier"
        }]
      }
    },
    {
      "id" : "Practitioner.identifier:NationalIdentity.type.text",
      "path" : "Practitioner.identifier.type.text",
      "patternString" : "National Identity"
    },
    {
      "id" : "Practitioner.identifier:NationalIdentity.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/identifiers/nationalID"
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.gender",
      "path" : "Practitioner.gender",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "mustSupport" : true
    }]
  }
}

```

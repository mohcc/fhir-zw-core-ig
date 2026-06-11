# Zimbabwe Condition - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Condition**

## Resource Profile: Zimbabwe Condition 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-condition | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimCondition |

 
A clinical condition, problem or diagnosis recorded for a Zimbabwe patient. 

**Usages:**

* Examples for this Profile: [Condition/condition1](Condition-condition1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-condition.csv), [Excel](StructureDefinition-zw-condition.xlsx), [Schematron](StructureDefinition-zw-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-condition",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-condition",
  "version" : "0.1.0",
  "name" : "ZimCondition",
  "title" : "Zimbabwe Condition",
  "status" : "draft",
  "date" : "2026-06-11T12:03:46+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "A clinical condition, problem or diagnosis recorded for a Zimbabwe patient.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-practitioner"]
      }],
      "mustSupport" : true
    }]
  }
}

```

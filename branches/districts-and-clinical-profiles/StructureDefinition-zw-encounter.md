# Zimbabwe Encounter - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Encounter**

## Resource Profile: Zimbabwe Encounter 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-encounter | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimEncounter |

 
An interaction between a patient and one or more healthcare providers at a Zimbabwe health facility (e.g. an outpatient visit or inpatient admission). 

**Usages:**

* Refer to this Profile: [Zimbabwe Allergy Intolerance](StructureDefinition-zw-allergy-intolerance.md), [Zimbabwe Condition](StructureDefinition-zw-condition.md), [Zimbabwe Immunization](StructureDefinition-zw-immunization.md), [Zimbabwe Medication Request](StructureDefinition-zw-medication-request.md) and [Zimbabwe Procedure](StructureDefinition-zw-procedure.md)
* Examples for this Profile: [Encounter/encounter1](Encounter-encounter1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-encounter.csv), [Excel](StructureDefinition-zw-encounter.xlsx), [Schematron](StructureDefinition-zw-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-encounter",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-encounter",
  "version" : "0.1.0",
  "name" : "ZimEncounter",
  "title" : "Zimbabwe Encounter",
  "status" : "draft",
  "date" : "2026-06-11T13:57:51+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "An interaction between a patient and one or more healthcare providers at a Zimbabwe health facility (e.g. an outpatient visit or inpatient admission).",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-location"]
      }]
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```

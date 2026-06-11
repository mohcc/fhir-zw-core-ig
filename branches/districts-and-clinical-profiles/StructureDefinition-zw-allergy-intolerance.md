# Zimbabwe Allergy Intolerance - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Allergy Intolerance**

## Resource Profile: Zimbabwe Allergy Intolerance 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-allergy-intolerance | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimAllergyIntolerance |

 
An allergy or intolerance (and its reactions) recorded for a Zimbabwe patient. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/allergyintolerance1](AllergyIntolerance-allergyintolerance1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-allergy-intolerance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-allergy-intolerance.csv), [Excel](StructureDefinition-zw-allergy-intolerance.xlsx), [Schematron](StructureDefinition-zw-allergy-intolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-allergy-intolerance",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-allergy-intolerance",
  "version" : "0.1.0",
  "name" : "ZimAllergyIntolerance",
  "title" : "Zimbabwe Allergy Intolerance",
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
  "description" : "An allergy or intolerance (and its reactions) recorded for a Zimbabwe patient.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.encounter",
      "path" : "AllergyIntolerance.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "mustSupport" : true
    }]
  }
}

```

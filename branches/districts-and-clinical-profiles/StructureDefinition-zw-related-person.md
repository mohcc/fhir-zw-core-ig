# Zimbabwe Related Person - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Related Person**

## Resource Profile: Zimbabwe Related Person 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-related-person | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimRelatedPerson |

 
A person related to a Zimbabwe patient (e.g. next of kin, guardian or emergency contact). 

**Usages:**

* Examples for this Profile: [RelatedPerson/relatedperson1](RelatedPerson-relatedperson1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-related-person.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-related-person.csv), [Excel](StructureDefinition-zw-related-person.xlsx), [Schematron](StructureDefinition-zw-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-related-person",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-related-person",
  "version" : "0.1.0",
  "name" : "ZimRelatedPerson",
  "title" : "Zimbabwe Related Person",
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
  "description" : "A person related to a Zimbabwe patient (e.g. next of kin, guardian or emergency contact).",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name.family",
      "path" : "RelatedPerson.name.family",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name.given",
      "path" : "RelatedPerson.name.given",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.gender",
      "path" : "RelatedPerson.gender",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimGender"
      }
    },
    {
      "id" : "RelatedPerson.birthDate",
      "path" : "RelatedPerson.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address.line",
      "path" : "RelatedPerson.address.line",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address.city",
      "path" : "RelatedPerson.address.city",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address.district",
      "path" : "RelatedPerson.address.district",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimDistrict"
      }
    },
    {
      "id" : "RelatedPerson.address.state",
      "path" : "RelatedPerson.address.state",
      "label" : "Province",
      "short" : "Province",
      "definition" : "The province within Zimbabwe (carried in the FHIR Address.state element).",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimProvince"
      }
    },
    {
      "id" : "RelatedPerson.address.country",
      "path" : "RelatedPerson.address.country",
      "min" : 1,
      "patternString" : "ZW"
    }]
  }
}

```

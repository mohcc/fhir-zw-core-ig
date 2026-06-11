# Zimbabwe Location - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Location**

## Resource Profile: Zimbabwe Location 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-location | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimLocation |

 
Location profile for Zimbabwe: a physical place where care is delivered, managed by a Zimbabwe Organization. 

**Usages:**

* Refer to this Profile: [Zimbabwe Encounter](StructureDefinition-zw-encounter.md) and [Zimbabwe Immunization](StructureDefinition-zw-immunization.md)
* Examples for this Profile: [Parirenyatwa Outpatients Department](Location-location1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-location.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-location.csv), [Excel](StructureDefinition-zw-location.xlsx), [Schematron](StructureDefinition-zw-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-location",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-location",
  "version" : "0.1.0",
  "name" : "ZimLocation",
  "title" : "Zimbabwe Location",
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
  "description" : "Location profile for Zimbabwe: a physical place where care is delivered, managed by a Zimbabwe Organization.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "mustSupport" : true
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.district",
      "path" : "Location.address.district",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.state",
      "path" : "Location.address.state",
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
      "id" : "Location.address.country",
      "path" : "Location.address.country",
      "min" : 1,
      "patternString" : "ZW"
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```

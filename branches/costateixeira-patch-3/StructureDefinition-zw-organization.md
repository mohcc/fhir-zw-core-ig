# Zimbabwe Organization - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Organization**

## Resource Profile: Zimbabwe Organization 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-organization | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimOrganization |

 
Organization profile for Zimbabwe, used primarily for health facilities (hospitals, clinics, health centres). 

**Usages:**

* Refer to this Profile: [Zimbabwe Encounter](StructureDefinition-zw-encounter.md), [Zimbabwe Immunization](StructureDefinition-zw-immunization.md), [Zimbabwe Location](StructureDefinition-zw-location.md), [Zimbabwe Observation](StructureDefinition-zw-observation.md) and [Zimbabwe Organization](StructureDefinition-zw-organization.md)
* Examples for this Profile: [Parirenyatwa Group of Hospitals](Organization-organization1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-organization.csv), [Excel](StructureDefinition-zw-organization.xlsx), [Schematron](StructureDefinition-zw-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-organization",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-organization",
  "version" : "0.1.0",
  "name" : "ZimOrganization",
  "title" : "Zimbabwe Organization",
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
  "description" : "Organization profile for Zimbabwe, used primarily for health facilities (hospitals, clinics, health centres).",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "constraint" : [{
        "key" : "FacilityCodePattern",
        "severity" : "error",
        "human" : "If present, Facility Code must be of the form ZW + 2-digit province (01-10) + 2-digit district + 2-character facility number. The facility number is alphanumeric; provincial hospitals typically include a letter (examples: ZW010245, ZW0103OA).",
        "expression" : "identifier.where(type.text = 'Facility Code').all(value.matches('^ZW(0[1-9]|10)[0-9]{2}[0-9A-Z]{2}$'))",
        "source" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-organization"
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice based on identifier.system for the national facility code",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:FacilityCode",
      "path" : "Organization.identifier",
      "sliceName" : "FacilityCode",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:FacilityCode.type.text",
      "path" : "Organization.identifier.type.text",
      "patternString" : "Facility Code"
    },
    {
      "id" : "Organization.identifier:FacilityCode.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/identifiers/facility-code"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimFacilityType"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address.district",
      "path" : "Organization.address.district",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address.state",
      "path" : "Organization.address.state",
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
      "id" : "Organization.address.country",
      "path" : "Organization.address.country",
      "min" : 1,
      "patternString" : "ZW"
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```

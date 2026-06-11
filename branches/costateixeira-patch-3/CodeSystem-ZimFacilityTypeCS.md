# Zimbabwe Health Facility Type Code System - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Health Facility Type Code System**

## CodeSystem: Zimbabwe Health Facility Type Code System 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/CodeSystem/ZimFacilityTypeCS | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimFacilityTypeCS |

 
Tiers of health facility in the Zimbabwe public health system. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ZimFacilityTypeVS](ValueSet-ZimFacilityType.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ZimFacilityTypeCS",
  "url" : "http://mohcc.gov.zw/fhir/core/CodeSystem/ZimFacilityTypeCS",
  "version" : "0.1.0",
  "name" : "ZimFacilityTypeCS",
  "title" : "Zimbabwe Health Facility Type Code System",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-11T12:03:46+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Tiers of health facility in the Zimbabwe public health system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "CENTRAL",
    "display" : "Central Hospital"
  },
  {
    "code" : "PROVINCIAL",
    "display" : "Provincial Hospital"
  },
  {
    "code" : "DISTRICT",
    "display" : "District Hospital"
  },
  {
    "code" : "MISSION",
    "display" : "Mission Hospital"
  },
  {
    "code" : "RURALHOSP",
    "display" : "Rural Hospital"
  },
  {
    "code" : "RHC",
    "display" : "Rural Health Centre"
  },
  {
    "code" : "CLINIC",
    "display" : "Clinic"
  },
  {
    "code" : "POLYCLINIC",
    "display" : "Polyclinic"
  }]
}

```

# Zimbabwe Health Facility Code Namespace - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Health Facility Code Namespace**

## NamingSystem: Zimbabwe Health Facility Code Namespace 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/NamingSystem/zw-facility-code-ns | *Version*:0.1.0 |
| Active as of 2026-06-10 | *Computable Name*:ZimFacilityCode |

 
Identifier system for Zimbabwe health facility codes (ZW + province + district + facility number). PROVISIONAL URL pending the official MOHCC system. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "zw-facility-code-ns",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://mohcc.gov.zw/fhir/core/NamingSystem/zw-facility-code-ns"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "ZimFacilityCode",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-06-10",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Identifier system for Zimbabwe health facility codes (ZW + province + district + facility number). PROVISIONAL URL pending the official MOHCC system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://mohcc.gov.zw/identifiers/facility-code",
    "preferred" : true
  }]
}

```

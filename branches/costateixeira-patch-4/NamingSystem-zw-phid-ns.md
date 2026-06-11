# Zimbabwe Patient Health ID (PHID) Namespace - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Patient Health ID (PHID) Namespace**

## NamingSystem: Zimbabwe Patient Health ID (PHID) Namespace 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/NamingSystem/zw-phid-ns | *Version*:0.1.0 |
| Active as of 2026-06-10 | *Computable Name*:ZimPatientHealthId |

 
Identifier system for the Patient Health ID (PHID) issued by the Impilo EMR. PROVISIONAL URL pending the official MOHCC / Impilo system. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "zw-phid-ns",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://mohcc.gov.zw/fhir/core/NamingSystem/zw-phid-ns"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "ZimPatientHealthId",
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
  "description" : "Identifier system for the Patient Health ID (PHID) issued by the Impilo EMR. PROVISIONAL URL pending the official MOHCC / Impilo system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://mohcc.gov.zw/identifiers/phid",
    "preferred" : true
  }]
}

```

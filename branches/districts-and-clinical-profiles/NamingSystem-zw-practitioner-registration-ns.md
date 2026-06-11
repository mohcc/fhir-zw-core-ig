# Zimbabwe Practitioner Registration Number Namespace - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Practitioner Registration Number Namespace**

## NamingSystem: Zimbabwe Practitioner Registration Number Namespace 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/NamingSystem/zw-practitioner-registration-ns | *Version*:0.1.0 |
| Active as of 2026-06-10 | *Computable Name*:ZimPractitionerRegistration |

 
Identifier system for professional council registration numbers of Zimbabwe practitioners. PROVISIONAL URL pending the official system. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "zw-practitioner-registration-ns",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://mohcc.gov.zw/fhir/core/NamingSystem/zw-practitioner-registration-ns"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "ZimPractitionerRegistration",
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
  "description" : "Identifier system for professional council registration numbers of Zimbabwe practitioners. PROVISIONAL URL pending the official system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://mohcc.gov.zw/identifiers/practitioner-registration",
    "preferred" : true
  }]
}

```

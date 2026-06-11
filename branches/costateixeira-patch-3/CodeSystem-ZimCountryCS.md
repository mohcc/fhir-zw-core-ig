# Zimbabwe Country (Nationality) Code System - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Country (Nationality) Code System**

## CodeSystem: Zimbabwe Country (Nationality) Code System 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/CodeSystem/ZimCountryCS | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimCountryCS |

 
Countries used for citizenship/nationality in Zimbabwe. Codes are aligned with ISO 3166-1 alpha-2. Defined locally so terminology validation does not depend on ISO 3166 server support; extend as needed. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ZimCountryVS](ValueSet-ZimCountry.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ZimCountryCS",
  "url" : "http://mohcc.gov.zw/fhir/core/CodeSystem/ZimCountryCS",
  "version" : "0.1.0",
  "name" : "ZimCountryCS",
  "title" : "Zimbabwe Country (Nationality) Code System",
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
  "description" : "Countries used for citizenship/nationality in Zimbabwe. Codes are aligned with ISO 3166-1 alpha-2. Defined locally so terminology validation does not depend on ISO 3166 server support; extend as needed.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 18,
  "concept" : [{
    "code" : "ZW",
    "display" : "Zimbabwe"
  },
  {
    "code" : "ZA",
    "display" : "South Africa"
  },
  {
    "code" : "ZM",
    "display" : "Zambia"
  },
  {
    "code" : "MZ",
    "display" : "Mozambique"
  },
  {
    "code" : "BW",
    "display" : "Botswana"
  },
  {
    "code" : "MW",
    "display" : "Malawi"
  },
  {
    "code" : "NA",
    "display" : "Namibia"
  },
  {
    "code" : "AO",
    "display" : "Angola"
  },
  {
    "code" : "CD",
    "display" : "Democratic Republic of the Congo"
  },
  {
    "code" : "TZ",
    "display" : "United Republic of Tanzania"
  },
  {
    "code" : "LS",
    "display" : "Lesotho"
  },
  {
    "code" : "SZ",
    "display" : "Eswatini"
  },
  {
    "code" : "GB",
    "display" : "United Kingdom"
  },
  {
    "code" : "US",
    "display" : "United States of America"
  },
  {
    "code" : "CN",
    "display" : "China"
  },
  {
    "code" : "IN",
    "display" : "India"
  },
  {
    "code" : "NG",
    "display" : "Nigeria"
  },
  {
    "code" : "KE",
    "display" : "Kenya"
  }]
}

```

# Zimbabwe Province Code System - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Province Code System**

## CodeSystem: Zimbabwe Province Code System 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/CodeSystem/ZimProvinceCS | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimProvinceCS |

 
The ten provinces of Zimbabwe. The 'provinceCode' property gives the province's two-digit code (01-10), which forms the leading segment of district codes (province+district, e.g. 0132) and facility codes (province+district+facility, e.g. 013224). Concept codes are also aligned with ISO 3166-2:ZW subdivisions (e.g. HA = ZW-HA). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ZimProvinceVS](ValueSet-ZimProvince.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ZimProvinceCS",
  "url" : "http://mohcc.gov.zw/fhir/core/CodeSystem/ZimProvinceCS",
  "version" : "0.1.0",
  "name" : "ZimProvinceCS",
  "title" : "Zimbabwe Province Code System",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-11T13:59:21+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "The ten provinces of Zimbabwe. The 'provinceCode' property gives the province's two-digit code (01-10), which forms the leading segment of district codes (province+district, e.g. 0132) and facility codes (province+district+facility, e.g. 013224). Concept codes are also aligned with ISO 3166-2:ZW subdivisions (e.g. HA = ZW-HA).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "property" : [{
    "code" : "provinceCode",
    "description" : "The province's two-digit code (01-10), per the MOHCC province table. It is the leading segment of district codes (province+district) and facility codes (province+district+facility).",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "HA",
    "display" : "Harare",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "01"
    }]
  },
  {
    "code" : "MA",
    "display" : "Manicaland",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "MC",
    "display" : "Mashonaland Central",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "ME",
    "display" : "Mashonaland East",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "MW",
    "display" : "Mashonaland West",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "05"
    }]
  },
  {
    "code" : "MN",
    "display" : "Matabeleland North",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "MS",
    "display" : "Matabeleland South",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "MI",
    "display" : "Midlands",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "MV",
    "display" : "Masvingo",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "BU",
    "display" : "Bulawayo",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "10"
    }]
  }]
}

```

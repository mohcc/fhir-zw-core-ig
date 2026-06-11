# MaritalStatus Value Set - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MaritalStatus Value Set**

## ValueSet: MaritalStatus Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/ValueSet/ZimMaritalStatus | *Version*:0.1.0 |
| Draft as of 2025-11-13 | *Computable Name*:ZimMaritalStatusVS |

 
Administrative Marital Status 

 **References** 

* [Zimbabwe Patient](StructureDefinition-ZimPatient.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ZimMaritalStatus",
  "url" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimMaritalStatus",
  "version" : "0.1.0",
  "name" : "ZimMaritalStatusVS",
  "title" : "MaritalStatus Value Set",
  "status" : "draft",
  "date" : "2025-11-13T06:55:19+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [
    {
      "name" : "MOH Zimbabwe",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://mohcc.org.zw"
        }
      ]
    }
  ],
  "description" : "Administrative Marital Status",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "716",
          "display" : "Zimbabwe (ZWE)"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
        "concept" : [
          {
            "code" : "widowed",
            "display" : "Widowed"
          },
          {
            "code" : "divorced",
            "display" : "Divorced"
          },
          {
            "code" : "married",
            "display" : "Married"
          },
          {
            "code" : "unmarried",
            "display" : "Single"
          },
          {
            "code" : "legallySeparated",
            "display" : "Separated"
          },
          {
            "code" : "commonLaw",
            "display" : "Cohabitation"
          }
        ]
      }
    ]
  }
}

```

# Gender Value Set - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gender Value Set**

## ValueSet: Gender Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/ValueSet/ZimGender | *Version*:0.1.0 |
| Draft as of 2025-11-13 | *Computable Name*:ZimGenderVS |

 
Administrative Gender 

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
  "id" : "ZimGender",
  "url" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimGender",
  "version" : "0.1.0",
  "name" : "ZimGenderVS",
  "title" : "Gender Value Set",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-11-13T08:25:58+00:00",
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
  "description" : "Administrative Gender",
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
        "system" : "http://hl7.org/fhir/administrative-gender",
        "concept" : [
          {
            "code" : "male",
            "display" : "Male"
          },
          {
            "code" : "female",
            "display" : "Female"
          },
          {
            "code" : "unknown",
            "display" : "Unknown"
          }
        ]
      }
    ]
  }
}

```

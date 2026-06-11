# Zimbabwe Language Value Set - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Language Value Set**

## ValueSet: Zimbabwe Language Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/ValueSet/ZimLanguage | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimLanguageVS |

 
Official languages of Zimbabwe (per the 2013 Constitution, Section 6), expressed as BCP-47 codes. 

 **References** 

* [Zimbabwe Patient](StructureDefinition-zw-patient.md)

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
  "id" : "ZimLanguage",
  "url" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimLanguage",
  "version" : "0.1.0",
  "name" : "ZimLanguageVS",
  "title" : "Zimbabwe Language Value Set",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-11T12:30:02+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Official languages of Zimbabwe (per the 2013 Constitution, Section 6), expressed as BCP-47 codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:bcp:47",
      "concept" : [{
        "code" : "en",
        "display" : "English"
      },
      {
        "code" : "sn",
        "display" : "Shona"
      },
      {
        "code" : "nd-ZW",
        "display" : "North Ndebele (Zimbabwe)"
      },
      {
        "code" : "ndc",
        "display" : "Ndau"
      },
      {
        "code" : "kck",
        "display" : "Kalanga"
      },
      {
        "code" : "toi",
        "display" : "Tonga"
      },
      {
        "code" : "nmq",
        "display" : "Nambya"
      },
      {
        "code" : "ny",
        "display" : "Chewa (Nyanja)"
      },
      {
        "code" : "tn",
        "display" : "Tswana"
      },
      {
        "code" : "st",
        "display" : "Sotho (Southern)"
      },
      {
        "code" : "ve",
        "display" : "Venda"
      },
      {
        "code" : "xh",
        "display" : "Xhosa"
      },
      {
        "code" : "ts",
        "display" : "Tsonga (Shangani)"
      }]
    }]
  }
}

```

# Zimbabwe Patient - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Patient**

## Resource Profile: Zimbabwe Patient 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient | *Version*:0.1.0 |
| Draft as of 2026-06-10 | *Computable Name*:ZimPatient |

 
Patient profile for Zimbabwe with support for citizenship information. 

**Usages:**

* Examples for this Profile: [Patient/patient1](Patient-patient1.md) and [Patient/zw-patient-example](Patient-zw-patient-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.core|current/StructureDefinition/StructureDefinition-zw-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-patient.csv), [Excel](StructureDefinition-zw-patient.xlsx), [Schematron](StructureDefinition-zw-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-patient",
  "url" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient",
  "version" : "0.1.0",
  "name" : "ZimPatient",
  "title" : "Zimbabwe Patient",
  "status" : "draft",
  "date" : "2026-06-10T19:13:02+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Patient profile for Zimbabwe with support for citizenship information.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:citizenship",
      "path" : "Patient.extension",
      "sliceName" : "citizenship",
      "short" : "Patient citizenship",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-citizenship|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:placeofbirth",
      "path" : "Patient.extension",
      "sliceName" : "placeofbirth",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace|5.3.0"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice based on identifier.system to distinguish National Identity, Health ID, and Passport Number",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier:NationalIdentity",
      "path" : "Patient.identifier",
      "sliceName" : "NationalIdentity",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:NationalIdentity.type.text",
      "path" : "Patient.identifier.type.text",
      "patternString" : "National Identity"
    },
    {
      "id" : "Patient.identifier:NationalIdentity.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/identifiers/nationalID"
    },
    {
      "id" : "Patient.identifier:HealthId",
      "path" : "Patient.identifier",
      "sliceName" : "HealthId",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:HealthId.type.text",
      "path" : "Patient.identifier.type.text",
      "patternString" : "Health ID"
    },
    {
      "id" : "Patient.identifier:HealthId.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/fhir/identifiers/healthID"
    },
    {
      "id" : "Patient.identifier:PassportNumber",
      "path" : "Patient.identifier",
      "sliceName" : "PassportNumber",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.identifier:PassportNumber.type.text",
      "path" : "Patient.identifier.type.text",
      "patternString" : "Passport Number"
    },
    {
      "id" : "Patient.identifier:PassportNumber.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/fhir/identifiers/passport"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimGender"
      }
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "min" : 1
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimProvince"
      }
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "patternString" : "ZW"
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimMaritalStatus"
      }
    }]
  }
}

```

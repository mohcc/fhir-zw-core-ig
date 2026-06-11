# Zimbabwe Patient - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe Patient**

## Resource Profile: Zimbabwe Patient 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimPatient |

 
Patient profile for Zimbabwe core data: demographics, national identifiers, citizenship, place of birth, contact details and preferred language. 

### Scope and Usage

The **Zimbabwe Patient** profile (`ZimPatient`) is the national core representation of a person receiving health services in Zimbabwe. It constrains the base FHIR R4 `Patient` resource to carry the demographic and identifying information required for interoperability across Zimbabwean health information systems.

This profile is intended to be referenced by every other resource in this Implementation Guide that points to a patient (for example `Encounter.subject`, `Observation.subject`, `Condition.subject`).

### Must Support

The following elements are flagged **Must Support** — consuming systems are expected to be able to process them and producing systems should populate them where the data is available:

* `identifier` — national identifiers (see below)
* `name` (with `family` and `given`)
* `gender`, `birthDate`, `maritalStatus`
* `telecom` — phone / email contact points
* `communication.language` — the patient's preferred language
* `contact` — next of kin / emergency contact
* `address` (with province and district)
* `deceased[x]`
* the `citizenship` and `place of birth` extensions

### Identifiers

A patient **must** carry at least one identifier. Identifiers are sliced by `system` into three nationally recognised types:

| | | | |
| :--- | :--- | :--- | :--- |
| National Identity | `http://mohcc.gov.zw/identifiers/nationalID` | `NI` | `NN-NNNNNN[A]NN`e.g.`01-234567B89` |
| Health ID (PHID) | `http://mohcc.gov.zw/identifiers/phid` | **(text only)** | `DDDSDDDX`— 3 digits, letter (A-Z excl. I/O), 3 digits, Luhn check digit, e.g.`486B3072` |
| Passport Number | `http://mohcc.gov.zw/identifiers/passport` | `PPN` | `LL`+ 6–7 digits, e.g.`CN123456` |

The National Identity and Passport Number formats are enforced by the `NationalIdentityPattern` and `PassportNumberPattern` invariants.

> **Note:** the identifier `system` URLs above are interim values and should be replaced with the official MOHCC canonical identifier systems before publication.

### Terminology

* **Gender** is bound (required) to [ZimGenderVS](ValueSet-ZimGender.md).
* **Marital status** is bound (required) to [ZimMaritalStatusVS](ValueSet-ZimMaritalStatus.md).
* **Address province** (`address.state`) is bound (required) to [ZimProvinceVS](ValueSet-ZimProvince.md) — the ten provinces of Zimbabwe as ISO 3166-2 codes.
* **Preferred language** (`communication.language`) is bound (preferred) to [ZimLanguageVS](ValueSet-ZimLanguage.md) — the official languages of Zimbabwe as BCP-47 codes.
* `address.country` is fixed to `ZW`.

**Usages:**

* Refer to this Profile: [Zimbabwe Allergy Intolerance](StructureDefinition-zw-allergy-intolerance.md), [Zimbabwe Condition](StructureDefinition-zw-condition.md), [Zimbabwe Encounter](StructureDefinition-zw-encounter.md), [Zimbabwe Immunization](StructureDefinition-zw-immunization.md)... Show 4 more, [Zimbabwe Medication Request](StructureDefinition-zw-medication-request.md), [Zimbabwe Observation](StructureDefinition-zw-observation.md), [Zimbabwe Procedure](StructureDefinition-zw-procedure.md) and [Zimbabwe Related Person](StructureDefinition-zw-related-person.md)
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
  "date" : "2026-06-11T13:59:21+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Patient profile for Zimbabwe core data: demographics, national identifiers, citizenship, place of birth, contact details and preferred language.",
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
      "path" : "Patient",
      "constraint" : [{
        "key" : "NationalIdentityPattern",
        "severity" : "error",
        "human" : "If present, National Identity identifier.value must match the pattern: 2 digits, a hyphen, 5 or 6 digits, one letter (case-insensitive), then 2 digits (examples: 01-234567B89, 01-23456b78).",
        "expression" : "identifier.where(type.text = 'National Identity').all(value.matches('^\\\\d{2}-\\\\d{5,6}[A-Za-z]\\\\d{2}$'))",
        "source" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"
      },
      {
        "key" : "PassportNumberPattern",
        "severity" : "error",
        "human" : "If present, Passport Number identifier.value must match the pattern: 2 uppercase letters followed by 6 or 7 digits (example: CN123456).",
        "expression" : "identifier.where(type.text = 'Passport Number').all(value.matches('^[A-Z]{2}\\\\d{6,7}$'))",
        "source" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"
      },
      {
        "key" : "HealthIdPattern",
        "severity" : "error",
        "human" : "If present, the Health ID (PHID) must follow the format DDDSDDDX: three digits, one letter (A-Z excluding I and O), three digits, and a final Luhn check digit (a digit). This invariant enforces the structural format; the Luhn check digit value itself must be validated by the assigning system / application layer.",
        "expression" : "identifier.where(type.text = 'Health ID').all(value.matches('^[0-9]{3}[A-HJ-NP-Z][0-9]{3}[0-9]$'))",
        "source" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient"
      }]
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
        "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/citizenship"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:placeofbirth",
      "path" : "Patient.extension",
      "sliceName" : "placeofbirth",
      "short" : "Patient place of birth",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace|5.3.0"]
      }],
      "mustSupport" : true
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
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:NationalIdentity",
      "path" : "Patient.identifier",
      "sliceName" : "NationalIdentity",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:NationalIdentity.type",
      "path" : "Patient.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI",
          "display" : "National unique individual identifier"
        }]
      }
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
      "max" : "1",
      "mustSupport" : true
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
      "patternUri" : "http://mohcc.gov.zw/identifiers/phid"
    },
    {
      "id" : "Patient.identifier:PassportNumber",
      "path" : "Patient.identifier",
      "sliceName" : "PassportNumber",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:PassportNumber.type",
      "path" : "Patient.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PPN",
          "display" : "Passport number"
        }]
      }
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
      "patternUri" : "http://mohcc.gov.zw/identifiers/passport"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimGender"
      }
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.district",
      "path" : "Patient.address.district",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimDistrict"
      }
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "label" : "Province",
      "short" : "Province",
      "definition" : "The province within Zimbabwe (carried in the FHIR Address.state element).",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimProvince"
      }
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "min" : 1,
      "patternString" : "ZW"
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimMaritalStatus"
      }
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.communication",
      "path" : "Patient.communication",
      "mustSupport" : true
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://mohcc.gov.zw/fhir/core/ValueSet/ZimLanguage"
      }
    }]
  }
}

```

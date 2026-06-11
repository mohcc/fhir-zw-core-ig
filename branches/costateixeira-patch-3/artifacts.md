# Artifacts Summary - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Zimbabwe Condition](StructureDefinition-zw-condition.md) | A clinical condition, problem or diagnosis recorded for a Zimbabwe patient. |
| [Zimbabwe Encounter](StructureDefinition-zw-encounter.md) | An interaction between a patient and one or more healthcare providers at a Zimbabwe health facility (e.g. an outpatient visit or inpatient admission). |
| [Zimbabwe Immunization](StructureDefinition-zw-immunization.md) | A vaccine administered to a Zimbabwe patient (e.g. under the national Expanded Programme on Immunization). |
| [Zimbabwe Location](StructureDefinition-zw-location.md) | Location profile for Zimbabwe: a physical place where care is delivered, managed by a Zimbabwe Organization. |
| [Zimbabwe Observation](StructureDefinition-zw-observation.md) | Base Observation profile for Zimbabwe: a measurement, test result or assertion about a patient. Other, more specific observation profiles can derive from this. |
| [Zimbabwe Organization](StructureDefinition-zw-organization.md) | Organization profile for Zimbabwe, used primarily for health facilities (hospitals, clinics, health centres). |
| [Zimbabwe Patient](StructureDefinition-zw-patient.md) | Patient profile for Zimbabwe core data: demographics, national identifiers, citizenship, place of birth, contact details and preferred language. |
| [Zimbabwe Practitioner](StructureDefinition-zw-practitioner.md) | Practitioner profile for Zimbabwe: a health worker with a professional council registration number and core demographics. |
| [Zimbabwe Related Person](StructureDefinition-zw-related-person.md) | A person related to a Zimbabwe patient (e.g. next of kin, guardian or emergency contact). |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Patient Citizenship](StructureDefinition-citizenship.md) | The patient's legal status as citizen of a country. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Gender Value Set](ValueSet-ZimGender.md) | Administrative Gender |
| [MaritalStatus Value Set](ValueSet-ZimMaritalStatus.md) | Administrative Marital Status |
| [Zimbabwe Country (Nationality) Value Set](ValueSet-ZimCountry.md) | Countries used for citizenship/nationality in Zimbabwe (ISO 3166-1 alpha-2 aligned). |
| [Zimbabwe Health Facility Type Value Set](ValueSet-ZimFacilityType.md) | Tiers of health facility in the Zimbabwe public health system. |
| [Zimbabwe Language Value Set](ValueSet-ZimLanguage.md) | Official languages of Zimbabwe (per the 2013 Constitution, Section 6), expressed as BCP-47 codes. |
| [Zimbabwe Province Value Set](ValueSet-ZimProvince.md) | The ten provinces of Zimbabwe. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Zimbabwe Country (Nationality) Code System](CodeSystem-ZimCountryCS.md) | Countries used for citizenship/nationality in Zimbabwe. Codes are aligned with ISO 3166-1 alpha-2. Defined locally so terminology validation does not depend on ISO 3166 server support; extend as needed. |
| [Zimbabwe Health Facility Type Code System](CodeSystem-ZimFacilityTypeCS.md) | Tiers of health facility in the Zimbabwe public health system. |
| [Zimbabwe Province Code System](CodeSystem-ZimProvinceCS.md) | The ten provinces of Zimbabwe. The 'facilityCode' property gives the two-digit province number (01-10) used as the province segment of a national facility code. Concept codes are also aligned with ISO 3166-2:ZW subdivisions (e.g. HA = ZW-HA). |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Zimbabwe Health Facility Code Namespace](NamingSystem-zw-facility-code-ns.md) | Identifier system for Zimbabwe health facility codes (ZW + province + district + facility number). PROVISIONAL URL pending the official MOHCC system. |
| [Zimbabwe National Identity Namespace](NamingSystem-zw-national-identity-ns.md) | Identifier system for the Zimbabwe National Identity number. PROVISIONAL URL pending the official MOHCC system. |
| [Zimbabwe Passport Number Namespace](NamingSystem-zw-passport-ns.md) | Identifier system for Zimbabwe passport numbers. PROVISIONAL URL pending the official system. |
| [Zimbabwe Patient Health ID (PHID) Namespace](NamingSystem-zw-phid-ns.md) | Identifier system for the Patient Health ID (PHID) issued by the Impilo EMR. PROVISIONAL URL pending the official MOHCC / Impilo system. |
| [Zimbabwe Practitioner Registration Number Namespace](NamingSystem-zw-practitioner-registration-ns.md) | Identifier system for professional council registration numbers of Zimbabwe practitioners. PROVISIONAL URL pending the official system. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example Condition (Malaria)](Condition-condition1.md) | A confirmed malaria diagnosis for the example Zimbabwean patient. |
| [Example Encounter (Outpatient Visit)](Encounter-encounter1.md) | An ambulatory outpatient visit for the example Zimbabwean patient at Parirenyatwa. |
| [Example Immunization (BCG)](Immunization-immunization1.md) | BCG vaccination given at birth for the example Zimbabwean patient. |
| [Example Observation (Body Weight)](Observation-observation1.md) | A body weight measurement for the example Zimbabwean patient. |
| [Example Related Person (Next of Kin)](RelatedPerson-relatedperson1.md) | Next of kin for the example Zimbabwean patient. |
| [Example Zimbabwean Health Facility](Organization-organization1.md) | Parirenyatwa Group of Hospitals, a central hospital in Harare. |
| [Example Zimbabwean Location](Location-location1.md) | The outpatients department at Parirenyatwa Group of Hospitals. |
| [Example Zimbabwean Patient](Patient-zw-patient-example.md) | A Zimbabwean patient with core demographics, national identifiers, contact details, preferred language and citizenship. |
| [Example Zimbabwean Patient (Tinashe Muti)](Patient-patient1.md) | A Zimbabwean patient with place of birth, citizenship and national/passport identifiers. |
| [Example Zimbabwean Practitioner](Practitioner-practitioner1.md) | A registered nurse with a council registration number and national identity. |


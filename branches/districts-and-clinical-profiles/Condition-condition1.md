# Example Condition (Malaria) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Condition (Malaria)**

## Example Condition: Example Condition (Malaria)

Profile: [Zimbabwe Condition](StructureDefinition-zw-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Unspecified malaria

**subject**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

**encounter**: [Encounter: status = finished; class = ambulatory (v3 Code System ActCode#AMB); period = 2026-05-01 09:00:00+0200 --> 2026-05-01 09:30:00+0200](Encounter-encounter1.md)

**onset**: 2026-05-01

**recordedDate**: 2026-05-01

**recorder**: [Practitioner Rudo Ncube (official)](Practitioner-practitioner1.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/icd-10",
      "code" : "B54",
      "display" : "Unspecified malaria"
    }]
  },
  "subject" : {
    "reference" : "Patient/zw-patient-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter1"
  },
  "onsetDateTime" : "2026-05-01",
  "recordedDate" : "2026-05-01",
  "recorder" : {
    "reference" : "Practitioner/practitioner1"
  }
}

```

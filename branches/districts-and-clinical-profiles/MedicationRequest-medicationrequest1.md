# Example Medication Request (Antimalarial) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Medication Request (Antimalarial)**

## Example MedicationRequest: Example Medication Request (Antimalarial)

Profile: [Zimbabwe Medication Request](StructureDefinition-zw-medication-request.md)

**status**: Active

**intent**: Order

**medication**: Artemether/Lumefantrine 20/120 mg tablet

**subject**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

**encounter**: [Encounter: status = finished; class = ambulatory (v3 Code System ActCode#AMB); period = 2026-05-01 09:00:00+0200 --> 2026-05-01 09:30:00+0200](Encounter-encounter1.md)

**authoredOn**: 2026-05-01

**requester**: [Practitioner Rudo Ncube (official)](Practitioner-practitioner1.md)

**reasonReference**: [Condition Unspecified malaria](Condition-condition1.md)

### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | 1 tablet twice daily for 3 days |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "medicationrequest1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-medication-request"]
  },
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "text" : "Artemether/Lumefantrine 20/120 mg tablet"
  },
  "subject" : {
    "reference" : "Patient/zw-patient-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter1"
  },
  "authoredOn" : "2026-05-01",
  "requester" : {
    "reference" : "Practitioner/practitioner1"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition1"
  }],
  "dosageInstruction" : [{
    "text" : "1 tablet twice daily for 3 days"
  }]
}

```

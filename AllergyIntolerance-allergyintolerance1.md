# Example Allergy (Penicillin) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Allergy (Penicillin)**

## Example AllergyIntolerance: Example Allergy (Penicillin)

Profile: [Zimbabwe Allergy Intolerance](StructureDefinition-zw-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Medication

**criticality**: High Risk

**code**: Penicillin

**patient**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

**recordedDate**: 2026-05-01

**recorder**: [Practitioner Rudo Ncube (official)](Practitioner-practitioner1.md)

### Reactions

| | |
| :--- | :--- |
| - | **Manifestation** |
| * | Urticaria (hives) |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "allergyintolerance1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-allergy-intolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : "allergy",
  "category" : ["medication"],
  "criticality" : "high",
  "code" : {
    "text" : "Penicillin"
  },
  "patient" : {
    "reference" : "Patient/zw-patient-example"
  },
  "recordedDate" : "2026-05-01",
  "recorder" : {
    "reference" : "Practitioner/practitioner1"
  },
  "reaction" : [{
    "manifestation" : [{
      "text" : "Urticaria (hives)"
    }]
  }]
}

```

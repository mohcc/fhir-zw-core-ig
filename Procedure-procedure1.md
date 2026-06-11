# Example Procedure (Malaria RDT) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Procedure (Malaria RDT)**

## Example Procedure: Example Procedure (Malaria RDT)

Profile: [Zimbabwe Procedure](StructureDefinition-zw-procedure.md)

**status**: Completed

**code**: Malaria rapid diagnostic test (RDT)

**subject**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

**encounter**: [Encounter: status = finished; class = ambulatory (v3 Code System ActCode#AMB); period = 2026-05-01 09:00:00+0200 --> 2026-05-01 09:30:00+0200](Encounter-encounter1.md)

**performed**: 2026-05-01

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Rudo Ncube (official)](Practitioner-practitioner1.md) |

**location**: [Location Parirenyatwa Outpatients Department](Location-location1.md)

**reasonReference**: [Condition Unspecified malaria](Condition-condition1.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-procedure"]
  },
  "status" : "completed",
  "code" : {
    "text" : "Malaria rapid diagnostic test (RDT)"
  },
  "subject" : {
    "reference" : "Patient/zw-patient-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter1"
  },
  "performedDateTime" : "2026-05-01",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/practitioner1"
    }
  }],
  "location" : {
    "reference" : "Location/location1"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition1"
  }]
}

```

# Example Immunization (BCG) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Immunization (BCG)**

## Example Immunization: Example Immunization (BCG)

Profile: [Zimbabwe Immunization](StructureDefinition-zw-immunization.md)

**status**: Completed

**vaccineCode**: BCG

**patient**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

**occurrence**: 1985-06-15

**primarySource**: true

**location**: [Location Parirenyatwa Outpatients Department](Location-location1.md)

**lotNumber**: BCG-2026-001

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Rudo Ncube (official)](Practitioner-practitioner1.md) |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "immunization1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-immunization"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/cvx",
      "code" : "19"
    }],
    "text" : "BCG"
  },
  "patient" : {
    "reference" : "Patient/zw-patient-example"
  },
  "occurrenceDateTime" : "1985-06-15",
  "primarySource" : true,
  "location" : {
    "reference" : "Location/location1"
  },
  "lotNumber" : "BCG-2026-001",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/practitioner1"
    }
  }]
}

```

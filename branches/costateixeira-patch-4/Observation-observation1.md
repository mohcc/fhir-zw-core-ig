# Example Observation (Body Weight) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Observation (Body Weight)**

## Example Observation: Example Observation (Body Weight)

Profile: [Zimbabwe Observation](StructureDefinition-zw-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Body weight

**subject**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

**effective**: 2026-05-01

**performer**: [Practitioner Rudo Ncube (official)](Practitioner-practitioner1.md)

**value**: 70 kg (Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "29463-7",
      "display" : "Body weight"
    }]
  },
  "subject" : {
    "reference" : "Patient/zw-patient-example"
  },
  "effectiveDateTime" : "2026-05-01",
  "performer" : [{
    "reference" : "Practitioner/practitioner1"
  }],
  "valueQuantity" : {
    "value" : 70,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```

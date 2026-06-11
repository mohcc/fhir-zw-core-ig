# Example Encounter (Outpatient Visit) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Encounter (Outpatient Visit)**

## Example Encounter: Example Encounter (Outpatient Visit)

Profile: [Zimbabwe Encounter](StructureDefinition-zw-encounter.md)

**status**: Finished

**class**: [v3 Code System ActCode: AMB](http://hl7.org/fhir/R4/v3/ActCode/cs.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [Practitioner Rudo Ncube (official)](Practitioner-practitioner1.md) |

**period**: 2026-05-01 09:00:00+0200 --> 2026-05-01 09:30:00+0200

### Locations

| | |
| :--- | :--- |
| - | **Location** |
| * | [Location Parirenyatwa Outpatients Department](Location-location1.md) |

**serviceProvider**: [Organization Parirenyatwa Group of Hospitals](Organization-organization1.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/zw-patient-example"
  },
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/practitioner1"
    }
  }],
  "period" : {
    "start" : "2026-05-01T09:00:00+02:00",
    "end" : "2026-05-01T09:30:00+02:00"
  },
  "location" : [{
    "location" : {
      "reference" : "Location/location1"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/organization1"
  }
}

```

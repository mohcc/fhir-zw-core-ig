# Example Related Person (Next of Kin) - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Related Person (Next of Kin)**

## Example RelatedPerson: Example Related Person (Next of Kin)

Profile: [Zimbabwe Related Person](StructureDefinition-zw-related-person.md)

**patient**: [Tendai Moyo (official) Female, DoB: 1985-06-15 ( http://mohcc.gov.zw/identifiers/nationalID#ZimNationalIdentity#01-234567B89)](Patient-zw-patient-example.md)

**relationship**: Next-of-Kin

**name**: Farai Moyo (Official)

**telecom**: [+263772987654](tel:+263772987654)

**gender**: Male

**address**: Harare HA ZW (home)



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "relatedperson1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-related-person"]
  },
  "patient" : {
    "reference" : "Patient/zw-patient-example"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
      "code" : "N",
      "display" : "Next-of-Kin"
    }]
  }],
  "name" : [{
    "use" : "official",
    "family" : "Moyo",
    "given" : ["Farai"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+263772987654"
  }],
  "gender" : "male",
  "address" : [{
    "use" : "home",
    "city" : "Harare",
    "district" : "Harare",
    "state" : "HA",
    "country" : "ZW"
  }]
}

```

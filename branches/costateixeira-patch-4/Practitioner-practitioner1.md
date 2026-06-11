# Example Zimbabwean Practitioner - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Zimbabwean Practitioner**

## Example Practitioner: Example Zimbabwean Practitioner

Profile: [Zimbabwe Practitioner](StructureDefinition-zw-practitioner.md)

**identifier**: [ZimPractitionerRegistration](NamingSystem-zw-practitioner-registration-ns.md)/MCAZ-04521, [ZimNationalIdentity](NamingSystem-zw-national-identity-ns.md)/63-123456A12

**name**: Rudo Ncube (Official)

**telecom**: [+263772334455](tel:+263772334455)

**gender**: Female

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | Registered General Nurse |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "practitioner1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-practitioner"]
  },
  "identifier" : [{
    "system" : "http://mohcc.gov.zw/identifiers/practitioner-registration",
    "value" : "MCAZ-04521"
  },
  {
    "system" : "http://mohcc.gov.zw/identifiers/nationalID",
    "value" : "63-123456A12"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Ncube",
    "given" : ["Rudo"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+263772334455"
  }],
  "gender" : "female",
  "qualification" : [{
    "code" : {
      "text" : "Registered General Nurse"
    }
  }]
}

```

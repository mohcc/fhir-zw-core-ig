# Example Zimbabwean Health Facility - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Zimbabwean Health Facility**

## Example Organization: Example Zimbabwean Health Facility

Profile: [Zimbabwe Organization](StructureDefinition-zw-organization.md)

**identifier**: [ZimFacilityCode](NamingSystem-zw-facility-code-ns.md)/ZW010245

**active**: true

**type**: Central Hospital

**name**: Parirenyatwa Group of Hospitals

**telecom**: [+263242701555](tel:+263242701555)

**address**: Mazowe Street Harare HA ZW 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-organization"]
  },
  "identifier" : [{
    "system" : "http://mohcc.gov.zw/identifiers/facility-code",
    "value" : "ZW010245"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://mohcc.gov.zw/fhir/core/CodeSystem/ZimFacilityTypeCS",
      "code" : "CENTRAL",
      "display" : "Central Hospital"
    }]
  }],
  "name" : "Parirenyatwa Group of Hospitals",
  "telecom" : [{
    "system" : "phone",
    "value" : "+263242701555"
  }],
  "address" : [{
    "line" : ["Mazowe Street"],
    "city" : "Harare",
    "district" : "Harare",
    "state" : "HA",
    "country" : "ZW"
  }]
}

```

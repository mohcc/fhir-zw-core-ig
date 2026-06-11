# Example Zimbabwean Location - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Zimbabwean Location**

## Example Location: Example Zimbabwean Location

Profile: [Zimbabwe Location](StructureDefinition-zw-location.md)

**status**: Active

**name**: Parirenyatwa Outpatients Department

**type**: Outpatients Department

**address**: Harare HA ZW 

**managingOrganization**: [Organization Parirenyatwa Group of Hospitals](Organization-organization1.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "location1",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-location"]
  },
  "status" : "active",
  "name" : "Parirenyatwa Outpatients Department",
  "type" : [{
    "text" : "Outpatients Department"
  }],
  "address" : {
    "city" : "Harare",
    "district" : "010E",
    "state" : "HA",
    "country" : "ZW"
  },
  "managingOrganization" : {
    "reference" : "Organization/organization1"
  }
}

```

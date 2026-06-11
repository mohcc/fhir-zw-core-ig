# Zimbabwe District Code System - Zimbabwe Core IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zimbabwe District Code System**

## CodeSystem: Zimbabwe District Code System 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/core/CodeSystem/ZimDistrictCS | *Version*:0.1.0 |
| Draft as of 2026-06-11 | *Computable Name*:ZimDistrictCS |

 
Districts (and metropolitan sub-units) of Zimbabwe, from the MOHCC district table. The concept code is the 4-character district code = 2-digit province code (01-10, per ZimProvinceCS) + 2-character zero-padded district code. The 'provinceCode' property gives the parent province's 2-digit code. NOTE: Harare city units were re-parented from the source ProvinceID=1 (Manicaland) to Harare (01); a junk 'Harare' row (ProvinceID 7) and other non-standard rows were excluded. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ZimDistrictVS](ValueSet-ZimDistrict.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ZimDistrictCS",
  "url" : "http://mohcc.gov.zw/fhir/core/CodeSystem/ZimDistrictCS",
  "version" : "0.1.0",
  "name" : "ZimDistrictCS",
  "title" : "Zimbabwe District Code System",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-11T13:59:21+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Districts (and metropolitan sub-units) of Zimbabwe, from the MOHCC district table. The concept code is the 4-character district code = 2-digit province code (01-10, per ZimProvinceCS) + 2-character zero-padded district code. The 'provinceCode' property gives the parent province's 2-digit code. NOTE: Harare city units were re-parented from the source ProvinceID=1 (Manicaland) to Harare (01); a junk 'Harare' row (ProvinceID 7) and other non-standard rows were excluded.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 71,
  "property" : [{
    "code" : "provinceCode",
    "description" : "The 2-digit code (01-10) of the province this district belongs to (see ZimProvinceCS).",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "010A",
    "display" : "Harare Urban",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "01"
    }]
  },
  {
    "code" : "010B",
    "display" : "Chitungwiza Urban",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "01"
    }]
  },
  {
    "code" : "010C",
    "display" : "Chitungwiza Hospital",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "01"
    }]
  },
  {
    "code" : "010D",
    "display" : "Harare Central Hospital",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "01"
    }]
  },
  {
    "code" : "010E",
    "display" : "Parirenyatwa",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "01"
    }]
  },
  {
    "code" : "010F",
    "display" : "Harare City Clinics",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "01"
    }]
  },
  {
    "code" : "0201",
    "display" : "Buhera",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0202",
    "display" : "Chimanimani",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0203",
    "display" : "Chipinge",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0204",
    "display" : "Makoni",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0205",
    "display" : "Mutare",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0206",
    "display" : "Mutasa",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0207",
    "display" : "Nyanga",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0208",
    "display" : "Mutare City",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "02"
    }]
  },
  {
    "code" : "0301",
    "display" : "Bindura",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0302",
    "display" : "Centenary",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0303",
    "display" : "Guruve",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0304",
    "display" : "Mazowe",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0305",
    "display" : "Mt. Darwin",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0306",
    "display" : "Rushinga",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0307",
    "display" : "Shamva",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0308",
    "display" : "Mbire",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "03"
    }]
  },
  {
    "code" : "0401",
    "display" : "Chikomba",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0402",
    "display" : "Goromonzi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0403",
    "display" : "U.M.P",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0404",
    "display" : "Hwedza",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0405",
    "display" : "Marondera",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0406",
    "display" : "Mudzi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0407",
    "display" : "Murewa",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0408",
    "display" : "Mutoko",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0409",
    "display" : "Seke",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "04"
    }]
  },
  {
    "code" : "0501",
    "display" : "Chegutu",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "05"
    }]
  },
  {
    "code" : "0502",
    "display" : "Hurungwe",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "05"
    }]
  },
  {
    "code" : "0503",
    "display" : "Kadoma",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "05"
    }]
  },
  {
    "code" : "0504",
    "display" : "Kariba",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "05"
    }]
  },
  {
    "code" : "0505",
    "display" : "Makonde",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "05"
    }]
  },
  {
    "code" : "0506",
    "display" : "Zvimba",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "05"
    }]
  },
  {
    "code" : "0601",
    "display" : "Binga",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "0602",
    "display" : "Bubi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "0603",
    "display" : "Hwange",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "0604",
    "display" : "Lupane",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "0605",
    "display" : "Nkayi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "0606",
    "display" : "Tsholotsho",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "0607",
    "display" : "Umguza",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "06"
    }]
  },
  {
    "code" : "0701",
    "display" : "Beitbridge",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "0702",
    "display" : "Bulilima",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "0703",
    "display" : "Gwanda",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "0704",
    "display" : "Insiza",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "0705",
    "display" : "Matobo",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "0706",
    "display" : "Umzingwane",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "0707",
    "display" : "Mangwe",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "07"
    }]
  },
  {
    "code" : "0801",
    "display" : "Chirumhanzu",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0802",
    "display" : "Gokwe North",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0803",
    "display" : "Gweru",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0804",
    "display" : "Kwekwe",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0805",
    "display" : "Mberengwa",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0806",
    "display" : "Shurugwi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0807",
    "display" : "Zvishavane",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0808",
    "display" : "Gokwe South",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "08"
    }]
  },
  {
    "code" : "0901",
    "display" : "Bikita",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "0902",
    "display" : "Chiredzi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "0903",
    "display" : "Chivi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "0904",
    "display" : "Gutu",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "0905",
    "display" : "Masvingo",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "0906",
    "display" : "Mwenezi",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "0907",
    "display" : "Zaka",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "09"
    }]
  },
  {
    "code" : "1001",
    "display" : "Bulawayo (Rural)",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "10"
    }]
  },
  {
    "code" : "100A",
    "display" : "Bulawayo (Urban)",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "10"
    }]
  },
  {
    "code" : "100B",
    "display" : "Ingutsheni",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "10"
    }]
  },
  {
    "code" : "100C",
    "display" : "U.B.H.",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "10"
    }]
  },
  {
    "code" : "100D",
    "display" : "Mpilo Hospital",
    "property" : [{
      "code" : "provinceCode",
      "valueString" : "10"
    }]
  }]
}

```

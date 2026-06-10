CodeSystem: ZimProvinceCS
Id: ZimProvinceCS
Title: "Zimbabwe Province Code System"
Description: "The ten provinces of Zimbabwe. The 'facilityCode' property gives the two-digit province number (01-10) used as the province segment of a national facility code. Concept codes are also aligned with ISO 3166-2:ZW subdivisions (e.g. HA = ZW-HA)."
* ^experimental = false
* ^caseSensitive = true
* ^property[0].code = #facilityCode
* ^property[0].description = "Two-digit province number used as the province segment of a national facility code (per the MOHCC province table)."
* ^property[0].type = #string

* #HA "Harare"
* #HA ^property[0].code = #facilityCode
* #HA ^property[0].valueString = "01"

* #MA "Manicaland"
* #MA ^property[0].code = #facilityCode
* #MA ^property[0].valueString = "02"

* #MC "Mashonaland Central"
* #MC ^property[0].code = #facilityCode
* #MC ^property[0].valueString = "03"

* #ME "Mashonaland East"
* #ME ^property[0].code = #facilityCode
* #ME ^property[0].valueString = "04"

* #MW "Mashonaland West"
* #MW ^property[0].code = #facilityCode
* #MW ^property[0].valueString = "05"

* #MN "Matabeleland North"
* #MN ^property[0].code = #facilityCode
* #MN ^property[0].valueString = "06"

* #MS "Matabeleland South"
* #MS ^property[0].code = #facilityCode
* #MS ^property[0].valueString = "07"

* #MI "Midlands"
* #MI ^property[0].code = #facilityCode
* #MI ^property[0].valueString = "08"

* #MV "Masvingo"
* #MV ^property[0].code = #facilityCode
* #MV ^property[0].valueString = "09"

* #BU "Bulawayo"
* #BU ^property[0].code = #facilityCode
* #BU ^property[0].valueString = "10"

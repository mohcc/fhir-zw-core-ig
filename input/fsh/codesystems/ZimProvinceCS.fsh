CodeSystem: ZimProvinceCS
Id: ZimProvinceCS
Title: "Zimbabwe Province Code System"
Description: "The ten provinces of Zimbabwe. The 'provinceCode' property gives the province's two-digit code (01-10), which forms the leading segment of district codes (province+district, e.g. 0132) and facility codes (province+district+facility, e.g. 013224). Concept codes are also aligned with ISO 3166-2:ZW subdivisions (e.g. HA = ZW-HA)."
* ^experimental = false
* ^caseSensitive = true
* ^property[0].code = #provinceCode
* ^property[0].description = "The province's two-digit code (01-10), per the MOHCC province table. It is the leading segment of district codes (province+district) and facility codes (province+district+facility)."
* ^property[0].type = #string

* #HA "Harare"
* #HA ^property[0].code = #provinceCode
* #HA ^property[0].valueString = "01"

* #MA "Manicaland"
* #MA ^property[0].code = #provinceCode
* #MA ^property[0].valueString = "02"

* #MC "Mashonaland Central"
* #MC ^property[0].code = #provinceCode
* #MC ^property[0].valueString = "03"

* #ME "Mashonaland East"
* #ME ^property[0].code = #provinceCode
* #ME ^property[0].valueString = "04"

* #MW "Mashonaland West"
* #MW ^property[0].code = #provinceCode
* #MW ^property[0].valueString = "05"

* #MN "Matabeleland North"
* #MN ^property[0].code = #provinceCode
* #MN ^property[0].valueString = "06"

* #MS "Matabeleland South"
* #MS ^property[0].code = #provinceCode
* #MS ^property[0].valueString = "07"

* #MI "Midlands"
* #MI ^property[0].code = #provinceCode
* #MI ^property[0].valueString = "08"

* #MV "Masvingo"
* #MV ^property[0].code = #provinceCode
* #MV ^property[0].valueString = "09"

* #BU "Bulawayo"
* #BU ^property[0].code = #provinceCode
* #BU ^property[0].valueString = "10"

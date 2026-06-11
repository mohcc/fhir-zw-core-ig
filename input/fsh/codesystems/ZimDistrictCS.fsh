CodeSystem: ZimDistrictCS
Id: ZimDistrictCS
Title: "Zimbabwe District Code System"
Description: "Districts (and metropolitan sub-units) of Zimbabwe, from the MOHCC district table. The concept code is the 4-character district code = 2-digit province code (01-10, per ZimProvinceCS) + 2-character zero-padded district code. The 'provinceCode' property gives the parent province's 2-digit code. NOTE: Harare city units were re-parented from the source ProvinceID=1 (Manicaland) to Harare (01); the junk 'Harare' row (ProvinceID 7) and the non-standard Masvikeni A/B rows were excluded."
* ^experimental = false
* ^caseSensitive = true
* ^property[0].code = #provinceCode
* ^property[0].description = "The 2-digit code (01-10) of the province this district belongs to (see ZimProvinceCS)."
* ^property[0].type = #string

// ---- Harare (01) ----
* #010A "Harare Urban"
* #010A ^property[0].code = #provinceCode
* #010A ^property[0].valueString = "01"
* #010B "Chitungwiza Urban"
* #010B ^property[0].code = #provinceCode
* #010B ^property[0].valueString = "01"
* #010C "Chitungwiza Hospital"
* #010C ^property[0].code = #provinceCode
* #010C ^property[0].valueString = "01"
* #010D "Harare Central Hospital"
* #010D ^property[0].code = #provinceCode
* #010D ^property[0].valueString = "01"
* #010E "Parirenyatwa"
* #010E ^property[0].code = #provinceCode
* #010E ^property[0].valueString = "01"
* #010F "Harare City Clinics"
* #010F ^property[0].code = #provinceCode
* #010F ^property[0].valueString = "01"

// ---- Manicaland (02) ----
* #0201 "Buhera"
* #0201 ^property[0].code = #provinceCode
* #0201 ^property[0].valueString = "02"
* #0202 "Chimanimani"
* #0202 ^property[0].code = #provinceCode
* #0202 ^property[0].valueString = "02"
* #0203 "Chipinge"
* #0203 ^property[0].code = #provinceCode
* #0203 ^property[0].valueString = "02"
* #0204 "Makoni"
* #0204 ^property[0].code = #provinceCode
* #0204 ^property[0].valueString = "02"
* #0205 "Mutare"
* #0205 ^property[0].code = #provinceCode
* #0205 ^property[0].valueString = "02"
* #0206 "Mutasa"
* #0206 ^property[0].code = #provinceCode
* #0206 ^property[0].valueString = "02"
* #0207 "Nyanga"
* #0207 ^property[0].code = #provinceCode
* #0207 ^property[0].valueString = "02"
* #0208 "Mutare City"
* #0208 ^property[0].code = #provinceCode
* #0208 ^property[0].valueString = "02"

// ---- Mashonaland Central (03) ----
* #0301 "Bindura"
* #0301 ^property[0].code = #provinceCode
* #0301 ^property[0].valueString = "03"
* #0302 "Centenary"
* #0302 ^property[0].code = #provinceCode
* #0302 ^property[0].valueString = "03"
* #0303 "Guruve"
* #0303 ^property[0].code = #provinceCode
* #0303 ^property[0].valueString = "03"
* #0304 "Mazowe"
* #0304 ^property[0].code = #provinceCode
* #0304 ^property[0].valueString = "03"
* #0305 "Mt. Darwin"
* #0305 ^property[0].code = #provinceCode
* #0305 ^property[0].valueString = "03"
* #0306 "Rushinga"
* #0306 ^property[0].code = #provinceCode
* #0306 ^property[0].valueString = "03"
* #0307 "Shamva"
* #0307 ^property[0].code = #provinceCode
* #0307 ^property[0].valueString = "03"
* #0308 "Mbire"
* #0308 ^property[0].code = #provinceCode
* #0308 ^property[0].valueString = "03"

// ---- Mashonaland East (04) ----
* #0401 "Chikomba"
* #0401 ^property[0].code = #provinceCode
* #0401 ^property[0].valueString = "04"
* #0402 "Goromonzi"
* #0402 ^property[0].code = #provinceCode
* #0402 ^property[0].valueString = "04"
* #0403 "U.M.P"
* #0403 ^property[0].code = #provinceCode
* #0403 ^property[0].valueString = "04"
* #0404 "Hwedza"
* #0404 ^property[0].code = #provinceCode
* #0404 ^property[0].valueString = "04"
* #0405 "Marondera"
* #0405 ^property[0].code = #provinceCode
* #0405 ^property[0].valueString = "04"
* #0406 "Mudzi"
* #0406 ^property[0].code = #provinceCode
* #0406 ^property[0].valueString = "04"
* #0407 "Murewa"
* #0407 ^property[0].code = #provinceCode
* #0407 ^property[0].valueString = "04"
* #0408 "Mutoko"
* #0408 ^property[0].code = #provinceCode
* #0408 ^property[0].valueString = "04"
* #0409 "Seke"
* #0409 ^property[0].code = #provinceCode
* #0409 ^property[0].valueString = "04"

// ---- Mashonaland West (05) ----
* #0501 "Chegutu"
* #0501 ^property[0].code = #provinceCode
* #0501 ^property[0].valueString = "05"
* #0502 "Hurungwe"
* #0502 ^property[0].code = #provinceCode
* #0502 ^property[0].valueString = "05"
* #0503 "Kadoma"
* #0503 ^property[0].code = #provinceCode
* #0503 ^property[0].valueString = "05"
* #0504 "Kariba"
* #0504 ^property[0].code = #provinceCode
* #0504 ^property[0].valueString = "05"
* #0505 "Makonde"
* #0505 ^property[0].code = #provinceCode
* #0505 ^property[0].valueString = "05"
* #0506 "Zvimba"
* #0506 ^property[0].code = #provinceCode
* #0506 ^property[0].valueString = "05"

// ---- Matabeleland North (06) ----
* #0601 "Binga"
* #0601 ^property[0].code = #provinceCode
* #0601 ^property[0].valueString = "06"
* #0602 "Bubi"
* #0602 ^property[0].code = #provinceCode
* #0602 ^property[0].valueString = "06"
* #0603 "Hwange"
* #0603 ^property[0].code = #provinceCode
* #0603 ^property[0].valueString = "06"
* #0604 "Lupane"
* #0604 ^property[0].code = #provinceCode
* #0604 ^property[0].valueString = "06"
* #0605 "Nkayi"
* #0605 ^property[0].code = #provinceCode
* #0605 ^property[0].valueString = "06"
* #0606 "Tsholotsho"
* #0606 ^property[0].code = #provinceCode
* #0606 ^property[0].valueString = "06"
* #0607 "Umguza"
* #0607 ^property[0].code = #provinceCode
* #0607 ^property[0].valueString = "06"

// ---- Matabeleland South (07) ----
* #0701 "Beitbridge"
* #0701 ^property[0].code = #provinceCode
* #0701 ^property[0].valueString = "07"
* #0702 "Bulilima"
* #0702 ^property[0].code = #provinceCode
* #0702 ^property[0].valueString = "07"
* #0703 "Gwanda"
* #0703 ^property[0].code = #provinceCode
* #0703 ^property[0].valueString = "07"
* #0704 "Insiza"
* #0704 ^property[0].code = #provinceCode
* #0704 ^property[0].valueString = "07"
* #0705 "Matobo"
* #0705 ^property[0].code = #provinceCode
* #0705 ^property[0].valueString = "07"
* #0706 "Umzingwane"
* #0706 ^property[0].code = #provinceCode
* #0706 ^property[0].valueString = "07"
* #0707 "Mangwe"
* #0707 ^property[0].code = #provinceCode
* #0707 ^property[0].valueString = "07"

// ---- Midlands (08) ----
* #0801 "Chirumhanzu"
* #0801 ^property[0].code = #provinceCode
* #0801 ^property[0].valueString = "08"
* #0802 "Gokwe North"
* #0802 ^property[0].code = #provinceCode
* #0802 ^property[0].valueString = "08"
* #0803 "Gweru"
* #0803 ^property[0].code = #provinceCode
* #0803 ^property[0].valueString = "08"
* #0804 "Kwekwe"
* #0804 ^property[0].code = #provinceCode
* #0804 ^property[0].valueString = "08"
* #0805 "Mberengwa"
* #0805 ^property[0].code = #provinceCode
* #0805 ^property[0].valueString = "08"
* #0806 "Shurugwi"
* #0806 ^property[0].code = #provinceCode
* #0806 ^property[0].valueString = "08"
* #0807 "Zvishavane"
* #0807 ^property[0].code = #provinceCode
* #0807 ^property[0].valueString = "08"
* #0808 "Gokwe South"
* #0808 ^property[0].code = #provinceCode
* #0808 ^property[0].valueString = "08"

// ---- Masvingo (09) ----
* #0901 "Bikita"
* #0901 ^property[0].code = #provinceCode
* #0901 ^property[0].valueString = "09"
* #0902 "Chiredzi"
* #0902 ^property[0].code = #provinceCode
* #0902 ^property[0].valueString = "09"
* #0903 "Chivi"
* #0903 ^property[0].code = #provinceCode
* #0903 ^property[0].valueString = "09"
* #0904 "Gutu"
* #0904 ^property[0].code = #provinceCode
* #0904 ^property[0].valueString = "09"
* #0905 "Masvingo"
* #0905 ^property[0].code = #provinceCode
* #0905 ^property[0].valueString = "09"
* #0906 "Mwenezi"
* #0906 ^property[0].code = #provinceCode
* #0906 ^property[0].valueString = "09"
* #0907 "Zaka"
* #0907 ^property[0].code = #provinceCode
* #0907 ^property[0].valueString = "09"

// ---- Bulawayo (10) ----
* #1001 "Bulawayo (Rural)"
* #1001 ^property[0].code = #provinceCode
* #1001 ^property[0].valueString = "10"
* #100A "Bulawayo (Urban)"
* #100A ^property[0].code = #provinceCode
* #100A ^property[0].valueString = "10"
* #100B "Ingutsheni"
* #100B ^property[0].code = #provinceCode
* #100B ^property[0].valueString = "10"
* #100C "U.B.H."
* #100C ^property[0].code = #provinceCode
* #100C ^property[0].valueString = "10"
* #100D "Mpilo Hospital"
* #100D ^property[0].code = #provinceCode
* #100D ^property[0].valueString = "10"

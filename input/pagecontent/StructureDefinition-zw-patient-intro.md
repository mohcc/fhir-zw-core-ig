### Scope and Usage

The **Zimbabwe Patient** profile (`ZimPatient`) is the national core representation of a person receiving health services in Zimbabwe. It constrains the base FHIR R4 `Patient` resource to carry the demographic and identifying information required for interoperability across Zimbabwean health information systems.

This profile is intended to be referenced by every other resource in this Implementation Guide that points to a patient (for example `Encounter.subject`, `Observation.subject`, `Condition.subject`).

### Must Support

The following elements are flagged **Must Support** — consuming systems are expected to be able to process them and producing systems should populate them where the data is available:

* `identifier` — national identifiers (see below)
* `name` (with `family` and `given`)
* `gender`, `birthDate`, `maritalStatus`
* `telecom` — phone / email contact points
* `communication.language` — the patient's preferred language
* `contact` — next of kin / emergency contact
* `address` (with province and district)
* `deceased[x]`
* the `citizenship` and `place of birth` extensions

### Identifiers

A patient **must** carry at least one identifier. Identifiers are sliced by `system` into three nationally recognised types:

| Slice | system | Type code (v2-0203) | Format constraint |
|-------|--------|---------------------|-------------------|
| National Identity | `http://mohcc.gov.zw/identifiers/nationalID` | `NI` | `NN-NNNNNN[A]NN` e.g. `01-234567B89` |
| Health ID (PHID) | `http://mohcc.gov.zw/identifiers/phid` | *(text only)* | `DDDSDDDX` — 3 digits, letter (A-Z excl. I/O), 3 digits, Luhn check digit, e.g. `486B3072` |
| Passport Number | `http://mohcc.gov.zw/identifiers/passport` | `PPN` | `LL` + 6–7 digits, e.g. `CN123456` |

The National Identity and Passport Number formats are enforced by the `NationalIdentityPattern` and `PassportNumberPattern` invariants.

> **Note:** the identifier `system` URLs above are interim values and should be replaced with the official MOHCC canonical identifier systems before publication.

### Terminology

* **Gender** is bound (required) to [ZimGenderVS](ValueSet-ZimGender.html).
* **Marital status** is bound (required) to [ZimMaritalStatusVS](ValueSet-ZimMaritalStatus.html).
* **Address province** (`address.state`) is bound (required) to [ZimProvinceVS](ValueSet-ZimProvince.html) — the ten provinces of Zimbabwe as ISO 3166-2 codes.
* **Preferred language** (`communication.language`) is bound (preferred) to [ZimLanguageVS](ValueSet-ZimLanguage.html) — the official languages of Zimbabwe as BCP-47 codes.
* `address.country` is fixed to `ZW`.

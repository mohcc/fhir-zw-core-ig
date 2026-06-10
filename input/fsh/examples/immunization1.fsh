Instance: immunization1
InstanceOf: ZimImmunization
Title: "Example Immunization (BCG)"
Description: "BCG vaccination given at birth for the example Zimbabwean patient."

* status = #completed
* vaccineCode = $CVX#19
* vaccineCode.text = "BCG"
* patient = Reference(zw-patient-example)
* occurrenceDateTime = "1985-06-15"
* primarySource = true
* location = Reference(location1)
* performer.actor = Reference(practitioner1)
* lotNumber = "BCG-2026-001"

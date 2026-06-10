Instance: encounter1
InstanceOf: ZimEncounter
Title: "Example Encounter (Outpatient Visit)"
Description: "An ambulatory outpatient visit for the example Zimbabwean patient at Parirenyatwa."

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(zw-patient-example)
* participant[0].individual = Reference(practitioner1)
* period.start = "2026-05-01T09:00:00+02:00"
* period.end = "2026-05-01T09:30:00+02:00"
* location[0].location = Reference(location1)
* serviceProvider = Reference(organization1)

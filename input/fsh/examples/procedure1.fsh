Instance: procedure1
InstanceOf: ZimProcedure
Title: "Example Procedure (Malaria RDT)"
Description: "A malaria rapid diagnostic test performed for the example patient."

* status = #completed
* code.text = "Malaria rapid diagnostic test (RDT)"
* subject = Reference(zw-patient-example)
* encounter = Reference(encounter1)
* performedDateTime = "2026-05-01"
* performer[0].actor = Reference(practitioner1)
* reasonReference[0] = Reference(condition1)
* location = Reference(location1)

Instance: medicationrequest1
InstanceOf: ZimMedicationRequest
Title: "Example Medication Request (Antimalarial)"
Description: "An antimalarial prescription for the example patient diagnosed with malaria."

* status = #active
* intent = #order
* medicationCodeableConcept.text = "Artemether/Lumefantrine 20/120 mg tablet"
* subject = Reference(zw-patient-example)
* encounter = Reference(encounter1)
* authoredOn = "2026-05-01"
* requester = Reference(practitioner1)
* reasonReference[0] = Reference(condition1)
* dosageInstruction[0].text = "1 tablet twice daily for 3 days"

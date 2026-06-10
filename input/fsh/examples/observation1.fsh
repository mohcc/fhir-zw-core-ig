Instance: observation1
InstanceOf: ZimObservation
Title: "Example Observation (Body Weight)"
Description: "A body weight measurement for the example Zimbabwean patient."

* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $LNC#29463-7 "Body weight"
* subject = Reference(zw-patient-example)
* effectiveDateTime = "2026-05-01"
* performer[0] = Reference(practitioner1)
* valueQuantity = 70 'kg' "kg"

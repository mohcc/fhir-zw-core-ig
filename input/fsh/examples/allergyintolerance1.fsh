Instance: allergyintolerance1
InstanceOf: ZimAllergyIntolerance
Title: "Example Allergy (Penicillin)"
Description: "A confirmed high-criticality penicillin allergy for the example patient."

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category[0] = #medication
* criticality = #high
* code.text = "Penicillin"
* patient = Reference(zw-patient-example)
* recordedDate = "2026-05-01"
* recorder = Reference(practitioner1)
* reaction[0].manifestation[0].text = "Urticaria (hives)"

Instance: condition1
InstanceOf: ZimCondition
Title: "Example Condition (Malaria)"
Description: "A confirmed malaria diagnosis for the example Zimbabwean patient."

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $ICD10#B54 "Unspecified malaria"
* subject = Reference(zw-patient-example)
* encounter = Reference(encounter1)
* onsetDateTime = "2026-05-01"
* recordedDate = "2026-05-01"
* recorder = Reference(practitioner1)

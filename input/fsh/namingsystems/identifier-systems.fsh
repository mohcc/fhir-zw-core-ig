// NamingSystem definitions registering the identifier systems used in this IG.
// NOTE: the uniqueId URLs below are PROVISIONAL placeholders and must be replaced
// with the official MOHCC / Impilo canonical identifier systems before publication.

Instance: zw-national-identity-ns
InstanceOf: NamingSystem
Usage: #definition
Title: "Zimbabwe National Identity Namespace"
* name = "ZimNationalIdentity"
* status = #active
* kind = #identifier
* date = "2026-06-10"
* description = "Identifier system for the Zimbabwe National Identity number. PROVISIONAL URL pending the official MOHCC system."
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://mohcc.gov.zw/identifiers/nationalID"
* uniqueId[0].preferred = true

Instance: zw-phid-ns
InstanceOf: NamingSystem
Usage: #definition
Title: "Zimbabwe Patient Health ID (PHID) Namespace"
* name = "ZimPatientHealthId"
* status = #active
* kind = #identifier
* date = "2026-06-10"
* description = "Identifier system for the Patient Health ID (PHID) issued by the Impilo EMR. PROVISIONAL URL pending the official MOHCC / Impilo system."
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://mohcc.gov.zw/identifiers/phid"
* uniqueId[0].preferred = true

Instance: zw-passport-ns
InstanceOf: NamingSystem
Usage: #definition
Title: "Zimbabwe Passport Number Namespace"
* name = "ZimPassportNumber"
* status = #active
* kind = #identifier
* date = "2026-06-10"
* description = "Identifier system for Zimbabwe passport numbers. PROVISIONAL URL pending the official system."
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://mohcc.gov.zw/identifiers/passport"
* uniqueId[0].preferred = true

Instance: zw-practitioner-registration-ns
InstanceOf: NamingSystem
Usage: #definition
Title: "Zimbabwe Practitioner Registration Number Namespace"
* name = "ZimPractitionerRegistration"
* status = #active
* kind = #identifier
* date = "2026-06-10"
* description = "Identifier system for professional council registration numbers of Zimbabwe practitioners. PROVISIONAL URL pending the official system."
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://mohcc.gov.zw/identifiers/practitioner-registration"
* uniqueId[0].preferred = true

Instance: zw-facility-code-ns
InstanceOf: NamingSystem
Usage: #definition
Title: "Zimbabwe Health Facility Code Namespace"
* name = "ZimFacilityCode"
* status = #active
* kind = #identifier
* date = "2026-06-10"
* description = "Identifier system for Zimbabwe health facility codes (ZW + province + district + facility number). PROVISIONAL URL pending the official MOHCC system."
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://mohcc.gov.zw/identifiers/facility-code"
* uniqueId[0].preferred = true

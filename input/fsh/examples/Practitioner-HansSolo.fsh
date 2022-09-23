Instance: PractitionerHansSolo
InstanceOf: Practitioner
Title: "Practitioner/p6x5NWQPoKgyTKjAk"
Description: "Practitioner - Han Solo"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Practitioner"
* meta.security = #N "normal"
* language = #en-US
* id = "p6x5NWQPoKgyTKjAk"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/communication-proficiency"
* extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/LanguageProficiencyCS#30
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "NPI3233"
* active = true
* name.text = "Hans Solo, MD"
* name.family = "Solo"
* name.given = "Hans"
* qualification[0].extension.extension[0].url = "status"
* qualification[=].extension.extension[=].valueCode = #active
* qualification[=].extension.extension[+].url = "whereValid"
* qualification[=].extension.extension[=].valueCodeableConcept = https://www.usps.com/#IL
* qualification[=].extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/practitioner-qualification"
* qualification[=].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD
* qualification[=].code.text = "MD"
* qualification[=].issuer.display = "State of Illinois"
* qualification[+].extension.extension[0].url = "status"
* qualification[=].extension.extension[=].valueCode = #active
* qualification[=].extension.extension[+].url = "whereValid"
* qualification[=].extension.extension[=].valueCodeableConcept = https://www.usps.com/#IL
* qualification[=].extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/practitioner-qualification"
* qualification[=].code = http://nucc.org/provider-taxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[+].extension.extension[0].url = "status"
* qualification[=].extension.extension[=].valueCode = #active
* qualification[=].extension.extension[+].url = "whereValid"
* qualification[=].extension.extension[=].valueCodeableConcept = https://www.usps.com/#IL
* qualification[=].extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/practitioner-qualification"
* qualification[=].code = http://nucc.org/provider-taxonomy#207RC0000X "Cardiovascular Disease Physician"
* qualification[=].code.text = "Board Certified Cardiovascular Disease"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* communication = urn:ietf:bcp:47#ja
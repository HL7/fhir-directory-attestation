Instance: Counselor
InstanceOf: Practitioner
Title: "Practitioner/pBvMREMS3HpzyJgwa"
Description: "Practitioner - Counselor"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Practitioner"
* language = #en-US
* id = "pBvMREMS3HpzyJgwa"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/communication-proficiency"
* extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/LanguageProficiencyCS#30
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "NPI3238"
* active = true
* name.text = "Susie Smith, LPC"
* name.family = "Smith"
* name.given = "Susie"
* qualification.extension.extension[0].url = "status"
* qualification.extension.extension[=].valueCode = #active
* qualification.extension.extension[+].url = "whereValid"
* qualification.extension.extension[=].valueCodeableConcept = https://www.usps.com/#IL
* qualification.extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/practitioner-qualification"
* qualification.code.coding.display = "LPC"
* qualification.code.text = "IL"
* qualification.issuer.display = "State of Illinois"
* communication = urn:ietf:bcp:47#ru
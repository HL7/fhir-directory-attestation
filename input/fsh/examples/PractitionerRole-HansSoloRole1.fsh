Instance: HansSoloRole1
InstanceOf: PractitionerRole
Title: "PractitionerRole/rDAkiyGndx8FT5jpj"
Description: "Role - Part time physician, part time smuggler"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-PractitionerRole"
* language = #en-US
* id = "rDAkiyGndx8FT5jpj"
* extension[0].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/network-reference"
* extension[=].valueReference = Reference(OrganizationAcmeofCTStdNet)
* extension[+].extension[0].url = "code"
* extension[=].extension[=].valueCodeableConcept = http://nucc.org/provider-taxonomy#207R00000X
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCode = #active
* extension[=].extension[+].url = "issuer"
* extension[=].extension[=].valueReference.display = "American Board of Internal Medicine"
* extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/qualification"
* active = true
* practitioner = Reference(PractitionerHansSolo)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/ProviderRoleCS#ph
* specialty = http://nucc.org/provider-taxonomy#207R00000X "Internal Medicine Physician"
* location = Reference(HospLoc1)
* healthcareService = Reference(ServiceHansSolo)
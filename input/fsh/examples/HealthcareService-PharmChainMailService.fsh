Instance: ServicePharmChainMail
InstanceOf: HealthcareService
Title: "HealthcareService/hs53YAqF9RbwE8K2n"
Description: "HealthcareService - Pharmacy chain mail service"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hs53YAqF9RbwE8K2n"
* extension.extension[0].url = "type"
* extension.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#virtual
* extension.extension[+].url = "virtualModalities"
* extension.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/VirtualModalitiesCS#web
* extension.extension[+].url = "virtualModalities"
* extension.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/VirtualModalitiesCS#app
* extension.extension[+].url = "virtualModalities"
* extension.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/VirtualModalitiesCS#tdd
* extension.extension[+].url = "virtualModalities"
* extension.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/VirtualModalitiesCS#phone
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* active = true
* providedBy = Reference(Organization/o7C3dwiGT6Eatxkyb)
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#pharm "Pharmacy"
* specialty = http://nucc.org/provider-taxonomy#3336M0002X "Mail Order Pharmacy"
* name = "Mail Order Pharmacy by OrgA"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://mailorderrx.com"
* telecom[=].rank = 1
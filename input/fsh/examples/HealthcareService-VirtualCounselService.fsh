Instance: ServiceVirtualCounsel
InstanceOf: HealthcareService
Title: "HealthcareService/hsn93H9RbKTSH57AY"
Description: "HealthcareService - Virtual telehealth visit with professional counselor"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hsn93H9RbKTSH57AY"
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
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#prov "Medical Provider"
// * specialty = http://nucc.org/provider-taxonomy#101YP2500X "Professional Counselor"
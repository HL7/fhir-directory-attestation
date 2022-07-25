Instance: ServicePharmChainRetail
InstanceOf: HealthcareService
Title: "HealthcareService/hspFQ5Zbyc7hTzsAw"
Description: "HealthcareService - Pharmacy chain retail service"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hspFQ5Zbyc7hTzsAw"
* extension[0].extension.url = "type"
* extension[=].extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#physical
* extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* extension[+].extension[0].url = "acceptingPatients"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AcceptingPatientsCS#existptonly
* extension[=].extension[+].url = "fromNetwork"
* extension[=].extension[=].valueReference = Reference(OrganizationAcmeofCTStdNet)
* extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/newpatients"
* active = true
* providedBy = Reference(OrganizationPharmChain)
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#pharm "Pharmacy"
// * specialty = http://nucc.org/provider-taxonomy#3336C0003X "Community/Retail Pharmacy"
* location[0] = Reference(PharmLoc1)
* location[+] = Reference(PharmLoc2)
* location[+] = Reference(PharmLoc3)
* location[+] = Reference(PharmLoc4)
* name = "Pharmacy by PharmChain"
* telecom.extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/via-intermediary"
* telecom.extension.valueReference = Reference(OrganizationPharmChain)
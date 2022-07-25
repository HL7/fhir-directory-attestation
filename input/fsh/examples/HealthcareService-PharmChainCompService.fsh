Instance: ServicePharmChainComp
InstanceOf: HealthcareService
Title: "HealthcareService/hsMgv7tiYyaGsijG9"
Description: "HealthcareService - Pharmacy chain compounding pharmacy service"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hsMgv7tiYyaGsijG9"
* extension.extension.url = "type"
* extension.extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#physical
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* active = true
* providedBy = Reference(OrganizationPharmChain)
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#pharm "Pharmacy"
// * specialty = http://nucc.org/provider-taxonomy#3336C0004X "Compounding Pharmacy"
// * specialty.text = "Compounding Pharmacy"
* location = Reference(PharmLoc1)
* name = "Compounding Pharmacy by OrgA"
* telecom.extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/via-intermediary"
* telecom.extension.valueReference = Reference(PharmLoc1)
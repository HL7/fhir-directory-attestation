Instance: ServiceHospER
InstanceOf: HealthcareService
Title: "HealthcareService/hsEk35Ayonz755t6u"
Description: "HealthcareService - Emergency Medical Services"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hsEk35Ayonz755t6u"
* extension.extension.url = "type"
* extension.extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#physical
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* active = true
* providedBy = Reference(OrganizationHospital)
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#emerg
// * specialty = http://nucc.org/provider-taxonomy#207P00000X "Emergency Medicine Physician"
* location = Reference(HospLoc1)
Instance: ServiceHamiltonClinic
InstanceOf: HealthcareService
Title: "HealthcareService/hspy9XZcsSMcY3DJc"
Description: "HealthcareService - Family Medicine"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hspy9XZcsSMcY3DJc"
* extension.extension.url = "type"
* extension.extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#physical
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* active = true
* providedBy = Reference(OrganizationHamiltonClinic)
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#outpat
* specialty = http://nucc.org/provider-taxonomy#207Q00000X "Family Medicine Physician"
* location = Reference(HospLoc1)
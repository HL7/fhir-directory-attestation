Instance: ServiceCancerClinic
InstanceOf: NatlDirAttestHealthCareService
Title: "HealthcareService/hsutdKbC5QCe7Xtfn"
Description: "HealthcareService - Medical Oncology"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hsutdKbC5QCe7Xtfn"
* extension.extension.url = "type"
* extension.extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#physical
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* active = true
* providedBy = Reference(OrganizationBurrClinic)
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#outpat
// * specialty = http://nucc.org/provider-taxonomy#207RX0202X "Medical Oncology Physician"
* location = Reference(CancerClinicLoc)
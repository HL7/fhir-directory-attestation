Instance: ServiceHansSolo
InstanceOf: HealthcareService
Title: "HealthcareService/hsZchHy4Z3ufZw3tP"
Description: "HealthcareService - Family Medicine Solo Practice"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hsZchHy4Z3ufZw3tP"
* extension.extension.url = "type"
* extension.extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#physical
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* active = true
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#outpat
// * specialty = http://nucc.org/provider-taxonomy#207Q00000X "Family Medicine Physician"
* location = Reference(CancerClinicLoc)
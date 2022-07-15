Instance: ServiceHartfordOrthopedic
InstanceOf: HealthcareService
Title: "HealthcareService/hstqm7dvng64GJYeA"
Description: "HealthcareService - Hartford Orthopedics"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService"
* language = #en-US
* id = "hstqm7dvng64GJYeA"
* extension.extension.url = "type"
* extension.extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS#physical
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/delivery-method"
* active = true
* providedBy = Reference(OrganizationHartfordOrthopedics)
* category = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS#prov
* specialty = http://nucc.org/provider-taxonomy#207X00000X "Orthopaedic Surgery Physician"
* location[0] = Reference(HospLoc1)
* location[+] = Reference(HospLoc2)
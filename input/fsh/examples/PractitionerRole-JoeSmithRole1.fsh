Instance: JoeSmithRole1
InstanceOf: PractitionerRole
Title: "PractitionerRole/rtaTdfxSNTmqqnDeJ"
Description: "Role - Self defined role 1"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-PractitionerRole"
* language = #en-US
* id = "rtaTdfxSNTmqqnDeJ"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/network-reference"
* extension.valueReference = Reference(OrganizationAcmeofCTStdNet)
* active = true
* practitioner = Reference(PractitionerJoeSmith)
* organization = Reference(OrganizationHospital)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/ProviderRoleCS#ph
* specialty = http://nucc.org/provider-taxonomy#207R00000X "Internal Medicine Physician"
* location = Reference(HospLoc1)
* healthcareService = Reference(ServiceHospER) 
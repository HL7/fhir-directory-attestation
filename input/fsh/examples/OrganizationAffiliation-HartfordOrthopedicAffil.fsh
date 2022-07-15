Instance: HartfordOrthopedicAffil
InstanceOf: OrganizationAffiliation
Title: "OrganizationAffiliation/oareedAzJMQsamimk"
Description: "Hartford Orthopedic Provider Network"
Usage: #example
* id = "oareedAzJMQsamimk"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-OrganizationAffiliation"
* language = #en-US
* active = true
* organization = Reference(OrganizationHospital)
* participatingOrganization = Reference(OrganizationHartfordOrthopedics)
* network = Reference(OrganizationAcmeofCTStdNet)
* code = http://hl7.org/fhir/organization-role#provider
* location[0] = Reference(HospLoc1)
* location[+] = Reference(HospLoc2)
* healthcareService = Reference(ServiceHartfordOrthopedic)
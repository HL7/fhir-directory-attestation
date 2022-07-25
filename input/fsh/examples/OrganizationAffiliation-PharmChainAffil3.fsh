Instance: PharmChainAffil3
InstanceOf: OrganizationAffiliation
Title: "OrganizationAffiliation/oaPTusDv4SHhKWHJG"
Description: "GoodRx Mail Order Network"
Usage: #example
* id = "oaPTusDv4SHhKWHJG"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-OrganizationAffiliation"
* language = #en-US
* active = true
* participatingOrganization = Reference(OrganizationPharmChain)
* network = Reference(OrganizationAcmeofCTStdNet)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS#pharmacy
// * specialty = http://nucc.org/provider-taxonomy#3336M0002X "Mail Order Pharmacy"
* healthcareService = Reference(ServicePharmChainMail)
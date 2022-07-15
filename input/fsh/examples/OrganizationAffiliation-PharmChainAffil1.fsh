Instance: PharmChainAffil1
InstanceOf: OrganizationAffiliation
Title: "OrganizationAffiliation/oaGKaodXJgcsnAwr4"
Description: "GoodRx Retail Pharmacy Network"
Usage: #example
* id = "oaGKaodXJgcsnAwr4"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-OrganizationAffiliation"
* language = #en-US
* active = true
* participatingOrganization = Reference(OrganizationPharmChain)
* network = Reference(OrganizationAcmeofCTStdNet)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS#pharmacy
* specialty = http://nucc.org/provider-taxonomy#3336C0003X "Community/Retail Pharmacy"
* location[0] = Reference(PharmLoc1)
* location[+] = Reference(PharmLoc2)
* healthcareService = Reference(ServicePharmChainRetail) 
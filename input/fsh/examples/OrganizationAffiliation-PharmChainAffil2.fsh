Instance: PharmChainAffil2
InstanceOf: OrganizationAffiliation
Title: "OrganizationAffiliation/oaHDdxsHhAJ9dZFhL"
Description: "GoodRx Compounding Pharmacy Network"
Usage: #example
* id = "oaHDdxsHhAJ9dZFhL"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-OrganizationAffiliation"
* language = #en-US
* active = true
* participatingOrganization = Reference(OrganizationPharmChain)
* network = Reference(OrganizationAcmeofCTStdNet)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS#pharmacy
* specialty = http://nucc.org/provider-taxonomy#3336C0004X "Compounding Pharmacy"
* location = Reference(PharmLoc1)
* healthcareService = Reference(ServicePharmChainComp)
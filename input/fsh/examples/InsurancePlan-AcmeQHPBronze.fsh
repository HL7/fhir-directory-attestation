Instance: AcmeQHPBronze
InstanceOf: InsurancePlan
Title: "InsurancePlan/ipZFESpMpTshnEMrD"
Description: "Acme of Conneticut - Bronze Plan"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-InsurancePlan"
* language = #en-US
* id = "ipZFESpMpTshnEMrD"
* status = #active
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/InsuranceProductTypeCS#qhp "Qualified Health Plan"
* name = "Acme of CT QHP Bronze"
* ownedBy = Reference(OrganizationAcme)
* administeredBy = Reference(OrganizationAcme)
* coverageArea = Reference(StateOfCTLocation)
* endpoint = Reference(EndpointStJames)
* network = Reference(OrganizationAcmeofCTStdNet)
* plan.type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/InsurancePlanTypeCS#bronze "Bronze-QHP"
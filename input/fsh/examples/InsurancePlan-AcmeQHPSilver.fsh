Instance: AcmeQHPSilver
InstanceOf: InsurancePlan
Title: "InsurancePlan/ipHFxNktk8dvN7qEG"
Description: "Acme of Conneticut - Silver Plan"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-InsurancePlan"
* language = #en-US
* id = "ipHFxNktk8dvN7qEG"
* status = #active
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/InsuranceProductTypeCS#qhp "Qualified Health Plan"
* name = "Acme of CT QHP Silver"
* ownedBy = Reference(Organization/Acme)
* administeredBy = Reference(Organization/Acme)
* coverageArea = Reference(Location/StateOfCTLocation)
* endpoint = Reference(Endpoint/AcmeOfCTPortalEndpoint)
* network[0] = Reference(Organization/AcmeofCTStdNet)
* network[+] = Reference(Organization/AcmeofCTPremNet)
* plan.type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/InsurancePlanTypeCS#silver "Silver-QHP"
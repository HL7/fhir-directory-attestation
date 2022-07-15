Instance: HamiltonClinicAffil
InstanceOf: OrganizationAffiliation
Title: "OrganizationAffiliation/oaqirA9KjALpeDBjs"
Description: "Hamilton Clinic Outpatient Network"
Usage: #example
* id = "oaqirA9KjALpeDBjs"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-OrganizationAffiliation"
* language = #en-US
* active = true
* participatingOrganization = Reference(OrganizationHamiltonClinic)
* network = Reference(OrganizationAcmeofCTStdNet)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS#outpatient
* location = Reference(HospLoc1)
* healthcareService = Reference(ServiceHamiltonClinic)
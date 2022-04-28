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
* participatingOrganization = Reference(Organization/HamiltonClinic)
* network = Reference(Organization/AcmeofCTStdNet)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS#outpatient
* location = Reference(Location/HospLoc1)
* healthcareService = Reference(HealthcareService/HamiltonClinicServices)
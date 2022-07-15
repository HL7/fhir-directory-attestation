Instance: BurrClinicAffil
InstanceOf: OrganizationAffiliation
Title: "OrganizationAffiliation/oa3oxC4yKJnB2E7on"
Description: "Burr Clinic Outpatient Network"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-OrganizationAffiliation"
* language = #en-US
* id = "oa3oxC4yKJnB2E7on"
* active = true
* organization = Reference(OrganizationHospital)
* participatingOrganization = Reference(OrganizationBurrClinic)
* network = Reference(OrganizationAcmeofCTStdNet)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS#outpatient
* location = Reference(HospLoc2)
* healthcareService = Reference(ServiceBurrClinic)
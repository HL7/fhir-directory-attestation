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
* organization = Reference(Organization/o68Sau8tELE3GDnqR)
* participatingOrganization = Reference(Organization/BurrClinic)
* network = Reference(Organization/AcmeofCTStdNet)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS#outpatient
* location = Reference(Location/HospLoc2)
* healthcareService = Reference(HealthcareService/BurrClinicServices)
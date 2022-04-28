Instance: JoeSmithRole2
InstanceOf: PractitionerRole
Title: "PractitionerRole/rP5Wt9gxQwyL7M8fX"
Description: "Role - Self defined role 2"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-PractitionerRole"
* language = #en-US
* id = "rP5Wt9gxQwyL7M8fX"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/network-reference"
* extension.valueReference = Reference(Organization/AcmeofCTStdNet)
* active = true
* organization = Reference(Organization/BurrClinic)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/ProviderRoleCS#ph
* specialty = http://nucc.org/provider-taxonomy#207R00000X "Internal Medicine Physician"
* location = Reference(Location/HospLoc2)
* healthcareService = Reference(HealthcareService/BurrClinicServices)
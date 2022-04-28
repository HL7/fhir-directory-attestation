Instance: AnonRole
InstanceOf: PractitionerRole
Title: "PractitionerRole/rALFxTbdo6nEq5za6"
Description: "Role - Anonymous users not registered with the system"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-PractitionerRole"
* language = #en-US
* id = "rALFxTbdo6nEq5za6"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/network-reference"
* extension.valueReference = Reference(Organization/AcmeofCTStdNet)
* active = true
* organization = Reference(Organization/CancerClinic)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/ProviderRoleCS#ph
* specialty = http://nucc.org/provider-taxonomy#207R00000X "Internal Medicine Physician"
* location = Reference(Location/HospLoc2)
* healthcareService = Reference(HealthcareService/BurrClinicServices)
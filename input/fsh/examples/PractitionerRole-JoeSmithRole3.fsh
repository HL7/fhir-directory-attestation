Instance: JoeSmithRole3
InstanceOf: PractitionerRole
Title: "PractitionerRole/rGCrprwcPa3fj629w"
Description: "Role - Self defined role 3"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-PractitionerRole"
* language = #en-US
* id = "rGCrprwcPa3fj629w"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/network-reference"
* extension.valueReference = Reference(OrganizationAcmeofCTStdNet)
* active = true
* organization = Reference(OrganizationHospital)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/ProviderRoleCS#ap
* specialty[0] = http://nucc.org/provider-taxonomy#207R00000X "Internal Medicine Physician"
* specialty[+] = http://nucc.org/provider-taxonomy#207RC0000X "Cardiovascular Disease Physician"
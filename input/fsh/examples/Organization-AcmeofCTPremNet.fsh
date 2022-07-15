Instance: OrganizationAcmeofCTPremNet
InstanceOf: Organization
Title: "Organization/opgQrsHZfpYNoohzD"
Description: "ACME Premium"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Network"
* language = #en-US
* id = "o4gQrsHZfpYNoohzD"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/location-reference"
* extension.valueReference = Reference(LocationStateOfCTLocation)
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS#ntwk "Network"
* name = "ACME CT Premium Preferred Provider Network"
* partOf = Reference(OrganizationAcme)
* contact.name.family = "Kawasaki"
* contact.name.given = "Jane"
* contact.telecom.extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/via-intermediary"
* contact.telecom.extension.valueReference = Reference(OrganizationAcme)
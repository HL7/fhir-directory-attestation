Instance: OrganizationHospital
InstanceOf: Organization
Title: "Organization/oJ8Sau8tELE3GDnqR"
Description: "Hartford General Hospital"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
* language = #en-US
* id = "o68Sau8tELE3GDnqR"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "NPI456"
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS#fac "Facility"
* name = "Hartford General Hospital"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.hartfordgeneralhospital.com"
* telecom[=].rank = 1
* address.line = "123 Main Street"
* address.city = "Hartford"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom.system = #phone
* contact.telecom.value = "(111)-222-3333"
* contact.telecom.rank = 1
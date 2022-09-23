Instance: OrganizationConnHIE
InstanceOf: Organization
Title: "Organization/oyCXtWS6CWaH4J8c9"
Description: "Connecticut Health Information Exchange (CHIE)"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
* meta.security = #N "normal"
* language = #en-US
* id = "o5CXtWS6CWaH4J8c9"
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS#atyprv "Atypical Provider"
* name = "Connecticut HIE"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.connhie.com"
* telecom[=].rank = 1
* address.line = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom.system = #phone
* contact.telecom.value = "(111)-222-3333"
* contact.telecom.rank = 1
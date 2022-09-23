Instance: OrganizationPharmChain
InstanceOf: Organization
Title: "Organization/obC3dwiGT6Eatxkyb"
Description: "GoodRx Pharmacy"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
* meta.security = #N "normal"
* language = #en-US
* id = "o7C3dwiGT6Eatxkyb"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "NPI-ORGA"
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS#prvgrp "Provider Group"
* name = "GoodRx Pharmacy"
* telecom[0].extension.extension[0].url = "daysOfWeek"
* telecom[=].extension.extension[=].valueCode = #mon
* telecom[=].extension.extension[+].url = "daysOfWeek"
* telecom[=].extension.extension[=].valueCode = #tue
* telecom[=].extension.extension[+].url = "daysOfWeek"
* telecom[=].extension.extension[=].valueCode = #wed
* telecom[=].extension.extension[+].url = "daysOfWeek"
* telecom[=].extension.extension[=].valueCode = #thu
* telecom[=].extension.extension[+].url = "daysOfWeek"
* telecom[=].extension.extension[=].valueCode = #fri
* telecom[=].extension.extension[+].url = "availableStartTime"
* telecom[=].extension.extension[=].valueTime = "08:00:00"
* telecom[=].extension.extension[+].url = "availableEndTime"
* telecom[=].extension.extension[=].valueTime = "17:00:00"
* telecom[=].extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime"
* telecom[=].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.pharmchain.com"
* telecom[=].rank = 1
* address.line = "123 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"
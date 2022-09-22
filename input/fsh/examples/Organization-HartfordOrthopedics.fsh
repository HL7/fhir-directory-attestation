Instance: OrganizationHartfordOrthopedics
InstanceOf: Organization
Title: "Organization/oJeQQrm6h4TQwhbAa"
Description: "Hartford Orthopedics"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
* meta.security = #N "normal"
* language = #en-US
* id = "o6eQQrm6h4TQwhbAa"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "NPI456"
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS#prvgrp "Provider Group"
* name = "Hartford Orthopedics Services"
* telecom[0].extension[0].extension[0].url = "daysOfWeek"
* telecom[=].extension[=].extension[=].valueCode = #mon
* telecom[=].extension[=].extension[+].url = "daysOfWeek"
* telecom[=].extension[=].extension[=].valueCode = #tue
* telecom[=].extension[=].extension[+].url = "daysOfWeek"
* telecom[=].extension[=].extension[=].valueCode = #wed
* telecom[=].extension[=].extension[+].url = "daysOfWeek"
* telecom[=].extension[=].extension[=].valueCode = #thu
* telecom[=].extension[=].extension[+].url = "daysOfWeek"
* telecom[=].extension[=].extension[=].valueCode = #fri
* telecom[=].extension[=].extension[+].url = "allDay"
* telecom[=].extension[=].extension[=].valueBoolean = true
* telecom[=].extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime"
* telecom[=].extension[+].extension[0].url = "daysOfWeek"
* telecom[=].extension[=].extension[=].valueCode = #sat
* telecom[=].extension[=].extension[+].url = "daysOfWeek"
* telecom[=].extension[=].extension[=].valueCode = #sun
* telecom[=].extension[=].extension[+].url = "availableStartTime"
* telecom[=].extension[=].extension[=].valueTime = "08:00:00"
* telecom[=].extension[=].extension[+].url = "availableEndTime"
* telecom[=].extension[=].extension[=].valueTime = "17:00:00"
* telecom[=].extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime"
* telecom[=].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.orga.com"
* telecom[=].rank = 1
* address.line = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom.extension[0].extension[0].url = "daysOfWeek"
* contact.telecom.extension[=].extension[=].valueCode = #mon
* contact.telecom.extension[=].extension[+].url = "daysOfWeek"
* contact.telecom.extension[=].extension[=].valueCode = #tue
* contact.telecom.extension[=].extension[+].url = "daysOfWeek"
* contact.telecom.extension[=].extension[=].valueCode = #wed
* contact.telecom.extension[=].extension[+].url = "daysOfWeek"
* contact.telecom.extension[=].extension[=].valueCode = #thu
* contact.telecom.extension[=].extension[+].url = "daysOfWeek"
* contact.telecom.extension[=].extension[=].valueCode = #fri
* contact.telecom.extension[=].extension[+].url = "allDay"
* contact.telecom.extension[=].extension[=].valueBoolean = true
* contact.telecom.extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime"
* contact.telecom.extension[+].extension[0].url = "daysOfWeek"
* contact.telecom.extension[=].extension[=].valueCode = #sat
* contact.telecom.extension[=].extension[+].url = "daysOfWeek"
* contact.telecom.extension[=].extension[=].valueCode = #sun
* contact.telecom.extension[=].extension[+].url = "availableStartTime"
* contact.telecom.extension[=].extension[=].valueTime = "08:00:00"
* contact.telecom.extension[=].extension[+].url = "availableEndTime"
* contact.telecom.extension[=].extension[=].valueTime = "17:00:00"
* contact.telecom.extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime"
* contact.telecom.system = #phone
* contact.telecom.value = "(111)-222-3333"
* contact.telecom.rank = 2
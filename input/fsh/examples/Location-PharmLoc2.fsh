Instance: PharmLoc2
InstanceOf: Location
Title: "Location/lyW5mPW2nf3DHC7h6"
Description: "444 Main Street, Rainbow, CT, 00014"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.security = #N "normal"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Location"
* language = #en-US
* extension[0].extension[0].url = "acceptingPatients"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AcceptingPatientsCS#existptonly
* extension[=].extension[+].url = "fromNetwork"
* extension[=].extension[=].valueReference = Reference(OrganizationAcmeofCTStdNet)
* extension[=].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/newpatients"
* extension[+].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AccessibilityCS#adacomp
* extension[+].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AccessibilityCS#pubtrans
* status = #active
* id = "lyW5mPW2nf3DHC7h6"
* name = "OrgA CT Location 2"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#OUTPHARM "outpatient pharmacy"
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
* telecom[=].value = "(777)-888-9999"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.orga.com"
* telecom[=].rank = 1
* address.line = "444 Main Street"
* address.city = "Rainbow"
* address.state = "CT"
* address.postalCode = "00014-1334"
* position.longitude = 9
* position.latitude = 18
* managingOrganization = Reference(OrganizationBigBox)
* hoursOfOperation[0].daysOfWeek[0] = #mon
* hoursOfOperation[=].daysOfWeek[+] = #tue
* hoursOfOperation[=].daysOfWeek[+] = #wed
* hoursOfOperation[=].daysOfWeek[+] = #thu
* hoursOfOperation[=].daysOfWeek[+] = #fri
* hoursOfOperation[=].allDay = true
* hoursOfOperation[+].daysOfWeek[0] = #sat
* hoursOfOperation[=].daysOfWeek[+] = #sun
* hoursOfOperation[=].openingTime = "08:00:00"
* hoursOfOperation[=].closingTime = "17:00:00"
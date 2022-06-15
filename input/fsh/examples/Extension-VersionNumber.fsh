Extension: VersionNumber
Id: VersionNumber
Title: "Version Number"
Description: ""
* ^version = "1.1.0"
* ^publisher = "HL7 Structured Documents Working Group"
* ^contact[0].name = "HL7 Structured Documents Working Group"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/structure/index.cfm"
* ^contact[+].name = "Rick Geimer"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "rick.geimer@lantanagroup.com"
* ^contact[+].name = "Sarah Gaunt"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "sarah.gaunt@lantanagroup.com"
* ^contact[+].name = "Brett Marquard"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "brett@riverrockassociates.com"
* ^contact[+].name = "Corey Spears"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "spears.corey@gmail.com"
* ^contact[+].name = "Meenaxi Gosai"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "meenaxi.gosai@lantanagroup.com"
* ^contact[+].name = "HL7 International - Structured Documents"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/structure"
* ^jurisdiction = urn:iso:std:iso:3166#US

* ^context.type = #element
* ^context.expression = "Composition"
* valueInteger[valueInteger] only integer
* valueInteger[valueInteger] ^sliceName = "valueInteger"
* valueInteger[valueInteger] ^mustSupport = true
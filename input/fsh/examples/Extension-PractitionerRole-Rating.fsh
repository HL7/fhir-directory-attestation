Extension: PractitionerRoleRating
Id: PractitionerRoleRating
Title: "Practitioner Role Rating"
Description: "Rating for practitioner role."
* ^meta.versionId = "1"
* ^version = "0.1.0"
* ^publisher = "FHIR At Scale Taskforce - National Directory"
* ^contact[0].name = "HL7 Structured Documents Working Group"
* ^contact[0].name = "HL7 Structured Documents Working Group"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/structure/index.cfm"
* ^contact[+].name = "Sean Mahoney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "smahoney@mitre.org"
* ^contact[+].name = "Abigail Watson"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "awatson@mitre.org"
* ^contact[+].name = "Dave Hill"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "dwhill@mitre.org"
* ^contact[+].name = "Corey Spears"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "spears.corey@gmail.com"
* ^contact[+].name = "HL7 International - National Directory Workgroup"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/structure"
* ^jurisdiction = urn:iso:std:iso:3166#US

* ^context.type = #element
* ^context.expression = "Composition"
* valueInteger[valueInteger] only integer
* valueInteger[valueInteger] ^sliceName = "valueInteger"
* valueInteger[valueInteger] ^mustSupport = true
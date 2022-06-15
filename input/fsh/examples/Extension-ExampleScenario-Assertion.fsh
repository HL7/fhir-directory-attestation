Extension: ExampleScenarioAssertion
Id: ExampleScenarioAssertion
Title: "ExampleScenario Assertion"
Description: "When you want to add an assertion to an ExampleScenario.  Useful when writing TestScripts."
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


// TODO: Convert the following into a valueCodableConcept or something similar
// or maybe a complex extension, with three encoded fields
// "assert": {
//     "description": "Confirm that the returned HTTP status is 200(OK).",
//     "response": "okay",
//     "warningOnly": false
// }


* ^context.type = #element
* ^context.expression = "?????????????"

// // description
// * valueString[valueString] only string
// * valueString[valueString] ^sliceName = "valueString"
// * valueString[valueString] ^mustSupport = true

// * valueCode[valueCode] only string
// * valueCode[valueCode] ^sliceName = "valueCode"
// * valueCode[valueCode] ^mustSupport = true


// * valueBoolean[valueBoolean] only boolean
// * valueBoolean[valueBoolean] ^sliceName = "valueBoolean"
// * valueBoolean[valueBoolean] ^mustSupport = true

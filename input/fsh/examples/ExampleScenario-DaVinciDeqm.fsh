// Instance: DaVinciDeqm
// InstanceOf: ExampleScenario
// Title: "DaVinci - Signed Measure Report"
// Description: "Scenario - DaVinci DEQM Provenance"
// Usage: #definition

// * status = #active
// * actor[0].actorId = "m6AJtyEk6sSsHWLjt"
// * actor[=].type = #entity
// * actor[=].name = "St. Jame’s Infirmary"
// * actor[+].actorId = "fZzusFYr3PBYyRnot"
// * actor[=].type = #person
// * actor[=].name = "Allison Camron, MD"

// * instance[0].resourceId = "l4bjaZGQfeNfhAEpb"
// * instance[=].resourceType = #Location
// * instance[=].name = "456 Main Street Anytown CT 00014-1234"
// * instance[+].resourceId = "hsEk35Ayonz755t6u"
// * instance[=].resourceType = #HealthcareService
// * instance[=].name = "Emergency Medicine "
// * instance[+].resourceId = "etKzBJvzbeHDZi7Gd"
// * instance[=].resourceType = #Endpoint
// * instance[=].name = "St. James Portal"

// * process[0].title = "Query directory for St. James Infirmary"
// * process[=].preConditions = ""
// * process[=].postConditions = ""
// * process[=].step[0].operation.number = "1"
// * process[=].step[=].operation.type = "read"
// * process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
// * process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
// * process[=].step[=].operation.name = "Query St. James FHIR server for monthly care gaps report"
// * process[=].step[=].operation.description = "/MeasureReport?measure=12345&date=202205"


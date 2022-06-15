Instance: AttestationScenario
InstanceOf: ExampleScenario
Title: "New Facility Attestation"
Description: "Scenario - New Facility Attestation"
Usage: #definition
* id = "PAsijcfHEKD9siu4h"
* status = #active

* actor[0].actorId = "m6AJtyEk6sSsHWLjt"
* actor[=].type = #entity
* actor[=].name = "St. Jame’s Infirmary"
* actor[+].actorId = "fZzusFYr3PBYyRnot"
* actor[=].type = #person
* actor[=].name = "Allison Camron, MD"


* instance[0].resourceId = "l4bjaZGQfeNfhAEpb"
* instance[=].resourceType = #Location
* instance[=].name = "456 Main Street Anytown CT 00014-1234"
* instance[+].resourceId = "hsEk35Ayonz755t6u"
* instance[=].resourceType = #HealthcareService
* instance[=].name = "Emergency Medicine Physician"
* instance[+].resourceId = "etKzBJvzbeHDZi7Gd"
* instance[=].resourceType = #Endpoint
* instance[=].name = "St. James Portal"


* instance[+].resourceId = "dTixApQCHxxheiLX3"
* instance[=].resourceType = #Device
* instance[=].name = "Distributed App (DApp)"

* instance[+].resourceId = "oPxE9d7Wtqjy9WEZx"
* instance[=].resourceType = #Device
* instance[=].name = "National Directory"


* process[0].title = "Query directory for St. James Infirmary"
* process[=].preConditions = ""
* process[=].postConditions = ""
* process[=].step[0].operation.number = "1"
* process[=].step[=].operation.type = "post"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Attest St. James Infirmary organization to the National Directory"
* process[=].step[=].operation.description = "/Organization/123"

* process[=].step[+].operation.number = "2"
* process[=].step[=].operation.type = "post"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Attest street address  to the National Directory"
* process[=].step[=].operation.description = "/Location/123"

* process[=].step[+].operation.number = "3"
* process[=].step[=].operation.type = "post"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Attest local services to the National Directory"
* process[=].step[=].operation.description = "/HealthcareService/123"

* process[=].step[+].operation.number = "4"
* process[=].step[=].operation.type = "post"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Attest local services to the National Directory"
* process[=].step[=].operation.description = "/Endpoint/123"

* process[=].step[+].operation.number = "5"
* process[=].step[=].operation.type = "post"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Attest physician to the National Directory"
* process[=].step[=].operation.description = "/Practitioner/123"

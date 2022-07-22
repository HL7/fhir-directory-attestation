Instance: FederatedQueryScenario
InstanceOf: ExampleScenario
Title: "Federated Endpoint Query"
Description: "Scenario - Federated Endpoint Query"
Usage: #example
* id = "N4qis3v6pkhtJrPFK"
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
* instance[=].name = "Emergency Medicine "

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
* process[=].step[=].operation.type = "get"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Query directory for St. James Infirmary organization"
* process[=].step[=].operation.description = "/Organization?name=St. James Infirmary"

* process[=].step[+].operation.number = "2"
* process[=].step[=].operation.type = "get"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Query directory for street address"
* process[=].step[=].operation.description = "/Location?address=456 Main Street"

* process[=].step[+].operation.number = "3"
* process[=].step[=].operation.type = "get"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Query directory for street address"
* process[=].step[=].operation.description = "/Location?address-postalcode=00014"

* process[=].step[+].operation.number = "4"
* process[=].step[=].operation.type = "get"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Query directory for local services"
* process[=].step[=].operation.description = "/HealthcareService?category=emergency"

* process[=].step[+].operation.number = "5"
* process[=].step[=].operation.type = "get"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Query directory for local services"
* process[=].step[=].operation.description = "/Endpoint?name=St. James"

* process[=].step[+].operation.number = "6"
* process[=].step[=].operation.type = "get"
* process[=].step[=].operation.initiator = "Organization/oPxE9d7Wtqjy9WEZx"
* process[=].step[=].operation.receiver = "Device/dTixApQCHxxheiLX3"
* process[=].step[=].operation.name = "Query directory for physician"
* process[=].step[=].operation.description = "/Practitioner?name=Camron"




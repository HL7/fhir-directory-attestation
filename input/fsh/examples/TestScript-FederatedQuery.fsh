Instance: FederatedQueryTestScript
InstanceOf: TestScript
Title: "Federated Query"
Description: "TestScript - Distribute App (DApp) access to a centralized directory."
Usage: #definition
* id = "fquA2atodHs6n3cYs"
* url = "http://example.org/ExampleScenario/FederatedQuery"
* status = #active
* name = ""
* title = ""
* date = "2022-06-03T18:08:03.756Z"
* publisher = ""
* version = "0.0.1"
* fixture[0].resource = Reference(m6AJtyEk6sSsHWLjt) "St. Jame’s Infirmary"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].resource = Reference(fZzusFYr3PBYyRnot) "Allison Camron, MD"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].resource.type = "Location"
* fixture[=].resource = Reference(l4bjaZGQfeNfhAEpb) "456 Main Street Anytown CT 00014-1234"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].resource.type = "HealthcareService"
* fixture[=].resource = Reference(hsEk35Ayonz755t6u) "Emergency Medicine "
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].resource.type = "Endpoint"
* fixture[=].resource = Reference(etKzBJvzbeHDZi7Gd) "St. James Portal"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].resource.type = "Device"
* fixture[=].resource = Reference(dTixApQCHxxheiLX3) "Distributed App (DApp)"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].resource.type = "Device"
* fixture[=].resource = Reference(oPxE9d7Wtqjy9WEZx) "National Directory"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* test.name = "Query directory for St. James Infirmary"
* test.action[0].operation.method = #get 
* test.action[=].operation.label = "Query directory for St. James Infirmary organization"
* test.action[=].operation.description = "/Organization?name=St. James Infirmary"
* test.action[=].operation.targetId = "dTixApQCHxxheiLX3"
* test.action[=].operation.sourceId = "oPxE9d7Wtqjy9WEZx"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.url = "/Organization?name=St. James Infirmary"
* test.action[+].operation.method = #get 
* test.action[=].operation.label = "Query directory for street address"
* test.action[=].operation.description = "/Location?address=456 Main Street"
* test.action[=].operation.targetId = "dTixApQCHxxheiLX3"
* test.action[=].operation.sourceId = "oPxE9d7Wtqjy9WEZx"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.url = "/Location?address=456 Main Street"
* test.action[+].operation.method = #get 
* test.action[=].operation.label = "Query directory for street address"
* test.action[=].operation.description = "/Location?address-postalcode=00014"
* test.action[=].operation.targetId = "dTixApQCHxxheiLX3"
* test.action[=].operation.sourceId = "oPxE9d7Wtqjy9WEZx"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.url = "/Location?address-postalcode=00014"
* test.action[+].operation.method = #get 
* test.action[=].operation.label = "Query directory for local services"
* test.action[=].operation.description = "/HealthcareService?category=emergency"
* test.action[=].operation.targetId = "dTixApQCHxxheiLX3"
* test.action[=].operation.sourceId = "oPxE9d7Wtqjy9WEZx"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.url = "/HealthcareService?category=emergency"
* test.action[+].operation.method = #get 
* test.action[=].operation.label = "Query directory for local services"
* test.action[=].operation.description = "/Endpoint?name=St. James"
* test.action[=].operation.targetId = "dTixApQCHxxheiLX3"
* test.action[=].operation.sourceId = "oPxE9d7Wtqjy9WEZx"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.url = "/Endpoint?name=St. James"
* test.action[+].operation.method = #get 
* test.action[=].operation.label = "Query directory for physician"
* test.action[=].operation.description = "/Practitioner?name=Camron"
* test.action[=].operation.targetId = "dTixApQCHxxheiLX3"
* test.action[=].operation.sourceId = "oPxE9d7Wtqjy9WEZx"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.url = "/Practitioner?name=Camron"
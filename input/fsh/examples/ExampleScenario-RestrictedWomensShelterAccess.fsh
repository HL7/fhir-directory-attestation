Instance: WomensShelters
InstanceOf: ExampleScenario
Title: "Protected Womens' Shelters"
Description: "Scenario - Restricted Womens' Shelter Access"
Usage: #definition
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

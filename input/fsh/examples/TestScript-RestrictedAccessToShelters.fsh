Instance: RestrictedDataTestScript
InstanceOf: TestScript
Title: "Restricted Access"
Description: "TestScript - Restricted access to women's shelters."
Usage: #definition
* id = "XA9eSGbRZR7Nrz2Gd"
* url = "http://"
* status = #draft
* name = "Tiered_OAuth_Restricted_Data"
* title = "Tiered OAuth - Restricted Access to Womens Shelters"
* date = "2022-06-14T23:19:30.696Z"
* publisher = "FHIR at Scale Taskforce (FAST) && FHIR Foundry"
* version = "0.0.1"
* jurisdiction = urn:iso:std:iso:3166#US
* fixture[0].id = "73594318-988d-5647-b3d8-1f1841578c27"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Location"
* fixture[=].resource = Reference(PharmLoc2) "OrgA CT Location 2" 
* fixture[+].id = "43552bb8-5e5e-58e2-b233-36727b1d9d87"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "ExampleScenario"
* fixture[=].resource = Reference(WomensShelterScenario)
* test[0].id = "4222467a-7bc0-54e4-9879-88fa0c05c412"
* test[=].name = "Social Worker - Access Role"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Social Worker - Access Role"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/PractitionerRole/rCY6ePpLywTbfx3yp"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/PractitionerRole/rCY6ePpLywTbfx3yp"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "ef27765c-a138-5669-b255-17bb91d30cc0"
* test[=].name = "Women's Shelter Location"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Women's Shelter Location"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Location/lyW5mPW2nf3DHC7h6"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Location/lyW5mPW2nf3DHC7h6"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Location
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "309ca261-92bf-5063-ba69-77f29c52c671"
* test[=].name = "Restriction on accessing Women's Shelters"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Restriction on accessing Women's Shelters"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Restriction/cotkDnGQjpHijDsRR"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Restriction/cotkDnGQjpHijDsRR"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "5fa71b21-0437-58c1-9110-2e19b3ada768"
* test[=].name = "Betty Busybody"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Betty Busybody"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Practitioner"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Practitioner"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Practitioner
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
Instance: DynamicClientRegistrationTestScript
InstanceOf: TestScript
Title: "Dynamic Client Registration"
Description: "TestScript - Dynamic Client Registration"
Usage: #definition
* id = "gszMyXpwsdoAjJZeh"
* url = "http://DynamicClientRegistrationTestScript"
* status = #draft
* name = "UDAP_Dynamic_Client_Registration"
* title = "UDAP Dynamic Client Registration"
* date = "2022-06-14T23:24:46.024Z"
* publisher = "FHIR at Scale Taskforce (FAST) && FHIR Foundry"
* version = "0.0.1"
* jurisdiction = urn:iso:std:iso:3166#US
* fixture[0].id = "47be8943-2604-5d89-abb9-5c4e13a5120b"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].id = "8b3f5577-4344-5c5e-91a0-ac4942632496"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].id = "b079ec7f-b12a-5fec-bd06-338c44571163"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].id = "f6c54af2-61fd-586d-afde-2d402ebf33af"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].id = "ff897a54-61db-5461-aebb-a42fc4ed0e4d"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* test[0].id = "61dcf836-8376-5637-90e0-24ede617b7b7"
* test[=].name = "National Directory - FHIR Metadata"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "National Directory - FHIR Metadata"
* test[=].action[=].operation.description = "GET {{hostname}}/baseR4/metadata"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/metadata"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "72dc5199-fe6f-5c22-bf91-73f0d040d35f"
* test[=].name = "National Directory - UDAP Metadata"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "National Directory - UDAP Metadata"
* test[=].action[=].operation.description = "GET {{hostname}}/.well-known/udap"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/.well-known/udap"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "563db1ef-42e4-51e2-915d-714a157af21d"
* test[=].name = "Registration (UDAP)"
* test[=].action[0].operation.method = #post
* test[=].action[=].operation.label = "Registration (UDAP)"
* test[=].action[=].operation.description = "POST {{hostname}}/oauth/registration"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/oauth/registration"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "e3daf953-6237-5170-8750-3100c0d76cb3"
* test[=].name = "Registration (SMART on FHIR)"
* test[=].action[0].operation.method = #post
* test[=].action[=].operation.label = "Registration (SMART on FHIR)"
* test[=].action[=].operation.description = "POST {{hostname}}/oauth/registration"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/oauth/registration"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "dcd8fa9d-767f-5c63-9648-dffa6974d322"
* test[=].name = "Authorize - Stand Alone"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "Authorize - Stand Alone"
* test[=].action[=].operation.description = "GET {{hostname}}/oauth/authorize"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/oauth/authorize"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "e61c9e92-fcdc-5ca3-8b0c-c80d55b50e4e"
* test[=].name = "Authorize - EHR Launch"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "Authorize - EHR Launch"
* test[=].action[=].operation.description = "GET {{hostname}}/oauth/authorize"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/oauth/authorize"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "cca5c045-fedd-5617-9803-7542eed48739"
* test[=].name = "Token request"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "Token request"
* test[=].action[=].operation.description = "GET {{hostname}}/oauth/token"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/oauth/token"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
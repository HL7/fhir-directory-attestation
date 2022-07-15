Instance: SubscriptionTestScript
InstanceOf: TestScript
Title: "Subscriptions"
Description: "TestScript - PUSH messaging via Subscriptions from National Directory to Federated instances."
Usage: #definition
* id = "odYxqzPToJTN3A8GN"
* url = "http://"
* status = #draft
* name = "Subscriptions"
* title = "Subscriptions"
* date = "2022-06-14T23:07:30.522Z"
* publisher = "FHIR at Scale Taskforce (FAST) && FHIR Foundry"
* version = "0.0.1"
* jurisdiction = urn:iso:std:iso:3166#US
* fixture[0].id = "2118c65c-f320-567c-baa9-efd1ad4abb8d"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Subscription"
* fixture[=].resource = Reference(Subscription-RestHook)
* fixture[+].id = "4d5c229a-1c32-5418-89e6-6bc75887e055"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Subscription"
* fixture[=].resource = Reference(Subscription-RestHook)
* fixture[+].id = "69c02b22-fb36-5b29-a62e-530e7b583efd"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Organization"
* fixture[=].resource = Reference(Organization-StJames) "St. James Infirmary - Covid Ward"
* fixture[+].id = "e751df8a-4678-5744-9344-4813e27c066c"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
// * fixture[=].resource.display.text = "Allison Camron, MD"
// * fixture[=].resource.display.family = "Camron"
// * fixture[=].resource.display.given = "Allison"
* fixture[=].resource.type = "Practitioner"
* fixture[=].resource = Reference(PractitionerAllisonCamron)
* test[0].id = "85ab6581-ce9e-5981-bdf1-9150958d20e3"
* test[=].name = "Subscribe to Organization updates via rest-hooks"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Subscribe to Organization updates via rest-hooks"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Subscription/s7aTc2yk4YQyBRify"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Subscription/s7aTc2yk4YQyBRify"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "730b1dcf-a077-5989-90c3-29b5290d9b07"
* test[=].name = "Delete Subscription"
* test[=].action[0].operation.method = #delete
* test[=].action[=].operation.label = "Delete Subscription"
* test[=].action[=].operation.description = "DELETE {{hostname}}/baseR4/Subscription/s7aTc2yk4YQyBRify"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Subscription/s7aTc2yk4YQyBRify"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#remove
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 204(Gone)."
* test[=].action[=].assert.response = #noContent
* test[=].action[=].assert.warningOnly = false
* test[+].id = "31c11e63-c042-5f13-8470-e5706042c7c8"
* test[=].name = "Attest a new Organization (St. James Infirmary)"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Attest a new Organization (St. James Infirmary)"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Organization/o6AJtyEk6sSsHWLjt"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Organization/o6AJtyEk6sSsHWLjt"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Organization
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "6c0476a3-c808-51ca-9986-3dcbaa584286"
* test[=].name = "Delete an existing Organization (St. James Infirmary)"
* test[=].action[0].operation.method = #delete
* test[=].action[=].operation.label = "Delete an existing Organization (St. James Infirmary)"
* test[=].action[=].operation.description = "DELETE {{hostname}}/baseR4/Organization/o6AJtyEk6sSsHWLjt"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Organization/o6AJtyEk6sSsHWLjt"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#remove
* test[=].action[=].operation.resource = #Organization
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 204(Gone)."
* test[=].action[=].assert.response = #noContent
* test[=].action[=].assert.warningOnly = false
* test[+].id = "b2e518b3-c12c-5b3b-b7d7-f0dda6aa3733"
* test[=].name = "Attest a new Practitioner (Dr. Allison Camron)"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Attest a new Practitioner (Dr. Allison Camron)"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Practitioner/fZzusFYr3PBYyRnot"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Practitioner/fZzusFYr3PBYyRnot"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Practitioner
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].id = "d4044822-df8b-51dd-86fe-5c1582a7c501"
* test[=].name = "Delete an existing Practitioner (Allison Camron)"
* test[=].action[0].operation.method = #delete
* test[=].action[=].operation.label = "Delete an existing Practitioner (Allison Camron)"
* test[=].action[=].operation.description = "DELETE {{hostname}}/baseR4/Practitioner/fZzusFYr3PBYyRnot"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Practitioner/fZzusFYr3PBYyRnot"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#remove
* test[=].action[=].operation.resource = #Practitioner
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 204(Gone)."
* test[=].action[=].assert.response = #noContent
* test[=].action[=].assert.warningOnly = false
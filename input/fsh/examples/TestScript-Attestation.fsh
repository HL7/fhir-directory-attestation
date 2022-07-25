Instance: AttestationTestScript
InstanceOf: TestScript
Title: "Attestation"
Description: "TestScript - Attestation of new clinic information."
Usage: #definition
* id = "48twF7WfuXkxdnHkh"
* url = "http://"
* status = #draft
* name = "Attestation"
* title = "Attestation"
* date = "2022-06-14T21:41:40.107Z"
* publisher = "FHIR at Scale Taskforce (FAST) && FHIR Foundry"
* version = "0.0.1"
* jurisdiction = urn:iso:std:iso:3166#US
* fixture[0].id = "d08a86ad-a356-5ac6-9056-773ac6642b2a"
* fixture[=].autocreate = true
* fixture[=].autodelete = true 
* fixture[=].resource.type = "Organization"
* fixture[=].resource = Reference(Organization-StJames) "St. James Infirmary"
* fixture[+].id = "f40d0e54-38c6-536e-bb0c-bb1077096f43"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Location"
* fixture[=].resource = Reference(OrganizationHamiltonClinic) "Cancer Clinic" 
* fixture[+].id = "1419369a-4b9e-5efc-bb5c-75d4612b8d0d"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "HealthcareService"
* fixture[=].resource = Reference(ServiceHospER)
* fixture[+].id = "906ab31c-1103-512a-9817-7f65e8203a5b"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Endpoint"
* fixture[=].resource = Reference(AcmeOfCTPortalEndpoint) "Endpoint for St James Hospital"
* fixture[+].id = "523c5dcd-978d-5769-8a5b-835832af9dca"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
// * fixture[=].resource.name.text = "Allison Camron, MD"
// * fixture[=].resource.name.family = "Camron"
// * fixture[=].resource.name.given = "Allison"
* fixture[=].resource.type = "Practitioner"
* fixture[=].resource = Reference(PractitionerAllisonCamron)
* test[0].id = "839236b5-6d9c-5332-8211-ad4bb93110b6"
* test[=].name = "St. James Infirmary"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "St. James Infirmary"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Organization/o6AJtyEk6sSsHWLjt"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Organization/o6AJtyEk6sSsHWLjt"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Organization
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "dbe0ce7b-9557-5ed2-91c8-f3779ed20c64"
* test[=].name = "456 Main Street"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "456 Main Street"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Location/l4bjaZGQfeNfhAEpb"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Location/l4bjaZGQfeNfhAEpb"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Location
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "973efcd9-1ca3-573a-991d-d615d43489c0"
* test[=].name = "Emergency Medical Services"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Emergency Medical Services"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/HealthcareService/hsEk35Ayonz755t6u"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/HealthcareService/hsEk35Ayonz755t6u"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "e62cf94a-278e-5692-b965-ff02dfb41c35"
* test[=].name = "St. James Infirmary - Patient Portal"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "St. James Infirmary - Patient Portal"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Endpoint/etKzBJvzbeHDZi7Gd?resourceType=Endpoint"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Endpoint/etKzBJvzbeHDZi7Gd?resourceType=Endpoint"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Endpoint
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "6d556f90-795c-5363-a64a-fffd3fd7c515"
* test[=].name = "Dr. Allison Camron"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Dr. Allison Camron"
* test[=].action[=].operation.description = "PUT {{hostname}}/baseR4/Practitioner/pZzusFYr3PBYyRnot?resourceType=Practitioner"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "{{hostname}}/baseR4/Practitioner/pZzusFYr3PBYyRnot?resourceType=Practitioner"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Practitioner
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
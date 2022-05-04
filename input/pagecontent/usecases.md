## Cross-Track Scenario Notes  


#### Directory Look Up

*Use Case*
> [St. James](file:///Users/awatson/Code/implementation-guides/fhir-directory-attestation/output/Organization-m6AJtyEk6sSsHWLjt.html) is a hospital network in Connecticut.  They are opening a new infirmary on [456 Main Street](file:///Users/awatson/Code/implementation-guides/fhir-directory-attestation/output/Location-l4bjaZGQfeNfhAEpb.html), and hiring [Dr. Allison Camron](file:///Users/awatson/Code/implementation-guides/fhir-directory-attestation/output/Practitioner-fZzusFYr3PBYyRnot.html) to operate it.  As part of setting up their facilities, they first check the directory to see if the facility is already registered, and whether Dr. Camron is licensed by Connecticut yet.  

*Scenario Workflow*


```bash
# 1. Query Practitioner
# Practitioner - Dr. Han Solo
GET {directory}/Practitioner?name=Allison%Camron

# 2. Query Organization
# Organization - St. Jame’s Infirmary
GET {directory}/Organization?name=St.%20Jame%E2%80%99s%20Infirmary

# 3. Query Location
# Location - 456 Main Street, Anytown, CT, 00014
GET {directory}/Location?name=456%20Main%20Street%2C%20Anytown%2C%20CT%2C%2000014

# 4. Query Endpoint
# Endpoint - Acme of Connecticut
GET {directory}/Endpoint?organization=Organization/{organizationId}

# 5. Query HealthcareService
# HealthcareService - Emergency Medical Services
GET {directory}/HealthcareService?category=emerg

# 6. Query CodeSystem
# Code System - NatDir Consent
GET {directory}/CodeSystem/ConsentCS
```

#### Directory to Directory Subscriptions

*Use Case*
> St. James network also operates the federated directory for the State of Conneticut, meaning they keep a full copy of the national directory on servers at the hospital, along with various Conneticut specific records.  As part of configuring their federated directory, they set up subscriptions to updates and changes that happen on the national directory.  This involves a POST (i.e. push) message from the federated directory to the national directory, which will then POST messages in response at regular intervals or upon specified events.

*Scenario Workflow*

```bash
# Practitioner 
POST {{nationalDirectory}}/Subscription 
PUT  {{nationalDirectory}}/Subscription/{{subscriptionId}}
POST {{federatedDirectory}}/Practitioner 
GET  {{nationalDirectory}}/AuditEvent?entity=Practitioner/{practitionerId} 

# Organization
POST {{nationalDirectory}}/Subscription 
PUT  {{nationalDirectory}}/Subscription/{{subscriptionId}}
POST {{federatedDirectory}}/Organization 
GET  {{nationalDirectory}}/AuditEvent?entity=Organization/{organizationId} 

# Location
POST {{nationalDirectory}}/Subscription 
PUT  {{nationalDirectory}}/Subscription/{{subscriptionId}}
POST {{federatedDirectory}}/Location 
GET  {{nationalDirectory}}/AuditEvent?entity=Location/{locationId} 

# Endpoint 
POST {{nationalDirectory}}/Subscription 
PUT  {{nationalDirectory}}/Subscription/{{subscriptionId}}
POST {{federatedDirectory}}/Endpoint 
GET  {{nationalDirectory}}/AuditEvent?entity=Endpoint/{endpointId} 

# HealthcareService 
POST {{nationalDirectory}}/Subscription 
PUT  {{nationalDirectory}}/Subscription/{{subscriptionId}}
POST {{federatedDirectory}}/HealthcareService  
GET  {{nationalDirectory}}/AuditEvent?entity=HealthcareService/{healthcareServiceId} 
```

#### Dynamic Registration  

*Use Case*
> Administrators at St. James decide that they wish to be able to submit updates to the National Directory, so they begin the process to register an account.  This involves gathering server keys from both the National Directory and their own hospital network, and submiting a signed software statement and registration request to the national directory.  The server will responsd with client IDs that can then be used during authorization and exchanged for an access token.  

```bash

GET {nationalDirectory}/.well-known/udap
# result> NationalDirectoryPublicCert

# payload> software_s_tatement(national_d_irectory_p_ublic_cert, app_cert)
POST {nationalDirectory}/oauth/register
# result> client_id

# payload> client_id
POST {nationalDirectory}/oauth/authorize
# access_token (Bearer token)
```

The directory needs authentication/authorization to get to sensitive data.  This use case relies on the simpler *client credential* code flow, meaning the access is specified on an organizational account or application level.  Instead of logging in individual users, the public directory simply needs to know if you're a user using a particular piece of software; with the assumption that anybody with access to that software also has access to the directory.  

Please refer to [UDAP ServerTest 20 - Client Credentials Flow](https://www.udap.org/UDAPTestTool/) for testing guidance.  


#### To Write Directory Data

> Seeing that the Infirmary is not present in their local federated copy of the national database, St. James administrators register a new Organization with the federated directory, along with associated Location, HealthcareService, and Endpoint.  Seeing that Dr. Camron record does not reflect her recent licensure in the State of Conneticut either, they patch her Practitioner record also.  After they send the attestion in (via a PATCh command), they re-query the directory to confirm that the update went through.  After the local Federated Directory is updated and returning data as expected, they then send the changes as an attestation to the National Directory using the same API. 

*Attestation*
```bash
PUT /Organization
PATCH /Organization/{organizationId}
GET /Organization/{organizationId}

PUT /Location
PATCH /Location/{locationId}
GET /Location/{locationId}

PUT /HealthcareService
PATCH /HealthcareService/{healthcareServiceId}
GET /HealthcareService/{healthcareServiceId}

PUT /Endpoint
PATCH /Endpoint/{endpointId}
GET /Endpoint/{endpointId}

PUT /Practitioner
PATCH /Practitioner/{practitionerId}
GET /Practitioner/{practitionerId}

```    

> After receiving an attestation from an external source, clerks operating the National Directory reach out to the Conneticut State Licensing Board to verify that Allison Camron is licensed to practice medicine in that state.  Because interoperable systems use the same APIs, the National Directory sends a 

*Validation*

```bash
# 1. State Licensing Board
GET {stateLicensingBoard}/Practitioner?name=Allison%Camron

# 2. Centers for Medicare Services
GET {cms}/Organization?name=St.%20Jame%E2%80%99s%20Infirmary
GET {cms}/HealthcareService?category=emerg

# 3. US Post Office
GET {postOffice}/Location?name=456%20Main%20Street%2C%20Anytown%2C%20CT%2C%2000014
```
 

#### Tiered oauth 


```bash
# add the women's shelter and a restriction for it
PUT {directory}/Organization/{organizationId}
PUT {directory}/PractitionerRole
PUT {directory}/Restriction

# Authentication: None
GET /Organization/{organizationId}  # returns OperationOutcome(false)

# Authentication: Bearer Token (Authenticated User)
GET /Organization/{organizationId} 
```


#### Organization & Practitioner Match

using $match

```bash
# payload:  Organization2
POST {directory}/Organization/{organization1}/$match

# payload:  Practitioner2
POST {directory}/Practitioner/{practitioner1}/$match

```


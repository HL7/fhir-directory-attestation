
/**/


Profile: NatlDirAttestCareTeam
Parent: $NatlDirectoryCareTeam
Id: NatlDirAttest-CareTeam
Title: "National Directory Attestation and Validation Care Team"
Description: "Defines the basic constraints and extensions on the CareTeam resource for use in a Validated Healthcare Directory"

* identifier.use 0..1
* extension[restriction] ^short = "Restriction"
* extension[restriction] ^definition = "Identifies and conveys information about restrictions on the use or release of exchanged information, e.g. information that can only be shared under particular condition, such as a signed data use agreement between parties"


Profile:        NatlDirAttestEndPoint
Parent:         $NatlDirectoryEndPoint
Id:             NatlDirAttest-Endpoint
Title:          "National Directory Attestation and Validation Endpoint"
Description:    "The technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging."

Profile:        NatlDirAttestHealthCareService
Parent:         $NatlDirectoryHealthCareService
Id:             NatlDirAttest-HealthcareService
Title:          "National Directory Attestation and Validation HealthcareService"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, hospital and ambulatory care, home care, long-term care, and other health-related and community services."


Profile:        NatlDirAttestInsurancePlan
Parent:         $NatlDirectoryInsurancePlan
Id:             NatlDirAttest-InsurancePlan
Title:          "National Directory Attestation and Validation InsurancePlan"
Description:    "An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits)."


Profile:        NatlDirAttestLocation
Parent:         $NatlDirectoryLocation
Id:             NatlDirAttest-Location
Title:          "National Directory Attestation and Validation Location"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."


Profile:        NatlDirAttestNetwork
Parent:         $NatlDirectoryNetwork    //Organization 
Id:             NatlDirAttest-Network
Title:          "National Directory Attestation and Validation Network"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals that deliver a set of services across a geography through health insurance products/plans. A network is typically owned by a payer."



Profile:        NatlDirAttestOrganization
Parent:         $NatlDirectoryOrganization
Id:             NatlDirAttest-Organization
Title:          "National Directory Attestation and Validation Organization"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice.
Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text"

Profile:        NatlDirAttestOrganizationAfflication
Parent:         $NatlDirectoryOrganizationAfflication
Id:             NatlDirAttest-OrganizationAffiliation
Title:          "National Directory Attestation and Validation OrganizationAffiliation"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."


Profile:        NatlDirAttestPractitioner
Parent:         $NatlDirectoryPractitioner
Id:             NatlDirAttest-Practitioner
Title:          "National Directory Attestation and Validation Practitioner"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."


Profile:        NatlDirAttestPractitionerRole
Parent:         $NatlDirectoryPractitionerRole
Id:             NatlDirAttest-PractitionerRole
Title:          "National Directory Attestation and Validation PractitionerRole"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also 
be a relationship to an organization. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization."


Profile: NatlDirAttestRestriction
Parent: Consent
Id: NatlDir-Restriction
Title: "NatlDir Restriction"
Description: "Restriction on use/release of exchanged information"
* ^status = #active
* ^date = "2017-12-15T01:01:31.325+11:00"
* . ^short = "A policy may permit or deny recipients or roles to perform actions for specific purposes and periods of time"
* . ^alias = "Restriction"
* identifier ..0 MS
* status MS
* status ^short = "Indicates the current state of this restriction"
* status ^comment = "This element is labeled as a modifier because the status contains the codes rejected and entered-in-error that mark the restriction as not currently valid."
* scope MS
* scope from ConsentVS (extensible)
* scope ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* scope ^binding.extension.valueString = "ConsentScope"
* category MS
* category ^label = "Type"
* category ^short = "Type of restriction"
* category ^definition = "Type of restriction (conditional release (per DUA); requires flowdown agreement (for redisclosure); internal use only; release defined by access rights (as specified by the national source))"
* patient ..0 MS
* dateTime MS
* dateTime ^label = "last updated"
* dateTime ^short = "date/time of last update for this restriction"
* dateTime ^definition = "When this Restriction was issued / created / indexed."
* performer ..0 MS
* organization ..0 MS
* source[x] ..0 MS
* policy MS
* policy.authority ..0 MS
* policy.uri MS
* policy.uri ^short = "Specific policy covered by this restriction"
* policyRule ..0 MS
* verification ..0 MS
* verification.verified MS
* verification.verifiedWith MS
* verification.verificationDate MS
* provision MS
* provision ^short = "Access rights"
* provision.type = #permit (exactly)
* provision.type MS
* provision.period ..0 MS
* provision.actor 1.. MS
* provision.actor.role MS
//* provision.actor.reference only Reference(NatlDirOrganization or NatlDirCareTeam or NatlDirPractitioner)
* provision.actor.reference MS
* provision.actor.reference ^short = "definedUserOrGroup"
* provision.action ..1 MS
* provision.action ^short = "reasonType"
* provision.action ^definition = "Describes how the reference is related to the restriction (contributes to; reason for; existance of; specific value)"
* provision.securityLabel MS
* provision.securityLabel ^short = "userType"
* provision.purpose MS
* provision.purpose ^short = "reasonName"
* provision.purpose ^definition = "Name assigned to the restriction condition"
* provision.class ..0 MS
* provision.code ..0 MS
* provision.dataPeriod ..0 MS
* provision.data ..0 MS
* provision.data.meaning MS
* provision.data.reference MS
* provision.provision ..0 MS

Profile: NatlDirAttestValidation
Parent: VerificationResult
Id: NatlDir-Validation
Title: "NatlDir Validation"
Description: "Describes validation requirements, source(s), status and dates for one or more elements"
* ^date = "2017-12-10T12:42:47.483-05:00"
* ^status = #active
* . ^short = "Validation"
* . ^definition = "Describes validation requirements, source(s), status and dates for one or more elements"
* target 1..* MS
* targetLocation MS
* need 1..1 MS
* status MS
* statusDate 1..1 MS
* validationType 1..1 MS
* validationType from $verificationresult-validation-type // SMM - removed (example)
* validationType ^short = "nothing|single|multiple"
* validationType ^definition = "What the target is validated against (nothing|single source|multiple sources)"
* validationProcess 1..* MS
* validationProcess from $validationprocess (example)
* validationProcess ^short = "The process(es) by which the target is validated"
* validationProcess ^definition = "The process(es) by which the target is validated"
* frequency MS
* lastPerformed MS
* nextScheduled MS
* failureAction 1..1 MS
* primarySource MS
//* primarySource.who only Reference(NatlDirOrganization or NatlDirPractitioner or NatlDirPractitionerRole)
* primarySource.who MS
* primarySource.type 1..* MS
* primarySource.type from $verificationresult-primary-source-type (example)
* primarySource.type ^short = "Type of primary source"
* primarySource.type ^definition = "Type of primary source"
* primarySource.communicationMethod 0..* MS
* primarySource.communicationMethod from $verificationresult-communication-method_1 (example)
* primarySource.validationStatus MS
* primarySource.validationDate MS
* primarySource.canPushUpdates MS
* primarySource.pushTypeAvailable MS
* attestation 1..1 MS
* attestation.who 1..1 MS
//* attestation.who only Reference(NatlDirPractitioner or NatlDirOrganization or NatlDirPractitionerRole)
//* attestation.onBehalfOf only Reference(NatlDirPractitioner or NatlDirOrganization or NatlDirPractitionerRole)
* attestation.onBehalfOf MS
* attestation.communicationMethod 1..1 MS
* attestation.communicationMethod only CodeableConcept
* attestation.communicationMethod from $verificationresult-communication-method_1 (example)
* attestation.date 1..1 MS
* attestation.sourceIdentityCertificate MS
* attestation.proxyIdentityCertificate MS
* attestation.proxySignature MS
* attestation.sourceSignature MS
* validator MS
//* validator.organization only Reference(NatlDirOrganization)
* validator.organization MS
* validator.identityCertificate MS
* validator.attestationSignature MS




Profile:  NatlDirAttestUsageRestriction
Parent: Consent
Id:  NatlDirEx-restriction
Title: " NatlDirEx Restriction"
Description: "Restriction on use/release of exchanged information"
* ^status = #active
* ^date = "2017-12-15T01:01:31.325+11:00"
* . ^short = "A policy may permit or deny recipients or roles to perform actions for specific purposes and periods of time"
* . ^alias = "Restriction"
* identifier ..0 MS
* status MS
* status ^short = "Indicates the current state of this restriction"
* status ^comment = "This element is labeled as a modifier because the status contains the codes rejected and entered-in-error that mark the restriction as not currently valid."
* scope MS
* scope from $consent (extensible)
* scope ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* scope ^binding.extension.valueString = "ConsentScope"
* category MS
* category ^label = "Type"
* category ^short = "Type of restriction"
* category ^definition = "Type of restriction (conditional release (per DUA); requires flowdown agreement (for redisclosure); internal use only; release defined by access rights (as specified by the national source))"
* patient ..0 MS
* dateTime MS
* dateTime ^label = "last updated"
* dateTime ^short = "date/time of last update for this restriction"
* dateTime ^definition = "When this Restriction was issued / created / indexed."
* performer ..0 MS
* organization ..0 MS
* source[x] ..0 MS
* policy MS
* policy.authority ..0 MS
* policy.uri MS
* policy.uri ^short = "Specific policy covered by this restriction"
* policyRule ..0 MS
* verification ..0 MS
* verification.verified MS
* verification.verifiedWith MS
* verification.verificationDate MS
* provision MS
* provision ^short = "Access rights"
* provision.type = #permit (exactly)
* provision.type MS
* provision.period ..0 MS
* provision.actor 1.. MS
* provision.actor.role MS
* provision.actor.reference only Reference( Organization or  CareTeam or  Practitioner)
* provision.actor.reference MS
* provision.actor.reference ^short = "definedUserOrGroup"
* provision.action ..1 MS
* provision.action ^short = "reasonType"
* provision.action ^definition = "Describes how the reference is related to the restriction (contributes to; reason for; existance of; specific value)"
* provision.securityLabel MS
* provision.securityLabel ^short = "userType"
* provision.purpose MS
* provision.purpose ^short = "reasonName"
* provision.purpose ^definition = "Name assigned to the restriction condition"
* provision.class ..0 MS
* provision.code ..0 MS
* provision.dataPeriod ..0 MS
* provision.data ..0 MS
* provision.data.meaning MS
* provision.data.reference MS
* provision.provision ..0 MS



Extension: NatlDirAttestUsageRestriction
Id: natlDirAtt-usage-restriction
Title: "NatlDirExr Usage Restriction"
Description: """The FHIR specification contains a security meta tag which can be used to inform systems of the sensitivity of resources, as well as by access control mechanisms to ensure content isn't exposed that shouldn't be.
This mechanism only goes to the resource level, this reference to a usage-restriction (consent) extends this further into the resource, and can be applied to any element, and may apply to all properties beneath the element (e.g. If applied to an identifier on a practitioner, then all the properties of the identifier should not be exposed unless it is understood)
This will be expected to be used as a modifier extension."""
* ^context.type = #fhirpath
* ^context.expression = "descendants()"
* ^date = "2017-10-20T10:59:36.931+11:00"
* . ^short = "Restriction"
* . ^definition = "Identifies and conveys information about restrictions on the use or release of exchanged information, e.g. information that can only be shared under particular condition, such as a signed data use agreement between parties"
* valueReference 1.. MS
* valueReference only Reference(NatlDirExRestriction)
* valueReference ^sliceName = "valueReference"
* valueReference ^short = "Reference"
* valueReference ^definition = "Reference to the restriction resource (consent)"
* valueReference ^comment = "This is anticipated to usually be a reference to a contained resource (this eases distribution, and permits the same consent applying to multiple properties in the same resource)"
* valueReference.identifier ..0

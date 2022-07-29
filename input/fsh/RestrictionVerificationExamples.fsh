Instance: PatientConsent
InstanceOf: NatlDirAttestUsageRestriction
Description: "Patient that gives consent"
Usage: #example 
* meta.profile = Canonical(NatlDirAttestUsageRestriction) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* status  = $ConsentCS#active
* scope = $NatlDirectoryConsentScopeCS#patient-privacy
* category = $loinc#59284-0 
//* policyRule =  $ConsentPolicyCS#cric

Instance: ProviderAttestation
InstanceOf: NatlDirAttestValidation
Description: "Patient that gives consent"
Usage: #example
* meta.profile = Canonical(NatlDirAttestValidation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* need  = $needCS#none
* status = $verificationResultStatusCS#attested
* validationType = $verificationResultTypeCS#primary 
* statusDate = "2020-07-07T13:26:22.0314215+00:00"
* validationProcess = $NatlDirectoryValidationTypeCS#attester 
* target = Reference(PractitionerJoeSmith)
* failureAction = $failureActionCS#warn
* attestation.who = Reference(PractitionerJoeSmith)
* attestation.communicationMethod = $verificationresult-communication-methodCS#pull 
* attestation.date = "2020-07-07"


Instance: CareTeam1
InstanceOf: NatlDirAttestCareTeam
Description: "Burr Clinic's Care Team" 
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #proposed
* category = $loinc#LA27975-4
* extension[careteam-alias].valueString = "CareTeam1"
* extension[endpoint].valueReference = Reference(AcmeOfCTPortalEndpoint) 
* extension[service].valueReference = Reference(ServiceHansSolo) 
* identifier.extension[status].valueCode = $NatlDirectoryCredentialStatusCS#active
* extension[restriction].valueReference = Reference(PatientConsent) 
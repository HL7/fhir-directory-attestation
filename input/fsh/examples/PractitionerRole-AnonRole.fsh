
Instance: AnonRole 
InstanceOf: NatlDirAttestPractitionerRole
Title: "PractitionerRole/rALFxTbdo6nEq5za6"
Description: "Role - Anonymous users not registered with the system"
Usage: #example
* meta.profile = Canonical(NatlDirExPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.security = #N "normal"
* language = #en-US
* id = "rALFxTbdo6nEq5za6"
* active = true
* code = $NatlDirEndpointQryPractitionerRoleCode#ph 
* organization = Reference(OrganizationBurrClinic)
* location = Reference(HospLoc2)
* healthcareService = Reference(ServiceBurrClinic)
* practitioner = Reference(PractitionerHansSolo)
* extension[network-reference].valueReference = Reference(OrganizationAcmeofCTStdNet) 
* specialty =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"

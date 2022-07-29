

Instance: ServiceBurrClinic
InstanceOf: NatlDirAttestHealthCareService
Description: "Hans Solo Services"
Usage: #example
* meta.profile = Canonical(NatlDirAttestHealthCareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* id = "hsMPDyHBr9gABHb2n"
* active = true
* providedBy = Reference(OrganizationBurrClinic)
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = $NatlDirectoryHealthcareServiceDeliveryMthdCS#physical
* category = $NatlDirectoryHealthcareServiceCatCS#outpat 
* specialty = $NUCCProviderTaxonomy#207Q00000X "Family Medicine Physician"  
* location[0] = Reference(HospLoc1)

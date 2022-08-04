Instance: PractitionerJoeSmith
InstanceOf: NatlDirAttestPractitioner
Title: "Practitioner/pFhDpHhMzBsSvmLb9"
Description: "Practitioner - Joe Smith"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI323"
* identifier[NPI].system = $NPICS
* name.text = "Joe Smith, MD"
* name.family = "Smith"
* name.given[0] = "Joe"
* qualification[0].code = $V2table0360CS#MD
* qualification[0].issuer.display = "State of Illinois"
* qualification[0].code.text = "MD"
* qualification[0].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[0].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[1].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[1].issuer.display = "American Board of Internal Medicine"
* qualification[1].code.text = "Board Certified Internal Medicine"
* qualification[1].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[1].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[2].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease Physician"
* qualification[2].issuer.display = "American Board of Internal Medicine"
* qualification[2].code.text = "Board Certified Cardiovascular Disease"
* qualification[2].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[2].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
//* rating.type = "5"
//* rating[0].value.text = "5"
* extension[rating].extension[ratingType].valueCodeableConcept = $USPSStateCS#IL 
* extension[rating].extension[ratingValue].valueString = "5"

Instance: CounselorRole1
InstanceOf: PractitionerRole
Title: "PractitionerRole/rCY6ePpLywTbfx3yp"
Description: "Role - Conselor or therapist"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-PractitionerRole"
* language = #en-US
* id = "rCY6ePpLywTbfx3yp"
* extension.url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/network-reference"
* extension.valueReference = Reference(Organization/AcmeofCTStdNet)
* active = true
* practitioner = Reference(Practitioner/Counselor)
* code = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/ProviderRoleCS#co "Counselor"
* specialty = http://nucc.org/provider-taxonomy#101YP2500X "Professional Counselor"
* healthcareService = Reference(HealthcareService/VirtualCounselService)
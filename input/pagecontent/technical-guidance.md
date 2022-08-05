## National Directory Concept Diagram

This diagram depicts the high-level conceptual design of a central source of national directory data.

**Figure 1: National Directory Concept Diagram**  

<figure class="figure">
  <img src="National Directory Drawing 2022-02-04.jpg" class="figure-img img-responsive img-rounded center-block" alt="conceptDiagram" />
</figure>

In this diagram, RESTful FHIR APIs facilitate the movement of data into and out of a verified healthcare directory at different points, including:

- Attestation: Individuals and organizations (via an authorized representative) attest to information about themselves, their relationships, and services for inclusion in the verified national directory. See [below](https://github.com/HL7/fhir-directory-exchange/blob/master/input/pagecontent/technical-guidance.md#attestation) for more information about attestation.
- Validation: An implementer of the verified national directory must validate attested data against the underlying standards defined in the National Directory Exchange IG.  See [below](https://github.com/HL7/fhir-directory-exchange/blob/master/input/pagecontent/technical-guidance.md#validation)  for more information about attestation.
- Verification: An implementer of the verified healthcare directory (not shown in the diagram) may verify  attested data against primary sources, thereby verifying the truthfulness and accuracy of the attested data. For example, an implementer might verify a provider’s medical license against records maintained by a state licensure board. Verification may occur initially, when attested data is first submitted, and/or on a regular basis as determined by the National Directory implementer and/or applicable laws, regulations, or policies. See [below](https://github.com/HL7/fhir-directory-exchange/blob/master/input/pagecontent/technical-guidance.md#verification) for more information about verification.
- Exchange: A verified natinal directory would make validated/verified directory data available to local workflow environments to support various business needs. Local workflow environments include, but are not limited to, payer organizations, provider organizations, health information exchanges (HIEs), health information service providers (HISPs), Community Information Exchanges (CIEs), government agencies, and any other entities that maintain a healthcare directory and/or have a need for verified provider data. See the National Directory Exchange IG  for more information about exchange.
- Query: A distributed or network directory may choose to be compliant with one or more of the Query Conformance statements to indicate the standard Queries and response information provided to their users as defined in the National Directory Query IG.

**Figure 2: Relationship Between Implementation Guides**  
<figure class="figure">
  <img src="Inheritance.jpg" class="figure-img img-responsive img-rounded center-block" alt="IG Relationships" />
</figure>


**Figure 3: Profile and Extension Inheritance Between Implementation Guides**  
<figure class="figure">
  <img src="IGRelationships.jpg" class="figure-img img-responsive img-rounded center-block" alt="IG Relationships" />
</figure>

## Attestation

Attestation describes the process by which authorized entities submit information about themselves, their roles, their relationships, etc. for inclusion in a healthcare directory.

Guidance in this section is primarily intended to describe expectations for implementers using a FHIR API to manage attestation. An implementer’s unique implementation context, including local business needs, applicable laws/regulations/policies, usability considerations, etc. will determine an implementer’s approach to many of the attestation considerations described in this section. As we do not anticipate every implementer will use the same approach to attestation, we have not provided a set of attestation profiles or defined an attestation API. Implementers SHALL make any attestation requirements, including but not limited to profiles and/or API documentation, available to any stakeholders involved in the attestation process.

We acknowledge that implementers may use processes other than a FHIR API, such as paper-based forms, to obtain attested data. Such processes are considered out of scope for this guide.

This guide covers multiple attestation scenarios:

- Individual provider attesting to their information
- Authorized representative attesting to an individual provider’s information
- Authorized representative attesting to an organization’s information
- Authorized representative attesting to a payer organization’s information
- Submission of attested data by an authorized intermediary (e.g. another system that maintains attested data)

Each of these scenarios may encompass different sets of “permitted” data. For example, an individual provider attesting to her own information may not have the right to also attest to information about an organization she works for. These “rights” are assigned by each implementation of a verified national directory, and can help prevent the submission of duplicate records. In general:

- An individual (or authorized representative) may attest to their own demographic information (e.g. name, birthdate, gender, etc.) and information about their relationships with organizations, locations, services, care teams, and health insurance provider networks.
  - Information represented using the Practitioner, PractitionerRole, HealthcareService, Endpoint, and CareTeam profiles
- An organization (through an authorized representative) may attest to its own demographic information (e.g. name, address, contact info, etc.), services, locations, care teams and other organizations it owns/manages, and its relationships with other organizations, individuals, and health insurance provider networks
  - Information represented using the Organization, PractitionerRole, OrganizationAffiliation, HealthcareService, CareTeam, Location, and Endpoint profiles.
  - In cases where individual practitioners operate as solo practitioners without a relationship to a legal organization, implementers should consider representing the individual using both a Practitioner and Organization resource and assigning the “organization” rights to the individual.
- A payer organization (through an authorized representative) may attest to its own demographic information (e.g. name, address, contact info, etc.), services, locations, care teams, other organizations, health insurance provider networks and plans it owns/manages, and its relationships with other organizations and providers.
  - Information represented as Organization, OrganizationAffiliation, HealthcareService, CareTeam, Location, Endpoint, Network, and InsurancePlan profiles.
- An authorized intermediary may submit attested data on behalf of any of the previously described stakeholders. An intermediary should not submit data that has not been attested to, such as data that has been “scraped” from public sources. An example of an intermediary could be a state directory that collects information from providers in its jurisdiction, and then passes that information to a national directory.

Additionally, implementers may set requirements for the minimum amount of data different groups of stakeholders must attest to. For example, a US implementation might require all licensed providers to attest to their National Provider Identifier (NPI). In general, implementers might specify different minimum attestation requirements across three classes of stakeholders:

- Licensed billing providers (e.g. doctors, nurses)
- Non-licensed billing providers (e.g. medical equipment suppliers)
- Ancillary personnel (e.g. administrative staff)

We expect stakeholders will typically use a [SMART on FHIR application](https://smarthealthit.org/) to help attesters manage the attestation process (i.e. to submit attested data in the form of FHIR resources via a RESTful API). Such an application may be offered by an entity maintaining a verified healthcare directory, an application authorized by the verified healthcare directory or owned by the stakeholder(s) submitting attested data.

Before accepting attested data, a verified healthcare directory should have policies to ensure:

- Any attester application has successfully registered and integrated with the verified healthcare directory.
- Attesters have successfully completed any identtity proofing requirements.
- Any credentials or digital certificates that must be exchanged have been exchanged, validated, and are functional.
- The verified healthcare directory has set and made available any permissions/rights that govern the scope of data an attester may submit.
- Any representatives/intermediaries submitting data on behalf of an individual/entity have been appropriately authorized.

Once these preconditions have been met, a typical attestation workflow might involve:

- An attester application is pre-populated with data about the individual making the attestation, such as any known demographic information.
  - For example, the attester application may be pre-populated with data from the attester’s EHR system.
  - The attester application may query the verified healthcare directory for existing resources about the attester, which can be updated or used to pre-populate data in the application.
- The application user enters the appropriate information and submits their attestation.
  - Submission of attested information may require some form of digital signature.
  - The attester application should perform a validation process to check the general structure, content, etc. of the submission.
- The attester application POSTs or PUTs the submitted data as FHIR resources to the verified healthcare directory’s attestation API.
- The verified healthcare directory performs a validation process to check the general structure, content, etc. of the submission (e.g. checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.).
  - If there are no errors, the verfied healthcare directory system assigns an ID to the posted resources and returns the appropriate HTTP status code as well as the url/id of each resource.
  - If there are errors, the verified healthcare directory system rejects the operation and returns the appropriate HTTP status code and an OperationOutcome resource describing the error(s).

The FHIR specification [describes multiple approaches](http://build.fhir.org/http.html) for managing interactions over an API, including:

- Resources may be created, updated, patched, or deleted individually using the appropriate HTTP method (i.e. POST, PUT, PATCH, DELETE).
- Resources may be created, updated, patched, or deleted as a collection using a Bundle. A Bundle can include a set of actions to perform on a server in a single HTTP request/response.
  - A Bundle of type “batch” requires that there “SHALL be no interdependencies between the different entries in the Bundle”, but failure of any one interaction does not cause the whole collection to fail.
  - A Bundle of type “transaction” is processed as a single atomic unit, and the whole collection will fail if any of the interactions defined in the Bundle fail. Additionally, the FHIR specification provides support for [asynchronous interactions](http://build.fhir.org/async.html), which may be necessary to facilitate processing of large amounts of data.

This implementation guide is not prescriptive about which approach(es) a verified healthcare directory should use to manage attestation. However, as any attestation will likely involve the submission of multiple FHIR resources representing information about one or more attesters, transaction Bundles can alleviate the need for more complex logic to manage referential integrity in attested information.

Implementations relying on individual API interactions or batch Bundles may have to specify an “order of operations” to ensure attested data can be successfully submitted to the verified healthcare directory server. For example, as a general guideline, resources may need to be submitted in the order of:

1. Organization
2. Endpoint
3. Practitioner
4. Location
5. Network
6. InsurancePlan
7. HealthcareService
8. OrganizationAffiliation
9. PractitionerRole
10. CareTeam

Depending on the context of implementation, the entity maintaining a verified healthcare directory may have to manage record collision or duplication (i.e. multiple attesters attempting to simultaneously submit updates to the same record, or multiple attesters attempting to attest about the same set of information).

The FHIR specification provides some [guidance](http://build.fhir.org/http.html#concurrency) on managing collisions using a combination of the ETag and If-Match header in an HTTP interaction. We recommend verified healthcare directory implementers use this approach.

To manage duplicate records, we generally recommend that verified healthcare directory implementers define a robust verification process with policies for identifying and resolving duplicates. Any additional technical capabilities are beyond the scope of this implementation guide.

## Validation

The verified national directory performs a validation process to check the general structure, content, etc. of the submission (e.g. checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.). Validation is critical for ensuring that users of a healthcare directory can rely upon the data in the directory. Validation can refer to separate but related processes: validation of FHIR resources (e.g. checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.).  Validation includes (but is not limited to) testing conformance to:

- FHIR R4.0.1
- US Core 4.0.1 (where applicable)
- National Directory Exchange IG technical specifications
- Conformance includes compliance to
  - Data Types
  - Cardinality
  - Value Sets
  - Invariants
  - References
  - Extensions

## Verification

Verification is critical for ensuring that users of a healthcare directory can rely upon the data in the directory as being accurate, not just meeting a technical specification. 

Implementers will typically determine how primary source verification occurs operationally, based in part on the capabilities of the primary sources used for verification. For example, a primary source may already offer a mechanism like an API for verification content against its records. In other cases, an implementer may want to define an API that the primary source can access to push and/or pull content related to verification. Implementers may also consider less technical approaches, such as manual verification, or more stringent requirements, such as mailing a postcard to confirm an address.

Certain types of data may have different verification requirements. For example, verification of a relationship might require confirmation from each stakeholder participating in the relationship. Some data may have to be verified more frequently (e.g., license status), while other data can be verified once (e.g., education history) or not at all (e.g., a provider’s spoken language proficiency).

As with attestation, we expect National Directory implementers may use different approaches to verification. This guide provides profiles for a small number of suggested verification APIs. Implementers SHALL make any verification requirements, including but not limited to profiles and/or API documentation, available to any stakeholders involved in the verification process.

This implementation guide includes a profile for the VerificationResult resource for representing information about validation and verification. The VerificationResult resource includes a number of data elements designed to record information pertaining to the verification processes defined by implementers, as well as the outcome of verification for a specific data element/set of elements/resource. The verification profile includes data elements describing:

- The verification process, including the frequency of verification/reverification, verification status, verification date, and what it means if verification was unsuccessful
- The primary source against which data was verified, including the identity of the primary source, how a verificationcommunicates with the primary source, and whether the primary source can push updates about the data being validated
- The source of the data being verified (i.e. the attester), including the identity of the attesting individual, organization, and/or authorized representative and when the information was attested
- The entity conducting verification, including its identity and when it verifies the data
- The outcome of verification for the targeted data

Verification may occur on the total contents of a resource, a collection of elements in a resource, or a single element. Any entity with access to a data element in a verified healthcare directory SHOULD also have access to any verification information pertaining to that element.

Verification Methods

- Verify data against a primary source (e.g., verifying an address using Post Office records) Primary source – “authoritative” source  [who is responsible for issuing the data], assertions that cannot be easily verified, set of assertions that are mutually verified (relationships) 
  - Primary source verification methods, typically based on the capabilities of the primary source:
    - a mechanism like an API for verification of content against its records,
    - define an API that the primary source can access to push and/or pull content related to verification,
    - less technical approaches, such as manual verification, or 
    - more stringent requirements, such as mailing a postcard to confirm an address.
- Verify relationships against “partner” (e.g., declaring relationship between two organizations or an organization and an individual)

## Restricted Content 

We envision a verified national directory as a public or semi-public utility and make a significant portion of the information openly available. However, a verified national directory may include sensitive data that is not publicly accessible or accessible to every verified healthcare directory stakeholder. For example, an implementer might not want to make data about military personnel, emergency responders/volunteers, or domestic violence shelters available to everyone with access to the verified healthcare directory, or to users in a local environment who have access to data obtained from a verified healthcare directory.

We expect that a verified national directory operational policies and legal agreements will clearly delineate which data stakeholders can access, and if necessary, require stakeholders to protect the privacy/confidentiality of sensitive information in downstream local environments. As such, we have included a Restriction profile based on the Consent resource to convey any restrictions associated with a data element, collection of elements, or resource obtained from a verified healthcare directory.

## Redundancy & Ambiguity Across Resources 

Although FHIR resources define discrete business objects, related resources may have similar data elements. For example, the HealthcareService, PractitionerRole, and Location resources all include data elements describing availability. In some circumstances, values in these common data elements may not align across resources, potentially creating ambiguity. For example, in this IG, a Location resource might indicate that the location no longer accepts patients. However, a PractitionerRole resource for a provider working at the location might indicate that the provider is accepting patients (e.g., by referral only). In some cases, these inconsistencies are valid representations of the complexities of healthcare systems. In others, data might have been entered in error, outdated, or otherwise inaccurate.

The FHIR specification does not provide guidance on managing common elements across resources to reduce redundancy or ambiguity. Likewise, this implementation guide does not provide additional guidance. Implementations should consider further constraining profiles, creating invariants, or requiring data sources (e.g., attesters) to contribute data in a consistent format. Some resources include elements for describing exceptions, such as the AvailabilityExceptions field on HealthcareService, Location, and PractitionerRole. Additionally, verification processes may help discover and address inconsistencies across resources.
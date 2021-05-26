--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 13.0

-- Started on 2021-05-26 15:14:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 17755)
-- Name: staging; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA staging;


ALTER SCHEMA staging OWNER TO postgres;

SET default_tablespace = '';

--
-- TOC entry 214 (class 1259 OID 18396)
-- Name: contactmedium; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.contactmedium (
    contactmediumid character varying(255) NOT NULL,
    customerid character varying(255),
    partyid character varying(255),
    mediumtype character varying(255),
    preferred character varying(255),
    startdatetime date,
    enddatetime date,
    city character varying(255),
    contacttype character varying(255),
    country character varying(255),
    emailaddress character varying(255),
    faxnumber character varying(255),
    phonenumber character varying(255),
    postcode character varying(255),
    stateorprovince character varying(255),
    street1 character varying(255),
    street2 character varying(255)
);


ALTER TABLE staging.contactmedium OWNER TO postgres;

--
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE contactmedium; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON TABLE staging.contactmedium IS 'Indicates the contact medium that could be used to contact the party.';


--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.contactmediumid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.contactmediumid IS 'A string. Unique identifier ';


--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.customerid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.customerid IS 'Unique identifier for Customer';


--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.partyid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.partyid IS 'Unique Identifier for Party.';


--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.mediumtype; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.mediumtype IS 'A string. Type of the contact medium, such as: email address, telephone number, postal address.';


--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.preferred; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.preferred IS 'A boolean. If true, indicates that is the preferred contact medium.';


--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.startdatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.startdatetime IS 'The time period that the Contact Medium is valid for.';


--
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.enddatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.enddatetime IS 'The time period that the Contact Medium is valid for.';


--
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.city; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.city IS 'A string. The city.';


--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.contacttype; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.contacttype IS 'A string. The type of contact, for example: phone number such as mobile, fixed home, fixed office. postal address such as shipping instalation….';


--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.country; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.country IS 'A string. The country.';


--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.emailaddress; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.emailaddress IS 'A string. Full email address in standard format.';


--
-- TOC entry 3916 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.faxnumber; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.faxnumber IS 'A string. The fax number of the contact.';


--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.phonenumber; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.phonenumber IS 'A string. The primary phone number of the contact.';


--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.postcode; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.postcode IS 'A string. Postcode.';


--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.stateorprovince; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.stateorprovince IS 'A string. State or province.';


--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.street1; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.street1 IS 'A string. Describes the street.';


--
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN contactmedium.street2; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.contactmedium.street2 IS 'A string. Complementary street description.';


--
-- TOC entry 216 (class 1259 OID 18676)
-- Name: country_transform; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.country_transform (
    countryid character varying(255),
    country character varying(255),
    nationality character varying(255)
);


ALTER TABLE staging.country_transform OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 18349)
-- Name: customer; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.customer (
    customerid character varying(255),
    name character varying(255),
    status character varying(255),
    statusreason character varying(255),
    enddatetime timestamp with time zone,
    engagedpartyid character varying(255),
    disconnectiondate date,
    disconnectionreason character varying(255),
    billingaccountid character varying(255),
    paymentmethodid character varying(255),
    agreementid character varying(255),
    hasexemption character varying(255),
    dunninglevel character varying(255),
    createdate character varying(255),
    createdby character varying(255),
    updatedate character varying(255),
    lastmodifiedby character varying(255),
    dnextcustomerid character varying(255),
    dnextattachmentid character varying,
    legacynumber character varying DEFAULT 500,
    statuscode character varying(55),
    billingaccountstatuscode character varying(55),
    old_engagedpartyid character varying(255),
    customertype character varying(255),
    dnextaccountid character varying(55),
    segment character varying(255),
    ratingtype character varying,
    startdatetime character varying(255),
    dnextpaymentid character varying,
    recommendedby character varying(255)
);


ALTER TABLE staging.customer OWNER TO postgres;

--
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE customer; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON TABLE staging.customer IS 'Customer can be a person, an organization or another service provider who buys products from an enterprise.';


--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.customerid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.customerid IS 'Unique identifier for Customer';


--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.name; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.name IS 'A word, term, or phrase by which the Customer is known and distinguished from other Customers.';


--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.status; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.status IS 'Used to track the lifecycle status of the customer.The Customer Status will be:
Approved
in_study';


--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.statusreason; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.statusreason IS 'A string providing an explanation on the value of the status lifecycle. For instance, if the status is Rejected, statusReason will provide the reason for rejection. ';


--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.enddatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.enddatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.engagedpartyid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.engagedpartyid IS 'A string. Unique identifier for the Party, Individual or Organization';


--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.disconnectiondate; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.disconnectiondate IS 'Date of Disconnection';


--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.disconnectionreason; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.disconnectionreason IS 'Disconnection Reason';


--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.billingaccountid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.billingaccountid IS 'A string. Unique identifier of the account.';


--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.paymentmethodid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.paymentmethodid IS 'Unique Identifier.
Bank Transfer (9563)
CreditCardPayment (9564)
PAYPAL (9562)';


--
-- TOC entry 3933 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.agreementid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.agreementid IS 'Contract Number in ABCOm';


--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.hasexemption; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.hasexemption IS 'Has Tax Exemption';


--
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.dunninglevel; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.dunninglevel IS 'Dunning Level in Siebel';


--
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.createdate; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.createdate IS 'Creation Date of the Record';


--
-- TOC entry 3937 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.createdby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.createdby IS 'The user created the record';


--
-- TOC entry 3938 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.updatedate; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.updatedate IS 'Update Date of the Record';


--
-- TOC entry 3939 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.lastmodifiedby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.lastmodifiedby IS 'The user last modified the record';


--
-- TOC entry 3940 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN customer.startdatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.customer.startdatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 219 (class 1259 OID 19235)
-- Name: docs; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.docs (
    customerid character varying(255),
    doc_type character varying(255),
    file_name_original character varying(255),
    doc_name character varying(255),
    file_type character varying(255),
    file_name_save character varying(255),
    col6 character varying(255)
);


ALTER TABLE staging.docs OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17772)
-- Name: individual; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.individual (
    partyid character varying(255) NOT NULL,
    createdby character varying(255),
    lastmodifiedby character varying(255),
    countryofbirth character varying(255) NOT NULL,
    fullname character varying(255),
    gender character varying(255),
    givenname character varying(255) NOT NULL,
    maritalstatus character varying(255),
    middlename character varying(255),
    nationality character varying(255),
    placeofbirth character varying(255) NOT NULL,
    status character varying(255),
    title character varying(255),
    foreignerflag numeric(1,0),
    fathername character varying(255),
    legalstatus character varying(255),
    blacklistflag character varying(255),
    potentialfraudcomment character varying(255),
    potentialfraudflag character varying(255),
    education character varying(255),
    jobdescription character varying(255),
    recommendedby character varying(255),
    legalcustodian character varying(255),
    birthdate timestamp without time zone,
    updatedate character varying(255),
    createdate character varying(255),
    legacynumber character varying,
    statuscode character varying(55),
    familyname character varying(255),
    startdatetime character varying,
    enddatetime character varying
);


ALTER TABLE staging.individual OWNER TO postgres;

--
-- TOC entry 3941 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE individual; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON TABLE staging.individual IS 'Individual represents a single human being (a man, woman or child). The individual can be a customer, an employee or any other person that the organization needs to store information about.';


--
-- TOC entry 3942 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.partyid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.partyid IS 'Unique Identifier for Party.';


--
-- TOC entry 3943 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.createdby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.createdby IS 'The user created the record';


--
-- TOC entry 3944 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.lastmodifiedby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.lastmodifiedby IS 'The user last modified the record';


--
-- TOC entry 3945 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.countryofbirth; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.countryofbirth IS 'A string. Country where the individual was born.';


--
-- TOC entry 3946 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.fullname; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.fullname IS 'A string. Full name flatten (first, middle, and last names).';


--
-- TOC entry 3947 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.gender; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.gender IS 'A string. Gender.';


--
-- TOC entry 3948 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.givenname; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.givenname IS 'A string. First name of the individual.';


--
-- TOC entry 3949 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.maritalstatus; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.maritalstatus IS 'A string. Marital status (married, divorced, widow ...).';


--
-- TOC entry 3950 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.middlename; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.middlename IS 'A string. Middles name or initial.';


--
-- TOC entry 3951 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.nationality; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.nationality IS 'A string. Nationality.';


--
-- TOC entry 3952 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.placeofbirth; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.placeofbirth IS 'A string. Reference to the place where the individual was born.';


--
-- TOC entry 3953 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.status; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.status IS 'An individual state type (IndividualStateType). Status of the individual.';


--
-- TOC entry 3954 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.title; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.title IS 'A string. Useful for titles (aristocratic, social,...) Pr, Dr, Sir, ...';


--
-- TOC entry 3955 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.foreignerflag; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.foreignerflag IS 'An indicatior for foreigners';


--
-- TOC entry 3956 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.fathername; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.fathername IS 'Father Name';


--
-- TOC entry 3957 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.legalstatus; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.legalstatus IS 'Juridical Type';


--
-- TOC entry 3958 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.blacklistflag; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.blacklistflag IS 'Black List Indicator';


--
-- TOC entry 3959 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.potentialfraudcomment; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.potentialfraudcomment IS 'Comment for potential fraud';


--
-- TOC entry 3960 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.potentialfraudflag; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.potentialfraudflag IS 'Potential fraud indicator';


--
-- TOC entry 3961 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.education; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.education IS 'Education Status of the Individual';


--
-- TOC entry 3962 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.jobdescription; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.jobdescription IS 'Job Description';


--
-- TOC entry 3963 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.recommendedby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.recommendedby IS 'The person recommends';


--
-- TOC entry 3964 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN individual.legalcustodian; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individual.legalcustodian IS 'The Individual who is legal Custodian. This is the Foreign Key of the Individual.';


--
-- TOC entry 205 (class 1259 OID 17780)
-- Name: individualidentification; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.individualidentification (
    attachmentid character varying(255),
    partyid character varying(255),
    identificationtype character varying(255),
    issuingauthority character varying(255),
    issuingdate date,
    documentnumber character varying(255) NOT NULL,
    serialnumber character varying(255),
    startdatetime date,
    enddatetime date,
    attachmentname character varying(255),
    dnextattachmentid character varying(255),
    identificationid character varying(255) NOT NULL
);


ALTER TABLE staging.individualidentification OWNER TO postgres;

--
-- TOC entry 3965 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE individualidentification; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON TABLE staging.individualidentification IS 'Represents our registration of information used as proof of identity by an individual (passport, national identity card, drivers license, social security number, birth certificate).

For Albanian citizens “Personal Number” for foreigners Passport will be used for Individual Identification.
The Personal Number will be unique, and for foreigners Passport + national Id will be unique.';


--
-- TOC entry 3966 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.attachmentid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.attachmentid IS 'Unique identifier';


--
-- TOC entry 3967 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.partyid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.partyid IS 'Unique Identifier for Party.';


--
-- TOC entry 3968 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.identificationtype; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.identificationtype IS 'A string. Identification type (passport, national identity card, drivers license, social security number, birth certificate).';


--
-- TOC entry 3969 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.issuingauthority; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.issuingauthority IS 'A string. Authority which has issued the identifier, such as: social security, town hall.';


--
-- TOC entry 3970 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.issuingdate; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.issuingdate IS 'A date time (DateTime). Date at which the identifier was issued.';


--
-- TOC entry 3971 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.documentnumber; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.documentnumber IS 'Serial Number of the Id Card (Identity No)';


--
-- TOC entry 3972 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.serialnumber; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.serialnumber IS 'Serial Number of the Id Card';


--
-- TOC entry 3973 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.startdatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.startdatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 3974 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.enddatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.enddatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 3975 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN individualidentification.attachmentname; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.individualidentification.attachmentname IS 'File name of the  Attachment ';


--
-- TOC entry 206 (class 1259 OID 17788)
-- Name: organization; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.organization (
    partyid character varying(255) NOT NULL,
    createdby character varying(255),
    lastmodifiedby character varying(255),
    isheadoffice numeric(1,0),
    islegalentity numeric(1,0),
    status character varying(255),
    name character varying(255),
    nametype character varying(255),
    tradingname character varying(255) NOT NULL,
    industry character varying(255),
    organizationtype character varying(255),
    enddatetime date,
    numberofemployees numeric(8,0),
    legalstatus character varying(255),
    pointofsales character varying(255),
    salesagent character varying(255),
    recommendedby character varying(255),
    administrator character varying(255),
    authorizedperson character varying(255),
    parentorganization character varying(255),
    legacynumber character varying,
    statuscode character varying(55),
    createdate character varying,
    updatedate character varying,
    startdatetime character varying
);


ALTER TABLE staging.organization OWNER TO postgres;

--
-- TOC entry 3976 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE organization; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON TABLE staging.organization IS 'Organization represents a group of people identified by shared interests or purpose. Examples include business, department and enterprise. Because of the complex nature of many businesses, both organizations and organization units are represented by the same data.';


--
-- TOC entry 3977 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.partyid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.partyid IS 'Unique Identifier for Party.';


--
-- TOC entry 3978 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.createdby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.createdby IS 'The user created the record';


--
-- TOC entry 3979 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.lastmodifiedby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.lastmodifiedby IS 'The user last modified the record';


--
-- TOC entry 3980 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.isheadoffice; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.isheadoffice IS 'A boolean. If value is true, the organization is the head office.';


--
-- TOC entry 3981 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.islegalentity; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.islegalentity IS 'A boolean. If value is true, the organization is a legal entity known by a national referential.';


--
-- TOC entry 3982 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.status; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.status IS 'An organization state type (OrganizationStateType). Status of the organization.';


--
-- TOC entry 3983 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.name; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.name IS 'A string. Organization name (department name for example).';


--
-- TOC entry 3984 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.nametype; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.nametype IS 'A string. Type of the name : Co, Inc, Ltd,….';


--
-- TOC entry 3985 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.tradingname; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.tradingname IS 'A string. Name that the organization (unit) trades under.';


--
-- TOC entry 3986 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.industry; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.industry IS 'NACE code';


--
-- TOC entry 3987 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.organizationtype; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.organizationtype IS 'A string. Type of Organization (company, department...).';


--
-- TOC entry 3988 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.enddatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.enddatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 3989 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.numberofemployees; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.numberofemployees IS 'Number of Employees of the Corporate.';


--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.legalstatus; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.legalstatus IS 'Juridical Type of the Corporate. 
Individ
Biznes-Person Juridik
Biznes-Person Fizik
Institucjon Publik';


--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.pointofsales; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.pointofsales IS 'Point of Sales of the Corporate';


--
-- TOC entry 3992 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.salesagent; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.salesagent IS 'The Individual who sells. This is the Foreign Key of the Individual.';


--
-- TOC entry 3993 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.recommendedby; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.recommendedby IS 'The Individual who recommends. This is the Foreign Key of the Individual.';


--
-- TOC entry 3994 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.administrator; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.administrator IS 'The Individual who is the administrator of the Account. This is the Foreign Key of the Individual.';


--
-- TOC entry 3995 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.authorizedperson; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.authorizedperson IS 'The Individual who is the authorized person  of the Account. This is the Foreign Key of the Individual.';


--
-- TOC entry 3996 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.parentorganization; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.parentorganization IS 'If there is a parent Organization (Corporate)';


--
-- TOC entry 3997 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.createdate; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.createdate IS 'Creation Date of the Record';


--
-- TOC entry 3998 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.updatedate; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.updatedate IS 'Update Date of the Record';


--
-- TOC entry 3999 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN organization.startdatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organization.startdatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 207 (class 1259 OID 17796)
-- Name: organizationidentification; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.organizationidentification (
    partyid character varying(255),
    identificationid character varying(255),
    identificationtype character varying(255),
    issuingauthority character varying(255),
    issuingdate date,
    startdatetime date,
    enddatetime date,
    documentnumber character varying(255) NOT NULL,
    serialnumber character varying(255),
    attachmentname character varying(255),
    dnextattachmentid character varying(50)[]
);


ALTER TABLE staging.organizationidentification OWNER TO postgres;

--
-- TOC entry 4000 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE organizationidentification; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON TABLE staging.organizationidentification IS 'Represents our registration of information used as proof of identity by an organization.';


--
-- TOC entry 4001 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.partyid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.partyid IS 'Unique Identifier for Party.';


--
-- TOC entry 4002 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.identificationid; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.identificationid IS 'A string. Identifier.';


--
-- TOC entry 4003 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.identificationtype; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.identificationtype IS 'A string. Type of identification information used to identify the company in a country or internationally.';


--
-- TOC entry 4004 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.issuingauthority; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.issuingauthority IS 'A string. Authority which has issued the identifier (chamber of commerce...).';


--
-- TOC entry 4005 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.issuingdate; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.issuingdate IS 'A date time (DateTime). Date at which the identifier was issued.';


--
-- TOC entry 4006 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.startdatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.startdatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 4007 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.enddatetime; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.enddatetime IS 'The time period that the Customer is valid for.';


--
-- TOC entry 4008 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.documentnumber; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.documentnumber IS 'Serial Number of the Id Card (Identity No)';


--
-- TOC entry 4009 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.serialnumber; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.serialnumber IS 'Serial Number of the Id Card';


--
-- TOC entry 4010 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN organizationidentification.attachmentname; Type: COMMENT; Schema: staging; Owner: postgres
--

COMMENT ON COLUMN staging.organizationidentification.attachmentname IS 'File name of the  Attachment ';


--
-- TOC entry 215 (class 1259 OID 18482)
-- Name: updated_customer; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.updated_customer (
    customerid character varying(255),
    updatedate character varying(255),
    documentnumber character varying(255)
);


ALTER TABLE staging.updated_customer OWNER TO postgres;

--
-- TOC entry 3775 (class 2606 OID 17779)
-- Name: individual pk_individual; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.individual
    ADD CONSTRAINT pk_individual PRIMARY KEY (partyid);


--
-- TOC entry 3777 (class 2606 OID 17795)
-- Name: organization pk_organization; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.organization
    ADD CONSTRAINT pk_organization PRIMARY KEY (partyid);


-- Completed on 2021-05-26 15:14:26

--
-- PostgreSQL database dump complete
--


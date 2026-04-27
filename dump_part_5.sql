--
-- PostgreSQL database dump
--

\restrict dvOP1Hl48blfiuELXveaRoAnlTbteEBNmfbC7NuTCJfR8yEJsUBkBBVRf7hn8Jw

-- Dumped from database version 18.1 (Debian 18.1-1.pgdg13+2)
-- Dumped by pg_dump version 18.1 (Debian 18.1-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: darahim; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA darahim;


ALTER SCHEMA darahim OWNER TO postgres;

--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA darahim;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA darahim;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: darahim; Owner: postgres
--

CREATE TABLE darahim.accounts (
    id character varying(40) NOT NULL,
    consent_id character varying(300),
    bank_id character varying(40) NOT NULL,

-- Part 5 of 5

01K7EQ30WFSAY41B4PP5RR6HWF	Test Application	Test Application	test-app	Other		ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "curl/7.76.1", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "a660b553311e8dd392ac0670bf1f9c9e", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-13 12:00:28.047889	2025-10-13 12:00:28.047892	https://neotek-public-test-gw-svc-gw-gateway-traffic-cp4i-nonprod.apps.nt-non-ocp.neotek.sa/open-banking/auth/v1/accounts-links-redirection
01K7H0B02284G8R24X95ZM63N8	Makki Co Partners	Makki Co  Partners	MakkiApp	Other	https://shmector.com/_ph/13/188552034.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "9d6f84daecb85df1f82c7c52dd342601", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-14 09:20:35.394188	2025-10-14 09:20:35.394191	https://chatgpt.com/
01K7H27YGR1PB7H4T60HY22EMZ	Makki Co	Makki Co	makki-co	Other	https://claude.ai/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "4934342402229bdaf731695699cb00b6", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-14 09:53:52.664444	2025-10-14 09:53:52.664447	https://claude.ai/
01K7H7PXBCSXGYMYSV1ABWZDQ8	Makki Co	Makki Co	maaki-co	Other	https://claude.ai/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "8cb1dc42c6f8f6a6e16a43688074618e", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-14 11:29:25.868461	2025-10-14 11:29:25.868464	https://claude.ai/
01K7H82KFSK7KE2XAEVJ3WQHGP	saf	Mekan	sd	Other	https://claude.ai/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "b64b6f0d9466ba966991696567fe9154", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-14 11:35:48.985597	2025-10-14 11:35:48.985601	https://claude.ai/
01K7M23P5TY244D04VPB5MS942	majid	majid	majid	Other	https://developer-portal.neotek.sa/static/media/neotekLogoWithText.f8e442ae453518b215005b7ebd891a09.svg	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "f05d204f32a686992de5d573f79ff793", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-15 13:49:16.3464	2025-10-15 13:49:16.346403	https://developer-portal.neotek.sa/products
01K7M2EP2Y74NC8W3YFE0CZVP1	makkimemakn	makkimemakn	makkimemakn	Other	https://test-developer-portal.neotek.sa/products/69.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "28162b2b3f4902fe82edeb253afd6162", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-15 13:55:16.702964	2025-10-15 13:55:16.702967	https://test-developer-portal.neotek.sa/products/69
01K7Y142PFSWR2G0C8WFXKEZ2W	Zero Co	Zero CO	zero-com	Other	https://developer-portal.neotek.sa/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "8e0cca9a6f5f4e0e6ed2b004be3787ab", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-19 10:44:24.911951	2025-10-19 10:44:24.911954	https://developer-portal.neotek.sa/callback
01K85RDWKDTKC65PM21CFP3P8M	mohannad co	mohannad co	mohannad-co	Other	https://developer-portal.neotek.sa/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "01dbf66882c6fe1aa249c361107b430a", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-22 10:46:24.621408	2025-10-22 10:46:24.621411	https://developer-portal.neotek.sa/
01K85S7HKYZK71690QW9N7S7MJ	testmajid	testmajid	testmajid	Other	https://www.neotek.sa/assets/neotekLogo-DOPqyS4v.svg	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "72e5c5d7aaa2c74c574ad67e8e04152e", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-22 11:00:25.343029	2025-10-22 11:00:25.343032	https://www.neotek.sa
01K85S9HNVRQKNM521QKQD4MK2	test	test	test-11	Other	https://www.neotek.sa/assets/neotekLogo-DOPqyS4v.svg	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "0f4be98ba28b35d0e35ae9f61e8721eb", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-22 11:01:30.939609	2025-10-22 11:01:30.939613	https://itsm.neotek.local/itop/pagestessssssst
01K88BD1H99VDRDH1VW62NC016	cloud co	cloud co	cloud-co	Other	https://developer-portal.neotek.sa/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "e204b2c3afe341833768eb0876b28d9b", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-23 10:56:28.713259	2025-10-23 10:56:28.713262	https://developer-portal.neotek.sa/
01K8JBN9PEJBV8HQ451Z65D67S	MakkiTestSah	MakkiTestSah	makki-test-sah	Other	https://developer-portal.neotek.sa/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "3cbed1651977278f7a13fc9259dda5a2", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-27 08:13:23.534853	2025-10-27 08:13:23.534856	https://developer-portal.neotek.sa/
01K8JBPNNW8V29TC9EX2R2BX3T	makkiTest	makkiTest	makki-test	Other	https://developer-portal.neotek.sa/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "68ce17c078d5155bd564a7252c9aeda6", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-27 08:14:08.572889	2025-10-27 08:14:08.572892	https://developer-portal.neotek.sa/
01K8JCR9PBB9WHNAKPHKSBKGA3	makkiSahem	makkiSahem	makki-testo	Other	https://developer-portal.neotek.sa/logo.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "3f163c3b8d5f2c5fcbe993942c3ef93e", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-27 08:32:30.411492	2025-10-27 08:32:30.411495	https://developer-portal.neotek.sa/
01K8JHYMZA9EVWTTSY8KHRNVCM	Neotek Test	Neotek Test	Neotek Test	Other	https://api-drahim.neotek.sa	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "PostmanRuntime/7.45.0", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "858534cc5cb0df4d89741240564069f0", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": ["BSFRSARI", "INMASARI", "ARNBSARI", "RIBLSARI", "GULFSARI", "RJHISARI"]}	2025-10-27 10:03:21.450818	2025-10-27 10:03:21.450823	https://api-drahim.neotek.sa
01K8TB3ZS16A395V5XQ7ZD1QYC	testtstet	testtstet	testtstet	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "64eda184fa740fb5b24a101766118ff2", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-10-30 10:37:51.777303	2025-10-30 10:37:51.777305	https://developer-portal.neotek.sa/products/164
01K8TBTVYNEP05XPTAP5FSAGFM	Neot3ek Test	Neo3tek Test	Neo3tek Test	Other	https://api-drahim.neotek.sa	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "PostmanRuntime/7.45.0", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "f6d861f5a74b412060895108419fc49a", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": ["BSFRSARI", "INMASARI", "ARNBSARI", "RIBLSARI", "GULFSARI", "RJHISARI"]}	2025-10-30 10:50:21.525144	2025-10-30 10:50:21.525147	https://api-drahim.neotek.sa
01K920FBZBT9NE8WRP8BQSHSBQ	majiddddd	majiddddd	majiddddd1	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.16)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "01289024ec76e8ab57b7e0701798f82c", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-11-02 10:05:45.835821	2025-11-02 10:05:45.835823	https://developer-portal.neotek.sa/products/164
01K9PVDCNZ9FZ33PFSWJK6ASFR	Alrajhi Bank	Alrajhi Bank	arb-SAPI	Other	https://www.alrajhibank.com.sa/img/logo.svg	ACTIVE	{"initial_sync_callback": {"url": "https://gwt.alrajhibank.com.sa:9443/api-factory/sit/open-banking/feedbacks/v1/management", "client_id": "4603f20184875148abd0257f1ff06331", "client_secret": "87ed206054dfd6cab0b7e826f3d0cf75", "client_id_header_label": "X-IBM-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "curl/7.76.1", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "a8e88a9d98941d2b7ead08ea0ccf252f", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": ["NCBKSAJE", "BSFRSARI", "GULFSARI", "INMASARI", "ARNBSARI", "SAIBCSARI", "ALBISARI", "BJAZSAJE", "RIBLSARI", "OBLAB"], "update_request_2025-11-12 10:16:42.970166+00:00": {"old_logo": "https://www.alrajhibank.com.sa/img/logo.svg", "request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "curl/7.76.1", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "be4ee3e71be9175b5f6c347870844c33", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "old_identifier": "arb-SAPI", "old_legal_name": "Alrajhi Bank", "old_trading_name": "Alrajhi Bank", "old_identifier_type": "Other"}}	2025-11-10 12:21:21.215437	2025-11-12 10:16:42.981512	alrajhiretail://openbanking-callback
01KBCPHA4BBTGK4GDS9JPX9MVX	rers	rers	rers	Other	https://developer-portal.neotek.sa/products/166.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "5db92bf85db93e9826556e0c76d558a3", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-01 10:15:06.12363	2025-12-01 10:15:06.123633	https://developer-portal.neotek.sa/products/166
01KBCPHXVNJE563TCYPRG097C8	drh	drh	drh	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "ee4b7ef6b88744c4721450671426ec65", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-01 10:15:26.325521	2025-12-01 10:15:26.325524	https://developer-portal.neotek.sa/products/164
01KAZJANW50PMB2PDQ19G8ZAXQ	didf	sidf	tets-for	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "b243deab3e746dae34ec3544b360c0f5", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-11-26 07:51:26.853483	2025-11-26 07:51:26.853485	https://developer-portal.neotek.sa/products/164
01KAZJDQ14M5EKCJVQG24MR27H	idf	idf	idfdf	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "cd22c809c7bafcb852679ec0040d4174", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-11-26 07:53:06.340642	2025-11-26 07:53:06.340645	https://developer-portal.neotek.sa/products/164
01KBCP7MGQZFH83GGKX2H5CR3S	yomah	yomah	yomah	Other	https://test-developer-portal.neotek.sa/products/138.png	ACTIVE	{"initial_sync_callback": {"url": "https://test-developer-portal.neotek.sa/products/138", "client_id": "https://test-developer-portal.neotek.sa/products/138", "client_secret": "https://test-developer-portal.neotek.sa/products/138", "client_id_header_label": "https://test-developer-portal.neotek.sa/products/138", "client_secret_header_label": "https://test-developer-portal.neotek.sa/products/138"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "cc4ab23e853473439a29490b29ef019c", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-01 10:09:49.07982	2025-12-01 10:09:49.079823	https://test-developer-portal.neotek.sa/products/138
01K9S7V8NW7MSQS39D0796NB8A	Neotek Test	Neotek Test	Neotekasdfsafsa Test	Other	https://api-drahim.neotek.sa	ACTIVE	{"initial_sync_callback": {"url": "sfdsdf", "client_id": "client_id", "client_secret": "client_secret", "client_id_header_label": "client_id_header_label", "client_secret_header_label": "client_secret_header_label"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "PostmanRuntime/7.45.0", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "33631c8b510f2b4a83cf9c8d76324724", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": ["BSFRSARI", "INMASARI", "ARNBSARI", "RIBLSARI", "GULFSARI", "RJHISARI"], "update_request_2025-11-11 11:10:28.315194+00:00": {"old_logo": "https://api-drahim.neotek.sa", "request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "PostmanRuntime/7.45.0", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "48679ad045f1caea6e3acae449c6fb84", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "old_identifier": "Neotekasdfsafsa Test", "old_legal_name": "Neotek Test", "old_trading_name": "Neotek Test", "old_identifier_type": "Other"}}	2025-11-11 10:37:07.644734	2025-11-11 11:10:28.32384	https://api-drahim.neotek.sa
01KAX1FQ9PRT2MTK6F0ZP7YE7P	SIDF	SIDF	sidf-uat	Other	https://www.neotek.sa/neotek/uploads/Logo_c4737a7777.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "5e4f1a6815945e6d3b099c7143af97b0", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-11-25 08:18:37.494806	2025-11-25 08:18:37.494809	https://sidf-uat.neotek.sa/ob-connect/success
01KAX1H32WAWVBSWAN4BQBDSET	SIDF	SIDF	sidf-uat2	Other	https://www.neotek.sa/neotek/uploads/Logo_c4737a7777.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "deefb5e367d3c40bebffe4528e9f5a9f", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-11-25 08:19:22.332098	2025-11-25 08:19:22.332101	https://sidf-uat.neotek.sa/ob-connect/success
01KAX3R9QYSMTSNFGKQJXW9ND6	sahemo	shameo	sahemo-app	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "25a23066e3994a718572d41600a50a4e", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-11-25 08:58:15.678779	2025-11-25 08:58:15.678782	https://developer-portal.neotek.sa/products/164
01KBCPP6HAK01GBH9RT7AHSDWK	twotwo	twotwo	twotwo	Other	https://developer-portal.neotek.sa/products/166.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "7535959bed4740e1a441940aae093e3f", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-01 10:17:46.282159	2025-12-01 10:17:46.282162	https://developer-portal.neotek.sa/products/166
01KBCSPH72RCZCRNMNSH0SC3CR	wickeroo	wickeroo	Wickeroo	Other	https://admin-staging.wickeroo.com/images/logo/WICKEROO_RGB_Yellow.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "d5056e6e3153efd3c634a6ff1c9107d3", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-01 11:10:22.946422	2025-12-01 11:10:22.946425	https://wickeroo.com
01KCE23NW4BRXMD3VR9HHCNW15	Tetso	Tetso	tets-rae	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": {"url": "https://developer-portal.neotek.sa/products/164", "client_id": "thisIsId", "client_secret": "thisIsSecret", "client_id_header_label": "clientId", "client_secret_header_label": "clientSecret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "de2206d53f9ab8ee6ed338ab32463d9b", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-14 09:12:18.564203	2025-12-14 09:12:18.564206	https://developer-portal.neotek.sa/products/164
01KCE271VNFZ4N72B45ZRRBW7X	trying	trying	trying	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": {"url": "https://developer-portal.neotek.sa/products/164", "client_id": "idthis", "client_secret": "secretthis", "client_id_header_label": "header", "client_secret_header_label": "cerret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "e1bb9a4b24ba01a82400c67e4354ac3a", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-14 09:14:09.141159	2025-12-14 09:14:09.141161	https://developer-portal.neotek.sa/products/164
01KCE31VFVZJS10PH9HP8KH6S9	test six	test six	test-67	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "a219d5dcb57765e4cdc21e3c5adacdbc", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-14 09:28:47.355113	2025-12-14 09:28:47.355116	https://developer-portal.neotek.sa/products/164
01KCE393XE0E4Q6TBE1E1XMX8M	Makki	Makki	makki-testooe	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": {"url": "https://developer-portal.neotek.sa/products/164", "client_id": "thisid", "client_secret": "thissecret", "client_id_header_label": "idhere", "client_secret_header_label": "secrethere"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "920bc03f988c556db3c557b56218b606", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-14 09:32:45.35868	2025-12-14 09:32:45.358683	https://developer-portal.neotek.sa/products/164
01KCE3BRS8QK76QRREBHR18HS7	Bliss	Bliss	bliss-test	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "781750efd8ae924cc93d38eabd6a75c8", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-14 09:34:12.264451	2025-12-14 09:34:12.264454	https://developer-portal.neotek.sa/products/164
01KCE3F0M3BVTEMYAC4D7WQ0SS	Callbacks	Callbacks	callbacks-ur	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": {"url": "https://developer-portal.neotek.sa/callback", "client_id": "thisisaclientid", "client_secret": "thisisaclientsecret", "client_id_header_label": "client-id", "client_secret_header_label": "client-secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "a83bee0aba0ec1c29695ef5e414a0640", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-14 09:35:58.595428	2025-12-14 09:35:58.595431	https://developer-portal.neotek.sa/products/164
01KCE3KW8GP5C18YF1QQZSYA42	Callbacks	Callbacks	callbacks-test	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": {"url": "https://developer-portal.neotek.sa/products/callback", "client_id": "thisisclientid", "client_secret": "thisisckientsecret", "client_id_header_label": "idheader", "client_secret_header_label": "secretheader"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "ea6de3e232fb6672d91be32a7a1c9d01", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-14 09:38:37.968689	2025-12-14 09:38:37.968691	https://developer-portal.neotek.sa/products/164
01KDMSTVVNK6NFM417MNNG2J24	alraedah	alraedah	fabric	Other	https://apply-api.alraedah.sa/assets/icons/alraedah/white.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "69bc7f97aa023b8b7fd9c1aa59cbe40b", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2025-12-29 10:18:04.021228	2025-12-29 10:18:04.02123	https://fabric.alraedah.dev/swagger-ui/index.html
01KE1V1SW3V8KDNA52Z23TGH8K	Ghazala	Marwan	soar-testing	Other	https://fastly.picsum.photos/id/206/200/300.jpg	ACTIVE	{"initial_sync_callback": {"url": "https://ghazala.requestcatcher.com/test", "client_id": "xxx", "client_secret": "xxxxx", "client_id_header_label": "x-soar-client-id", "client_secret_header_label": "x-soar-client-secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "b526cdbadd3370e2e37e9f008c61337b", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-03 11:49:27.55539	2026-01-03 11:49:27.555393	https://ghazala.requestcatcher.com/test
01KE20DK16YBKBXWVZ3023RRHG	Yahya Ali Sharif Foundation	YAHYA ALI BUN MOHAMMED HUSSN SHARIF	Humor009	Other	https://www.example.com/images/photo.jpg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "1262203276194cb4b262be0f8b2c4a11", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-03 13:23:16.646212	2026-01-03 13:23:16.646214	https://iwtsp.com/966537068621
01KEPJV9BCJJG11H37ZMXR47CE	alraedah uat	alraedah uat	fabric-uat	Other	https://alraedah.sa/wp-content/uploads/2025/01/svgexport-4-5-1-1-1.svg	ACTIVE	{"initial_sync_callback": {"url": "https://uat-fabric-int.alraedah.dev/api/v1/neotek/callback", "client_id": "test", "client_secret": "test", "client_id_header_label": "test", "client_secret_header_label": "test"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "e75fd5cea7df3f9044d66d36b6c2166b", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-11 13:10:08.492249	2026-01-11 13:10:08.492253	https://uat-fabric-int.alraedah.dev/swagger-ui/index.html
01KEVTFZAP7H4H1K3V4WC7XPXX	test unsub	test unsub	test-unsub	Other	https://developer-portal.neotek.sa/products/163.png	ACTIVE	{"initial_sync_callback": {"url": "https://developer-portal.neotek.sa/products/163", "client_id": "idididi", "client_secret": "secretsecret", "client_id_header_label": "id", "client_secret_header_label": "secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "b48954eae31416ed3ce02d567a0fe4e2", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-13 13:59:58.55032	2026-01-13 13:59:58.550324	https://developer-portal.neotek.sa/products/163
01KEVTH9VXHTCQ6YBY6Y67199C	test tot	test tot	test6	Other	https://developer-portal.neotek.sa/products/164.png	ACTIVE	{"initial_sync_callback": {"url": "https://developer-portal.neotek.sa/products/164", "client_id": "ididid", "client_secret": "secretsecret", "client_id_header_label": "id", "client_secret_header_label": "secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "b142afbd919e2845bf85945e91ea94a1", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-13 14:00:42.109244	2026-01-13 14:00:42.109247	https://developer-portal.neotek.sa/products/164
01KEYEZ1VRNSAZ45MFP8PSKNVC	MONNN	Mina Finnance	mina-is-rambo	Other	https://gitlab.com/assets/illustrations/empty-state/empty-search-md-e1a55bfad6855c077c982f2f351f56e391af028eb41abe1db670c291d30aece9.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "c86570eb27c6c54013f339a9038eb4ce", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-14 14:36:13.048592	2026-01-14 14:36:13.048595	https://xyz.com/consent/success
01KEYF1SVQ99KQ8CT968MVRP84	MONNN	Mina Finnance	xyz-app-t	Other	https://gitlab.com/assets/illustrations/empty-state/empty-search-md-e1a55bfad6855c077c982f2f351f56e391af028eb41abe1db670c291d30aece9.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "89e0d5ff6aa7706672a4e7bc7a918ead", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-14 14:37:43.159471	2026-01-14 14:37:43.159475	https://xyz.com/consent/success
01KF89NDW2EBVF21AAM2Z8XA22	Soar INC	Soar INC	soar-inc-2	Other	https://cdn.pixabay.com/photo/2017/05/31/16/39/windows-2360920_1280.png	ACTIVE	{"initial_sync_callback": {"url": "https://cfb67a5e85ba.ngrok-free.app/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "hdnieb#5vbdbjnldpnu0@", "client_id_header_label": "X-SOAR-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "540983b58c8521968fe3a1f2281391b7", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-18 10:15:59.106307	2026-01-18 10:15:59.10631	https://neotek-developer.readme.io/reference/generatetoken-3
01KF8BNVX8G8RB1RCBW80AGE0K	soar inc three	soar inc three	soar-inc-3	Other	https://res.cloudinary.com/soar-inc/image/upload/v1753878235/icons/onboarding/Employment_info.png	ACTIVE	{"initial_sync_callback": {"url": "https://cfb67a5e85ba.ngrok-free.app/api/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "hdnieb#5vbdbjnldpnu0@", "client_id_header_label": "X-SOAR-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "dd850d73aab7077be02be489a71afe3c", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-18 10:51:10.632438	2026-01-18 10:51:10.632441	https://neotek-developer.readme.io/reference/generatetoken-3
01KF8D2HVXK1Y8R5HMWKQ3JM36	soar inc	soar inc	soar-inc-two	Other	https://res.cloudinary.com/soar-inc/image/upload/v1753878235/icons/onboarding/Employment_info.png	ACTIVE	{"initial_sync_callback": {"url": "https://85b7702957d6.ngrok-free.app/api/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "hdnieb#5vbdbjnldpnu0@", "client_id_header_label": "X-SOAR-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "f11b69a030466cc8bb36c8b2b4bf4c9b", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-18 11:15:34.909562	2026-01-18 11:15:34.909565	https://www.google.com/
01KFZQVEVGTW2D8E1SDSH8RWVJ	Soar UAT	Soar UAT	Soar-UAT	Other	https://res.cloudinary.com/soar-inc/image/upload/v1768993628/icons/onboarding/soar_logo_en.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "cc7c5af661f3b3883a2d013011f6b037", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-27 12:46:28.72013	2026-01-27 12:46:28.720132	https://ot700.test-app.link/Eb4APpUwg0b
01KFARJ1XQYEX5Z3RHSJ9BBBAQ	soar inc twoo	Soar inc two	soar-soar	Other	https://res.cloudinary.com/soar-inc/image/upload/v1753878235/icons/onboarding/Employment_info.png	ACTIVE	{"initial_sync_callback": {"url": "https://face506d8851.ngrok-free.app/api/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "hdnieb#5vbdbjnldpnu0@", "client_id_header_label": "X-SOAR-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "add6e0f70d2a5e9c7c56697410f90c92", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-19 09:14:46.071083	2026-01-19 09:14:46.071089	https://www.google.com/
01KP6DRP06SER9WY05PQZ9VN2D	aladdin	shawki	test	Other	https://dh-bank.odoo.com/web/binary/company_logo.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.18)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "305fa840f83197462127e3efc0c9cf8e", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-04-14 16:39:03.942391	2026-04-14 16:39:03.942394	https://dh-bank.odoo.com/callback
01KFAT7DVYCQTGRM04154XZG4N	teetete	tttet	tetetete	Other	https://res.cloudinary.com/soar-inc/image/upload/v1753878235/icons/onboarding/Employment_info.png	ACTIVE	{"initial_sync_callback": {"url": "https://face506d8851.ngrok-free.app/api/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "hdnieb#5vbdbjnldpnu0@", "client_id_header_label": "X-SOAR-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "61104b8024d60b3c9a7084abd8274870", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-19 09:43:55.006199	2026-01-19 09:43:55.006204	https://www.google.com/
01KFB1GSTPDXYX6P7YHYR5EXCF	ttttttttt	tttttttt	tttttttttt	Other	https://res.cloudinary.com/soar-inc/image/upload/v1753878235/icons/onboarding/Employment_info.png	ACTIVE	{"initial_sync_callback": {"url": "https://face506d8851.ngrok-free.app/api/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "hdnieb#5vbdbjnldpnu0@", "client_id_header_label": "X-SOAR-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "f3053deb22bdb340221b9e98dcf01c5d", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-19 11:51:22.19876	2026-01-19 11:51:22.198763	https://www.google.com/
01KFB1J9V90A7S9K1KYV98HPP5	tttttttt	tttttttt	ttttttttt	Other	https://res.cloudinary.com/soar-inc/image/upload/v1753878235/icons/onboarding/Employment_info.png	ACTIVE	{"initial_sync_callback": {"url": "https://face506d8851.ngrok-free.app/api/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "hdnieb#5vbdbjnldpnu0@", "client_id_header_label": "X-SOAR-Client-Id", "client_secret_header_label": "X-IBM-Client-Secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "2d44b6b2a0297b2a48281eef8dcddb80", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-19 11:52:11.369156	2026-01-19 11:52:11.369159	https://www.google.com/
01KFDYQD5MBZPZ8QBQM7CKVT4V	final test	final test	final-test	Other	https://res.cloudinary.com/soar-inc/image/upload/v1753878235/icons/onboarding/Employment_info.png	ACTIVE	{"initial_sync_callback": {"url": "https://9e31b5066ab1.ngrok-free.app/api/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "s3cr3tN30t3kWh34b00kS3cr3tZQm", "client_id_header_label": "x-neotek-client-id", "client_secret_header_label": "x-neotek-client-secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "532316f8ee0c7e5ccf63d23fc3d94c87", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-20 15:00:16.180648	2026-01-20 15:00:16.180651	https://www.google.com/?zx=1768921158153&no_sw_cr=1
01KFG3WZVG4J9CRS0GBXJRV7ZX	Soar	Soar	SoarQA	Other	https://res.cloudinary.com/soar-inc/image/upload/v1768993628/icons/onboarding/soar_logo_en.svg	ACTIVE	{"initial_sync_callback": {"url": "https://qa-yhr8ormz-main.soar.inc/admin/neotek/v1_callback", "client_id": "04373fd0-fd4a-468a-a7f8-5d39cfc106d7", "client_secret": "s3cr3tN30t3kWh34b00kS3cr3tZQm", "client_id_header_label": "x-neotek-client-id", "client_secret_header_label": "x-neotek-client-secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "558975b0e8b79d425707b9a3e0496191", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-01-21 11:09:10.89608	2026-01-21 11:09:10.896084	https://ot700.test-app.link/f81IL3BD6Zb
01KGM6NYJGHNW2YEHZ1AKQG13H	Soar UAT	Soar UAT	SoarUAT	Other	https://res.cloudinary.com/soar-inc/image/upload/v1768993628/icons/onboarding/soar_logo_en.svg	ACTIVE	{"initial_sync_callback": {"url": "https://uat-d6aa60b-thirdparty.soar.inc/main/neotek/v1_callback", "client_id": "6596849d-be4a-44f0-ab3c-9a48523eb4ef", "client_secret": "f7igkhfinQGtck#bvbkhbPuhv", "client_id_header_label": "x-neotek-client-id", "client_secret_header_label": "x-neotek-client-secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "240b034d3c9b59219fc24efbe3b54ae2", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-02-04 11:30:25.488318	2026-02-04 11:30:25.48832	https://ot700.test-app.link/Eb4APpUwg0b
01KH5Y8G5M7AK77WNWN4NV1CJK	alraedah	alraedah	fabric-prod	Other	https://alraedah.sa/wp-content/uploads/2025/01/svgexport-4-5-1.svg	ACTIVE	{"initial_sync_callback": {"url": "https://fabric.alraedah.sa/api/v1/neotek/callback", "client_id": "test", "client_secret": "test", "client_id_header_label": "test", "client_secret_header_label": "test"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "adb26a9eafbf30f5307074b46e130912", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-02-11 08:49:35.924031	2026-02-11 08:49:35.924034	https://alraedah.sa/
01KH64GDP7DWCA6FH54611B271	Qsalary	Qsalary	qsalary	Other	https://qsalary.com/wp-content/uploads/2022/10/Qsalary-Logo-Horizontal-Primary-Color.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "2eee194aa8536230cfa115cae712436a", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-02-11 10:38:46.983266	2026-02-11 10:38:46.983269	https://qsalary.com
01KHGR91WS572PJ369MZ09KCK8	Alraedah	Ahmed Aloufi	app-finance-fabric	Other	https://alraedah.sa/wp-content/uploads/2025/01/svgexport-4-5-1.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "4608438cba311a7f8a029b4e65dfc62a", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-02-15 13:36:41.369093	2026-02-15 13:36:41.369096	https://webhook.site/5b1bfb45-c3f6-486c-a2d7-344e30663987
01KHGTV42YPN1MR5TRT28XGK3B	Who	Who	who-dat	Other	https://alraedah.sa/wp-content/uploads/2025/01/svgexport-4-5-1.svg	ACTIVE	{"initial_sync_callback": {"url": "https://webhook.site/5b1bfb45-c3f6-486c-a2d7-344e30663987", "client_id": "client-id", "client_secret": "client-sec", "client_id_header_label": "X-header", "client_secret_header_label": "X-secret"}, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "b701c8cfbfc28deba373c5bd15d1e6fd", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-02-15 14:21:30.590773	2026-02-15 14:21:30.590776	https://webhook.site/5b1bfb45-c3f6-486c-a2d7-344e30663987
01KHTKHVN0V3Y604CM6S4Q520S	Test	Test	Test	Other	https://neotek.sa/assets/neotekLogo-SQUi8QTg.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "46b1be21228c6c748890422435d567b7", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-02-19 09:26:31.328812	2026-02-19 09:26:31.328815	http://www.test.com
01KKTQ2PQ6QJBC1KVYBQ6QXC67	majid	majid	majid-test-11	Other	https://www.neotek.sa/assets/neotekLogo-SQUi8QTg.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.18)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "1b32d73bc75faf9b4c14507a22af44ee", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-03-16 06:59:32.710317	2026-03-16 06:59:32.71032	https://www.neotek.sa/en
01KNEDVK5R9H8R90EGHAT5Z52C	Kahlid co	Kahlid	Kahlid-co	Other	https://seeklogo.com/images/N/neotek-logo-3D8752BFC3-seeklogo.com.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.18)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "a3c756c104707ff39d6dd095f53f63d5", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.251", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-04-05 08:58:52.984097	2026-04-05 08:58:52.984101	https://developer-portal.neotek.sa/products/163
01KPR1DT78EAC29GF0BZ42YX1F	bb	hh	test-ci-cd	Other	https://www.neotek.sa/assets/neotekLogo-SQUi8QTg.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.17)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "12b61b80cb8139f57da136b30a0730ff", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": null, "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-04-21 12:49:44.680474	2026-04-21 12:49:44.680477	https://www.neotek.sa
01KPX8ZVCFED5CMZ1F38V3JC9X	majid	majid	majid321	Other	https://www.neotek.sa/en/products/qaema.png	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.0.129", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.18)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "27697505c11fafca7bc30822ae21c721", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.0.129", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-04-23 13:38:07.887333	2026-04-23 13:38:07.887336	https://www.neotek.sa/en/products/qaema
01KPX9K5PA0R84ASFRA7H7741K	Al Rajhi Bank	Al Rajhi Bank	Al-Rajhi-Bank	Other	https://www.alrajhibank.com.sa/img/logo.svg	ACTIVE	{"initial_sync_callback": null, "register_request_info": {"host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-os": null, "language": null, "x-device": null, "x-scheme": "https", "cf-ipcity": null, "cf-region": null, "x-real-ip": "10.244.1.0", "user-agent": "Apache-HttpClient/5.2.1 (Java/17.0.18)", "cf-timezone": null, "x-app-agent": null, "cf-ipcountry": null, "x-request-id": "d3dc02d0f467d1969e125813e8bb5765", "x-app-version": null, "true-client-ip": null, "x-forwarded-for": "10.244.1.0", "x-forwarded-host": "open-banking-api.apps.nt.uat.oke.neotek.sa", "x-forwarded-port": "443", "x-client-timestamp": null, "x-drahim-device-id": null, "x-original-forwarded-for": "10.139.4.197", "x-drahim-request-timestamp": null}, "financial_institution_ids": []}	2026-04-23 13:48:41.034133	2026-04-23 13:48:41.034136	https://sit.almubasher.com.sa/business3/new/#/finance
\.


--
-- Data for Name: sub_categories; Type: TABLE DATA; Schema: darahim; Owner: postgres
--

COPY darahim.sub_categories (id, user_id, name, icon, color, category_id, global_id, created_at) FROM stdin;
\.


--
-- Data for Name: users_consents; Type: TABLE DATA; Schema: darahim; Owner: postgres
--

COPY darahim.users_consents (consent_id, user_id, bank_id, bank_entity_id, integration_method, expires_at, connection_status, access_token_expire, access_token, refresh_token_expire, refresh_token, created_at, updated_at, sponsored_tpp_id, neotek_accounts_link_id, data) FROM stdin;
urn:SAMA:kac-a9078f56-7f6f-422b-86ea-1881516646bb	123456789	OBLAB	OBLAB	OPEN_BANKING	2026-11-04 08:45:46.240523	connected	2025-11-10 08:51:57.158672	cf9f614f-10b5-4f01-8e2d-84a443ed6caa	\N	6ed6ba8c-7f82-4657-8061-0c9232196240	2025-11-05 08:51:57.161629	2025-11-05 08:51:57.161631	01K7EQ30WFSAY41B4PP5RR6HWF	2	{}
urn:SAMA:kac-def3186d-1813-48b3-bf10-ec7562fac246	1234567891	OBLAB	OBLAB	OPEN_BANKING	2026-11-04 09:53:03.604639	connected	2025-11-10 09:54:13.973065	c42fae7e-237c-4e19-8c54-1cf7285cb4a2	\N	b8a44f95-4755-4868-bf18-d54dd0ee04d5	2025-11-05 09:54:13.975437	2025-11-05 09:54:13.975439	01K7EQ30WFSAY41B4PP5RR6HWF	10	{}
urn:SAMA:kac-23b6e588-6257-46d4-82b4-5fb73213fa06	12345	OBLAB	OBLAB	OPEN_BANKING	2026-11-04 10:31:27.711155	connected	2025-11-10 10:33:24.996463	0a590d8c-148a-4fb0-83b7-0eeafc7f7dbd	\N	9709b9ba-cd94-4b10-91a7-8102ca72b503	2025-11-05 10:33:24.999101	2025-11-05 10:33:24.999103	01K920FBZBT9NE8WRP8BQSHSBQ	15	{}
urn:SAMA:kac-f41cba9a-050d-494e-b274-1fd828b0bf8e	1093595476	OBLAB	OBLAB	OPEN_BANKING	2026-11-05 07:07:35.614078	connected	2025-11-11 07:08:17.286622	783c47c2-3cbf-4a5d-8f19-1a56de009887	\N	529a7742-c51e-4ce5-a42e-be447b925e58	2025-11-06 07:08:17.288043	2025-11-06 07:08:17.288046	01K920FBZBT9NE8WRP8BQSHSBQ	22	{}
urn:PASP:consent-a11c8ca3-cf68-41cc-9919-b057d71ff5ef	acctest030	SAIB	SAIB	OPEN_BANKING	2027-01-31 08:06:22.270231	connected	2026-02-06 08:06:45.58179	20d1c076-a1da-4305-ba55-195a8fef0a41	\N	3fce1bcb-a6a3-44c6-b9a4-3b21969f750c	2026-02-01 08:06:45.583188	2026-02-01 08:06:45.58319	01K920FBZBT9NE8WRP8BQSHSBQ	682	{}
urn:SAMA:kac-7ca19f62-98c3-4371-9f30-479f3f6ddf60	OBLABSANDBOX	OBLAB	OBLAB	OPEN_BANKING	2026-11-08 13:39:57.441852	connected	2025-11-14 13:42:32.288961	d882a2ed-6b1d-4ee9-b749-9f5ca80e60fe	\N	0b0892e1-21ee-42a8-8439-afcbd43508ed	2025-11-09 13:42:32.290326	2025-11-09 13:42:32.290327	01K920FBZBT9NE8WRP8BQSHSBQ	40	{}
urn:SAMA:kac-05595e34-342d-421c-aa71-bc09b1799b64	2345587	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 06:43:46.318485	connected	2026-01-05 08:37:00.599855	5033ecc1-6aa1-4b11-b0cf-b372abc9fa53	\N	cf1245e6-1c26-4a00-ae32-b9fdd591fc52	2025-11-11 06:44:21.61742	2025-12-31 08:37:00.601148	01K920FBZBT9NE8WRP8BQSHSBQ	56	{}
urn:SAMA:kac-d90de97a-7f12-4cd9-8cb3-d77ec76de0fd	3	OBLAB	OBLAB	OPEN_BANKING	2026-11-11 09:05:40.173533	connected	2025-11-17 09:06:19.604404	dc6a11df-dbd9-412e-ac8d-33f0195501a8	\N	34845eb9-e85e-43ae-b3d1-c2199d426df9	2025-11-12 09:06:19.605642	2025-11-12 09:06:19.605644	01K920FBZBT9NE8WRP8BQSHSBQ	68	{}
urn:SAMA:kac-fa4f509e-32af-4923-a47b-779dbcda65a1	test1	OBLAB	OBLAB	OPEN_BANKING	2026-11-12 10:02:16.748077	connected	2026-01-19 14:10:42.729749	c26204e2-771f-4975-95d6-679504eba6de	\N	744a9f03-86e6-4220-b0f2-2d5f0be899ed	2025-11-13 10:03:01.328294	2026-01-14 14:10:42.730452	01K920FBZBT9NE8WRP8BQSHSBQ	72	{}
urn:SAMA:kac-fd11ac0b-80b9-4621-8097-dc2ef1e37928	123456789911	OBLAB	OBLAB	OPEN_BANKING	2026-11-09 11:22:04.118063	connected	2025-11-15 11:23:22.384694	7ac004cb-fad0-4771-8f61-3719613b2a27	\N	bcd54377-1117-413d-a56f-43e6cbbe4b99	2025-11-10 11:23:22.387326	2025-11-10 11:23:22.387328	01K7EQ30WFSAY41B4PP5RR6HWF	46	{}
urn:SAMA:kac-403f9c9c-b27f-4831-ab04-9d7d0dd0effc	1110361126	OBLAB	OBLAB	OPEN_BANKING	2026-11-09 12:44:27.729943	connected	2025-11-15 12:45:06.917926	148dc605-45f4-43b9-891e-79633bec5be0	\N	6b5ba75a-f2a2-4aaa-b000-3dfe64df27e7	2025-11-10 12:45:06.919235	2025-11-10 12:45:06.919237	01K7EQ30WFSAY41B4PP5RR6HWF	50	{}
urn:SAMA:kac-b5ea840d-3871-4b11-9dca-9857080102eb	112233444555	OBLAB	OBLAB	OPEN_BANKING	2026-11-09 14:14:16.287703	connected	2025-11-15 14:14:57.240448	c7820b59-9b76-4237-8d2a-cb784bbbb99c	\N	c2d47112-650f-4e6f-bfa6-cd80c0f180cd	2025-11-10 14:14:57.241722	2025-11-10 14:14:57.241724	01K7EQ30WFSAY41B4PP5RR6HWF	53	{}
urn:SAMA:kac-99eb6e4f-5e42-4353-8870-7c3be787a102	oblabarbapp	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 07:57:47.917186	connected	2025-11-16 07:58:12.760561	02ced8eb-fa4e-432a-9d66-4db914f17fe4	\N	081407be-4d93-4c66-ab39-afee4253ffe5	2025-11-11 07:58:12.761959	2025-11-11 07:58:12.761962	01K9PVDCNZ9FZ33PFSWJK6ASFR	57	{}
urn:SAMA:kac-7bc27d8e-84d9-4a8d-a4c7-de6cbce1f69a	88999792	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 08:00:19.888482	connected	2025-11-16 08:00:47.784663	bc4aa93c-247a-44be-a0f2-d178771e1ec1	\N	4a952244-e113-4a95-8ab0-03b08c7f7e4a	2025-11-11 08:00:47.786173	2025-11-11 08:00:47.786176	01K9PVDCNZ9FZ33PFSWJK6ASFR	58	{}
urn:SAMA:kac-1019c7e5-6396-4bc7-8a9b-f8ea96da703e	88UF	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 11:28:43.85696	connected	2025-11-16 11:30:33.735439	2ab42600-5fcb-4305-b917-91bf9b73b68c	\N	d01b7502-a972-4d2d-9ab2-a68eb7ad28d3	2025-11-11 11:30:33.736881	2025-11-11 11:30:33.736884	01K9PVDCNZ9FZ33PFSWJK6ASFR	59	{}
urn:SAMA:kac-c504eee2-60ee-48cc-8984-181b1390ac09	23453	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 11:33:54.60221	connected	2025-11-16 11:34:41.104783	a9f779bc-1d27-40ce-b8ee-beadce495344	\N	e90c8320-de34-4ce4-8f54-2af1cce8793d	2025-11-11 11:34:41.106323	2025-11-11 11:34:41.106326	01K9PVDCNZ9FZ33PFSWJK6ASFR	61	{}
urn:SAMA:kac-70a09580-1f01-4f4f-bb7f-65ee9db59c61	37746	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 12:37:47.258484	connected	2025-11-16 12:38:23.531882	a46d612f-d9b3-42e1-9e4a-c98dd9759947	\N	a0f46b47-8286-4b9f-80cc-48ae4ec65d04	2025-11-11 12:38:23.533142	2025-11-11 12:38:23.533144	01K9PVDCNZ9FZ33PFSWJK6ASFR	63	{}
urn:SAMA:kac-1a0b06e8-8773-4dac-9ab4-0d5bcaef83fd	22234	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 12:39:25.806044	connected	2025-11-16 12:40:05.83992	9affe3c3-147f-4a00-8599-5159b2df56f7	\N	81e4f642-7359-4c39-b9d5-abab55c100c9	2025-11-11 12:40:05.8412	2025-11-11 12:40:05.841202	01K9PVDCNZ9FZ33PFSWJK6ASFR	64	{}
urn:SAMA:kac-cde9536d-546e-4194-9db1-fc1c71736e81	2334	OBLAB	OBLAB	OPEN_BANKING	2026-11-10 13:27:18.65894	connected	2025-11-16 13:28:52.695021	8ac78e46-c6b0-4068-a612-71b8663b2be9	\N	cfb41076-7be2-43b6-9b32-87b92126e1a3	2025-11-11 13:28:52.696203	2025-11-11 13:28:52.696205	01K9PVDCNZ9FZ33PFSWJK6ASFR	65	{}
urn:SAMA:kac-da879a31-672f-4e9c-a127-31f622b1778e	arboblab	OBLAB	OBLAB	OPEN_BANKING	2026-11-12 11:37:56.865804	connected	2025-11-18 11:43:33.491632	c2dd0b8f-6fdb-4a2d-81ad-caf0f378c8e5	\N	7b82c777-3a40-4449-8120-30244d0f8b3f	2025-11-13 11:43:33.492881	2025-11-13 11:43:33.492883	01K920FBZBT9NE8WRP8BQSHSBQ	75	{}
urn:SAMA:kac-7d9638ea-9c30-461c-9568-5b610d5ca947	111223	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:13:20.549157	connected	2025-11-22 08:14:11.797847	e4b0b69b-0ff0-4e9d-abb6-2edbce40d5a7	\N	471c3fbd-eeaa-4548-acec-b56bffc5d559	2025-11-17 08:14:11.800938	2025-11-17 08:14:11.80094	01K920FBZBT9NE8WRP8BQSHSBQ	96	{}
urn:SAMA:kac-783e2cb6-21ea-458d-a31c-8093d51a812a	OBLABARB	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:34:13.766073	connected	2025-11-22 08:35:07.749319	d88f9613-1798-4994-a7ab-2fe14381f91e	\N	3d3103d6-934f-44de-897a-af3ca8268ec2	2025-11-17 08:35:07.750576	2025-11-17 08:35:07.750578	01K9PVDCNZ9FZ33PFSWJK6ASFR	98	{}
urn:SAMA:kac-93bb6935-919e-4057-aa72-2719b1289ccb	11234	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:36:53.156928	connected	2025-11-22 08:37:20.551987	bb18fc36-1943-4012-a71e-95b38fe6ea5a	\N	1a9a5286-7132-41f0-b53f-6a55921ccd00	2025-11-17 08:37:20.554974	2025-11-17 08:37:20.554976	01K9PVDCNZ9FZ33PFSWJK6ASFR	99	{}
urn:SAMA:kac-63284111-7dd6-491f-9885-20bd32c373df	88764445	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:38:33.803071	connected	2025-11-22 08:39:01.412	8e57ce46-f7a5-472d-a337-4a636876a752	\N	dc07f567-8a90-4a68-b6d6-7b505ec23daa	2025-11-17 08:39:01.413334	2025-11-17 08:39:01.413337	01K9PVDCNZ9FZ33PFSWJK6ASFR	100	{}
urn:SAMA:kac-8f1a20b1-82d1-484b-b668-d623394f340a	88764422345	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:40:29.939493	connected	2025-11-22 08:41:38.465188	8bad2f8b-3098-42f6-86b2-67bb8b338135	\N	1bc29f18-01c3-4963-8d1d-3c766a980b63	2025-11-17 08:41:38.466718	2025-11-17 08:41:38.46672	01K9PVDCNZ9FZ33PFSWJK6ASFR	102	{}
urn:SAMA:kac-fbd05bdd-b337-4ce0-8120-03171bf923ba	22345	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:43:23.40158	connected	2025-11-22 08:44:08.308175	184d566f-6017-44ed-ba31-e06f64b8003e	\N	1036b932-7355-4df3-8ee1-e04c5128e524	2025-11-17 08:44:08.30953	2025-11-17 08:44:08.309532	01K9PVDCNZ9FZ33PFSWJK6ASFR	103	{}
urn:SAMA:kac-76c77589-4dac-48ba-9971-4a0f984f9cd9	test8	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:51:56.088288	connected	2025-11-22 08:52:38.429864	e1ed048d-455a-4266-bb16-6ac7ad60e5bb	\N	a180cdce-9056-4650-a866-efed4d2e3b09	2025-11-17 08:52:38.4315	2025-11-17 08:52:38.431502	01K9PVDCNZ9FZ33PFSWJK6ASFR	107	{}
urn:SAMA:kac-e207a92d-d125-46dc-995f-564c63fc9283	ww99883	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:54:52.958907	connected	2025-11-22 08:56:07.331685	61075d7d-928b-4f43-9755-8a57e9334a6c	\N	d095fc3f-73e0-47ae-ad09-8d9469516969	2025-11-17 08:56:07.333099	2025-11-17 08:56:07.333101	01K9PVDCNZ9FZ33PFSWJK6ASFR	109	{}
urn:SAMA:kac-2a803b2b-1aa3-484f-a64a-456344e4fdfe	8847393	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 08:57:48.961164	connected	2025-11-22 08:58:37.781122	648994fe-fc6f-4d41-8627-eb0a8d43b5b3	\N	1bcc5298-1714-4fae-bd2f-03a5a4e9403e	2025-11-17 08:58:37.782466	2025-11-17 08:58:37.782469	01K920FBZBT9NE8WRP8BQSHSBQ	110	{}
urn:SAMA:kac-8e8e2cf1-9f58-4702-8037-f10f30343b69	majidtest	OBLAB	OBLAB	OPEN_BANKING	2026-11-16 09:42:11.263767	connected	2025-11-22 09:42:56.821651	8805f015-e355-4847-9109-263ba12dabe6	\N	02c5ed1c-3c2a-4e23-88e5-dadce95f9b19	2025-11-17 09:42:56.823073	2025-11-17 09:42:56.823075	01K920FBZBT9NE8WRP8BQSHSBQ	115	{}
urn:PASP:consent-94824343-b450-4cab-89e7-484191842c6e	acctest033	SAIB	SAIB	OPEN_BANKING	2027-01-31 08:27:53.544707	connected	2026-02-06 08:28:23.261665	d45d71a2-38e3-4a6f-938b-0a790a4104b3	\N	9065ded0-cb22-4da5-997c-b7cfba844ed9	2026-02-01 08:28:23.264742	2026-02-01 08:28:23.264744	01K920FBZBT9NE8WRP8BQSHSBQ	685	{}
urn:PASP:consent-902adac3-989a-4406-908a-7f81cae36aef	20	SAIB	SAIB	OPEN_BANKING	2026-11-26 08:33:22.753496	connected	2025-12-02 22:36:35.088395	311d2dc0-1ffc-44c0-b07f-e07abaee0851	\N	9a86e481-e26c-4312-a2ee-8e41d8318dc0	2025-11-27 22:36:35.092385	2025-11-27 22:36:35.092388	01K9PVDCNZ9FZ33PFSWJK6ASFR	292	{}
urn:PASP:consent-61d1d263-6146-4576-8c76-73c247e8e155	67bdabc0d5b00e8fb22e3cf1	SAIB	SAIB	OPEN_BANKING	2027-01-14 12:42:07.859284	disconnected	2026-01-20 12:50:46.649483	188a3de4-4297-4ed7-b135-031182189336	\N	5365a4af-1d45-4e9f-ac4e-1aa238911192	2026-01-15 12:50:46.650802	2026-01-17 13:30:00.022291	01KE1V1SW3V8KDNA52Z23TGH8K	505	{}
urn:PASP:consent-16534548-a21e-4663-830f-1a9e81cefe55	1201552229	SAIB	SAIB	OPEN_BANKING	2027-01-18 14:14:59.567846	connected	2026-01-24 14:15:50.726668	aa9cf47a-4431-4b8c-aef0-8e2e7af98cdd	\N	eb887df8-d69e-4db3-a2eb-f1927a3de9dd	2026-01-19 14:15:50.729413	2026-01-19 14:15:53.985929	01K9PVDCNZ9FZ33PFSWJK6ASFR	551	{"profile_accounts_link": {"PSUId": "1201552229", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "551", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-8ad7ee7b-7265-481c-9943-2f37fa3b6a3e	696f9a2aa5a80766ee37b94c	SAIB	SAIB	OPEN_BANKING	2027-01-19 15:59:44.285712	connected	2026-01-25 16:00:07.736481	a38e8c02-27f3-43a5-8721-ea8782c4122b	\N	68777f9f-609a-48b8-a78d-469f6c1525bc	2026-01-20 16:00:07.737981	2026-01-20 16:00:07.737984	01K920FBZBT9NE8WRP8BQSHSBQ	566	{}
urn:PASP:consent-8f45a709-e2e7-47b5-b33c-66be3a1f8492	demopdf	SAIB	SAIB	OPEN_BANKING	2026-12-10 14:26:52.45058	connected	2025-12-16 14:30:25.650193	fc686d6a-f2ce-476d-b896-f2cc159c7605	\N	1873cf71-5ee3-413f-a691-7381e37ba16a	2025-12-11 14:30:25.651697	2025-12-11 14:30:25.651699	01K9PVDCNZ9FZ33PFSWJK6ASFR	371	{}
urn:SAMA:kac-6fb0eb01-5ae9-4ac0-be19-556316c48516	testpdf	OBLAB	OBLAB	OPEN_BANKING	2026-12-13 09:28:55.282516	connected	2025-12-19 09:29:34.833915	f7144a02-d893-40fb-b7b4-520ecff201f0	\N	eaa426a8-17d7-49cd-876b-0e95fabc5464	2025-12-14 09:29:34.835272	2025-12-14 09:29:34.835275	01K9PVDCNZ9FZ33PFSWJK6ASFR	376	{}
urn:PASP:consent-7ee1ccf5-bf2a-4903-ba18-c0775ca715c5	39848	SAIB	SAIB	OPEN_BANKING	2026-12-13 13:44:48.156101	connected	2025-12-19 13:47:54.884771	fc789d2c-2efb-403a-b378-c9a0169b44ae	\N	2551c525-c8ab-4394-8279-035912b4e38b	2025-12-14 13:47:54.886205	2025-12-14 13:47:54.886222	01K920FBZBT9NE8WRP8BQSHSBQ	389	{}
urn:PASP:consent-be03e894-8a18-4596-a52e-a8ca6aa7fb5e	craccount1	SAIB	SAIB	OPEN_BANKING	2026-12-28 06:32:52.690165	connected	2026-01-03 06:33:45.275359	853c3c3b-6195-48ee-b58a-cc09de8ff02d	\N	4cbc683d-fdfa-452b-acec-beedb842d9b3	2025-12-29 06:33:45.276842	2025-12-29 06:33:45.276844	01K920FBZBT9NE8WRP8BQSHSBQ	401	{}
urn:PASP:consent-f8d40c25-16e2-4b35-80f5-19c23e3ed057	AVG-1200936340	SAIB	SAIB	OPEN_BANKING	2026-11-30 14:48:29.769023	disconnected	2025-12-06 14:48:53.640506	9463e2fc-d6e6-410e-be5a-9d06aed56533	\N	203428f2-9943-418a-b4c8-103d11f2fed7	2025-12-01 14:48:53.642216	2025-12-30 09:30:00.071664	01K9PVDCNZ9FZ33PFSWJK6ASFR	327	{}
urn:PASP:consent-ad1058a4-7a87-46eb-8212-c7b26b3a2901	AVG-1201609805	SAIB	SAIB	OPEN_BANKING	2026-11-30 14:53:56.145074	disconnected	2025-12-06 14:54:21.484403	4a7976f2-9772-4f57-a3d7-9679150fc7a2	\N	0a151cdd-fe70-441c-a523-0fb1e616c493	2025-12-01 14:54:21.485712	2025-12-30 09:30:00.080098	01K9PVDCNZ9FZ33PFSWJK6ASFR	328	{}
urn:PASP:consent-2db4c7f6-8b7e-4310-b5d0-42b5d7293663	AVG-1200998019	SAIB	SAIB	OPEN_BANKING	2026-12-01 13:59:45.192136	disconnected	2025-12-07 14:00:49.299146	dabd7570-15b3-41bf-b5f9-44ce90c5a11a	\N	7dde69c6-431b-46c7-bc6f-09131e680017	2025-12-02 14:00:49.300346	2025-12-30 09:30:00.088356	01K9PVDCNZ9FZ33PFSWJK6ASFR	337	{}
urn:SAMA:kac-98bcd099-7320-4817-b810-97914c50ef25	1234567890	OBLAB	OBLAB	OPEN_BANKING	2027-01-05 09:16:19.869068	connected	2026-01-11 09:17:14.984116	d9284c8f-bbd8-42cc-b5a7-237fb6be91b6	\N	60540994-d592-4dd9-824d-031627d204ca	2026-01-06 09:17:14.985468	2026-01-06 09:17:14.985469	01KAX1H32WAWVBSWAN4BQBDSET	424	{}
urn:PASP:consent-609e0be1-753e-4642-b3fa-91e22682e15a	6971ef802246978b2d7b3f0a	SAIB	SAIB	OPEN_BANKING	2027-01-21 09:43:06.083232	disconnected	2026-01-27 09:44:33.144414	a835b1b8-8ec8-4078-9c52-5e60e12b83de	\N	801dc403-13ae-4c38-a8f1-4558c6ba6816	2026-01-22 09:44:33.146199	2026-01-24 10:30:00.023306	01KFG3WZVG4J9CRS0GBXJRV7ZX	594	{}
urn:SAMA:kac-766845d6-0f36-4547-828c-1fee0f9b1142	test_1	OBLAB	OBLAB	OPEN_BANKING	2027-01-07 10:20:09.39729	disconnected	2026-01-13 10:22:38.359624	6d3b05ae-b7b1-4c7f-aca5-661dbc49a926	\N	15f65036-ce01-4482-ae51-436643016942	2026-01-08 10:22:38.361103	2026-01-10 10:30:00.020056	01K9PVDCNZ9FZ33PFSWJK6ASFR	433	{}
urn:PASP:consent-ee685a48-dddd-49d3-af88-cd329c938311	6970bc2373e92b8f785732f9	SAIB	SAIB	OPEN_BANKING	2027-01-21 10:09:28.446222	disconnected	2026-01-27 10:10:13.758211	df592141-a46e-4a87-8cc8-e5c7b9493c76	\N	675d31aa-b917-4374-8c0a-4e451e8b47df	2026-01-22 10:10:13.759888	2026-01-24 10:30:00.033418	01KFG3WZVG4J9CRS0GBXJRV7ZX	595	{}
urn:SAMA:kac-6272e3f0-daf0-4e3c-83c2-a064ad5c87e3	MULTSTMNT	OBLAB	OBLAB	OPEN_BANKING	2027-01-12 07:21:08.320738	connected	2026-01-18 07:21:45.191301	9f1a6a3f-b67b-4222-83a1-f583677d3b1c	\N	70c5afb2-0937-4efd-b226-55045ba9ddd8	2026-01-13 07:21:45.192908	2026-01-13 07:21:45.192911	01K920FBZBT9NE8WRP8BQSHSBQ	447	{}
urn:PASP:consent-d0018fc0-ca19-4d0e-b041-6e89833c262d	MULTSTMNT	SAIB	SAIB	OPEN_BANKING	2027-01-12 07:35:52.916826	connected	2026-01-18 07:36:24.708537	9be03afb-6c20-4c72-9f94-c25f4b635cee	\N	c0d98c38-f2d7-4b3a-bb42-774047af7c27	2026-01-13 07:36:24.710061	2026-01-13 07:36:24.710063	01K920FBZBT9NE8WRP8BQSHSBQ	448	{}
urn:PASP:consent-32a61b07-7131-4224-8bb4-850a6d902884	1234567890	SAIB	SAIB	OPEN_BANKING	2027-01-11 08:38:27.194505	disconnected	2026-01-17 08:46:01.900528	5b148ca1-33f8-4d7f-a253-acfa0dbeb359	\N	0605014d-db5e-4a81-b676-33627d3cf998	2026-01-12 08:46:01.902927	2026-01-14 09:30:00.024487	01KEPJV9BCJJG11H37ZMXR47CE	444	{}
urn:PASP:consent-24746be6-d36e-4b7a-b746-b53ab3782c94	6975cb442246978b2d7c75d3	SAIB	SAIB	OPEN_BANKING	2027-01-24 08:50:33.142704	disconnected	2026-01-30 08:54:43.14258	360640c5-300c-4c0e-88a4-758e9dbf2004	\N	1b7d347e-e2c6-4731-a8b4-5b86dc021609	2026-01-25 08:54:43.144161	2026-01-27 09:30:00.023993	01KFG3WZVG4J9CRS0GBXJRV7ZX	599	{}
urn:PASP:consent-0ab2c4d2-ced0-4efe-a933-0d3f4327159b	69709e4473e92b8f7856eca6	SAIB	SAIB	OPEN_BANKING	2027-01-24 09:30:20.116503	disconnected	2026-01-30 09:30:57.267833	1d47ca98-13ce-4c37-9095-ead8a6d52b65	\N	b4db9c52-c871-4d57-98b5-045606ed7260	2026-01-25 09:30:57.269146	2026-01-27 10:30:00.02204	01KFG3WZVG4J9CRS0GBXJRV7ZX	600	{}
urn:PASP:consent-53ba30f3-cf07-415b-839e-4e42186191ec	acctest034	SAIB	SAIB	OPEN_BANKING	2027-01-31 08:32:10.015742	connected	2026-02-06 08:32:33.660861	ba1e31a0-9aa9-41e9-a1f5-1293d83d21d4	\N	d5c6364f-4661-4fb5-983d-456c09193d37	2026-02-01 08:32:33.662478	2026-02-01 08:32:33.66248	01K920FBZBT9NE8WRP8BQSHSBQ	686	{}
urn:PASP:consent-3a708411-3dde-4ebf-ae2a-220ea4763404	acctest035	SAIB	SAIB	OPEN_BANKING	2027-01-31 08:38:44.150932	connected	2026-02-06 08:39:05.07608	c5bdd5f9-aba5-43bc-8e34-bfd334c8d246	\N	a81ce0d1-a3fe-46ed-8a56-213dc9d4a0aa	2026-02-01 08:39:05.077749	2026-02-01 08:39:05.077752	01K920FBZBT9NE8WRP8BQSHSBQ	687	{}
urn:PASP:consent-7fb8cded-79dd-4de0-9b3a-d0bd4f29bbb2	acctest039	SAIB	SAIB	OPEN_BANKING	2027-01-31 08:58:29.598339	connected	2026-02-06 08:58:57.509478	2cee588c-e61f-49d2-8475-bd1fcb2da2f5	\N	a55ad01f-cf10-46cc-9336-fa341a0a8146	2026-02-01 08:58:57.510883	2026-02-01 08:58:57.510885	01K920FBZBT9NE8WRP8BQSHSBQ	691	{}
urn:SAMA:kac-457eefe4-f832-4eea-a56c-ffe1955b5b7d	riyad	OBLAB	OBLAB	OPEN_BANKING	2026-11-17 10:06:18.512211	connected	2025-11-23 10:07:01.481134	c5baecc6-6adc-4c4a-a1ce-fdeb651b93ff	\N	ba39965d-dcda-4f96-bbee-558c8638a58a	2025-11-18 10:07:01.483775	2025-11-18 10:07:01.483777	01K920FBZBT9NE8WRP8BQSHSBQ	128	{}
urn:SAMA:kac-de10f16c-e0ae-4783-b764-0b148af38c38	arbnew	OBLAB	OBLAB	OPEN_BANKING	2026-11-17 10:21:19.433705	connected	2025-11-23 10:22:09.241568	9444aed4-b24f-45be-9d4d-d7c1c5aed0ae	\N	2da8b82c-1f8e-416b-b73c-e7a548f4892f	2025-11-18 10:22:09.243467	2025-11-18 10:22:09.243469	01K920FBZBT9NE8WRP8BQSHSBQ	129	{}
urn:SAMA:kac-28f65a5f-154a-4635-aea1-5535f21db34c	HGFDST	OBLAB	OBLAB	OPEN_BANKING	2026-11-17 12:21:05.015475	connected	2025-11-23 12:21:45.819613	2ea26806-cf3b-4788-8388-eac4c46e7ef5	\N	7a4c2af1-685a-4a28-aeb4-56b443260f20	2025-11-18 12:21:45.821616	2025-11-18 12:21:45.821618	01K920FBZBT9NE8WRP8BQSHSBQ	130	{}
urn:SAMA:kac-94236167-8601-4c4b-97ba-27ee4e8f77d9	AVG-1201579701	OBLAB	OBLAB	OPEN_BANKING	2026-11-17 12:34:23.379477	connected	2025-11-23 12:35:34.564106	5d8bdf3b-d831-436e-9569-a035c33b5676	\N	761947b6-edbb-4b50-949b-3e808dcb3bad	2025-11-18 12:35:34.568128	2025-11-18 12:35:34.56813	01K9PVDCNZ9FZ33PFSWJK6ASFR	135	{}
urn:SAMA:kac-a671cf72-79ef-41f7-b76a-943e93fecbe1	1200474706	OBLAB	OBLAB	OPEN_BANKING	2026-11-18 08:55:14.312807	connected	2025-11-24 08:56:42.798326	1e5f0e2a-c0a3-4c2b-802f-1d0f6ef3f38e	\N	3b8a59ce-c30f-4fcc-bbab-89ff92c36224	2025-11-19 08:56:42.806873	2025-11-19 08:56:42.806876	01K9PVDCNZ9FZ33PFSWJK6ASFR	139	{}
urn:SAMA:kac-889230aa-788b-4303-8745-b8583b6fdc9a	1093595507	OBLAB	OBLAB	OPEN_BANKING	2026-11-18 12:35:07.226522	connected	2025-11-24 12:35:58.948012	aac0234f-6f4e-4183-9222-2a5a614e1995	\N	5b7b0292-59d7-4e99-b63c-5e0aad20debe	2025-11-19 12:35:58.950572	2025-11-19 12:35:58.950574	01K9PVDCNZ9FZ33PFSWJK6ASFR	141	{}
urn:SAMA:kac-f71b2b34-a876-43ba-8f55-a8c9a9e54765	oblabarb	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 08:35:17.072872	connected	2025-11-25 08:36:09.83439	35de417b-3768-4025-94c4-7d813f1f3e45	\N	3f19ff79-c084-4a66-a917-d0380c7e85af	2025-11-20 08:36:09.837108	2025-11-20 08:36:09.83711	01K9PVDCNZ9FZ33PFSWJK6ASFR	142	{}
urn:SAMA:kac-77d1f459-26a0-468c-9dda-79208491ccf3	oblabarb2	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 08:41:28.338313	connected	2025-11-25 08:41:59.722191	f3b21a55-c140-405b-9ac5-475021b89560	\N	37b1963e-cde6-49d5-8b83-6eafd7f572da	2025-11-20 08:41:59.724097	2025-11-20 08:41:59.724099	01K9PVDCNZ9FZ33PFSWJK6ASFR	143	{}
urn:SAMA:kac-b667e3bd-3edc-4f14-ae2f-83f94571dc7f	oblabarb3	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 09:30:43.624972	connected	2025-11-25 09:31:30.446543	a7108f69-8ed7-4b8b-aabf-e9684b03043c	\N	b5939f05-bb39-4033-9443-3a6aa49f52bf	2025-11-20 09:31:30.448033	2025-11-20 09:31:30.448035	01K9PVDCNZ9FZ33PFSWJK6ASFR	144	{}
urn:SAMA:kac-2142f4eb-accf-4eb2-85dc-ea164da271bb	majidoblab	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 09:40:04.298149	connected	2025-11-25 09:40:31.147533	cc575b80-4079-4e17-9af3-bcef57674871	\N	142a6ef9-7e3a-41ac-a38e-07c645272c77	2025-11-20 09:40:31.150425	2025-11-20 09:40:31.150427	01K9PVDCNZ9FZ33PFSWJK6ASFR	145	{}
urn:SAMA:kac-5e7e13a6-7326-4f74-bb0b-4416015c1a85	test2	OBLAB	OBLAB	OPEN_BANKING	2026-11-12 12:49:05.060112	connected	2025-12-15 13:08:34.115238	92bd9e45-6a3b-44ff-8b33-379ea8f0375e	\N	a1865248-07db-4c0b-bda8-485ddf33d2d1	2025-11-13 12:50:00.026764	2025-12-10 13:08:34.116228	01K920FBZBT9NE8WRP8BQSHSBQ	77	{}
urn:PASP:consent-6a9ba2ae-6187-4d8e-9a6b-2451d8002843	AVG-1200967212	SAIB	SAIB	OPEN_BANKING	2026-11-30 13:57:03.631657	disconnected	2025-12-06 13:57:37.813115	2126cd54-8ed0-49cb-973f-538a10755ccb	\N	bc41762b-15a7-423c-bfe3-faa8dcb37746	2025-12-01 13:57:37.814378	2025-12-30 09:30:00.064241	01K9PVDCNZ9FZ33PFSWJK6ASFR	325	{}
urn:SAMA:kac-d9ed968f-edb4-44e8-b902-a3a2ad33de81	1093595518	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 12:58:58.608468	connected	2025-11-25 13:01:25.62596	d1a6ac41-7988-4db3-ae86-d6ecb0e5f226	\N	72e6f9a7-02e3-44ab-b179-5e2275893aa7	2025-11-20 13:01:25.627338	2025-11-20 13:01:25.627341	01K9PVDCNZ9FZ33PFSWJK6ASFR	157	{}
urn:SAMA:kac-7c854ac1-0630-4494-ae4d-19004a850300	1093595519	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 13:01:45.929496	connected	2025-11-25 13:02:31.841006	0d858707-509a-462d-b10f-f7a05404ee45	\N	861b8c62-9156-4c41-8b5b-950a95aa99f2	2025-11-20 13:02:31.842388	2025-11-20 13:02:31.84239	01K9PVDCNZ9FZ33PFSWJK6ASFR	158	{}
urn:SAMA:kac-2958f369-77f1-4b7e-a1de-feae7d02418c	neotektest2	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 13:01:58.449006	connected	2025-11-25 13:02:37.4039	308200a7-ef37-47f0-899c-e1a0ba3332a7	\N	35ea3129-e0d5-4657-abe9-b20655d487b1	2025-11-20 13:02:37.405376	2025-11-20 13:02:37.405379	01K9PVDCNZ9FZ33PFSWJK6ASFR	159	{}
urn:SAMA:kac-84c33dd5-e6c7-4629-ae87-90eced9325ab	1093595520	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 13:04:03.301563	connected	2025-11-25 13:04:43.424701	54b0557e-5102-41c4-9d48-173d2da1c83e	\N	8bc1ceeb-44fd-4839-922a-15f4e00161c1	2025-11-20 13:04:43.42599	2025-11-20 13:04:43.425992	01K920FBZBT9NE8WRP8BQSHSBQ	160	{}
urn:SAMA:kac-adea57d4-6119-4b94-b917-a35508ce6fe9	neotektest3	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 13:04:46.400314	connected	2025-11-25 13:05:31.467162	728f292c-7f82-4d1d-8bd3-45ca98c30136	\N	1cafe764-b4a3-4b44-899c-8b6e07ea9543	2025-11-20 13:05:31.468607	2025-11-20 13:05:31.468609	01K9PVDCNZ9FZ33PFSWJK6ASFR	161	{}
urn:SAMA:kac-ada74066-a2f1-4536-a01d-c7a8f2ae9c63	1093595512	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 13:05:31.559693	connected	2025-11-25 13:06:46.849867	2d974328-a880-4753-a6e7-812246871be6	\N	9ba6a880-abc4-4910-a8b8-2934c0c4d473	2025-11-20 13:06:46.851079	2025-11-20 13:06:46.851081	01K9PVDCNZ9FZ33PFSWJK6ASFR	162	{}
urn:SAMA:kac-15a3d7ed-688c-4342-af38-8240b8bc348c	neotektest4	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 13:27:21.610864	connected	2025-11-25 13:28:26.189265	04b6537b-66d9-4f78-8f7c-af1d15d622b4	\N	d0a163da-9355-4fd0-a080-ea825e25faf3	2025-11-20 13:28:26.190664	2025-11-20 13:28:26.190666	01K9PVDCNZ9FZ33PFSWJK6ASFR	164	{}
urn:PASP:consent-8533d51f-464e-4fd5-8cc3-9b0822bb3ba8	1093595516	SAIB	SAIB	OPEN_BANKING	2026-11-19 14:44:38.329644	failed	2025-11-25 14:57:29.749997	fb7883b2-02fb-4237-b2b5-aa9311ec9f4b	\N	f386e652-ee16-4f21-bd3e-439c61e7ea48	2025-11-20 14:57:29.751436	2025-11-20 14:57:29.823102	01K9PVDCNZ9FZ33PFSWJK6ASFR	166	{}
urn:SAMA:kac-09612257-0c92-4d81-8acb-29150e48842b	neotektest01	OBLAB	OBLAB	OPEN_BANKING	2026-11-22 09:32:08.728531	connected	2025-11-28 09:32:42.58915	b61fdc31-8809-4f2b-8cd6-406088a03b45	\N	d85f5357-2041-4e41-9a0e-f6fc117d4b3e	2025-11-23 09:32:42.5905	2025-11-23 09:32:42.590502	01K9PVDCNZ9FZ33PFSWJK6ASFR	175	{}
urn:PASP:consent-82e57092-1f32-4b37-8d8f-fa0c2db9d488	1093595528	SAIB	SAIB	OPEN_BANKING	2026-11-22 10:59:15.669771	failed	2025-11-28 11:00:12.508757	09634cf1-0e51-41d6-9c4a-79b790ea7b95	\N	94073a41-d177-4a91-a002-145ef8813a79	2025-11-23 11:00:12.510414	2025-11-23 11:00:12.562956	01K9PVDCNZ9FZ33PFSWJK6ASFR	184	{}
urn:PASP:consent-afe944a5-c11c-452e-a2d3-c71dac43b90c	1093595529	SAIB	SAIB	OPEN_BANKING	2026-11-22 11:00:24.373027	failed	2025-11-28 11:01:11.897434	99a57874-4524-48b5-a848-bbdebfd86cd3	\N	58aa6077-c496-4c9e-96d8-4d63916cb570	2025-11-23 11:01:11.898851	2025-11-23 11:01:11.951914	01K9PVDCNZ9FZ33PFSWJK6ASFR	185	{}
urn:SAMA:kac-70e08304-deb4-429f-a4fc-d6d77e413c18	khaliddrahim	OBLAB	OBLAB	OPEN_BANKING	2026-11-19 12:02:05.772413	connected	2025-11-30 14:42:32.807745	21103ba2-cf2c-4811-8c17-606b8c841539	\N	97de1997-9406-416d-a61e-daad6b2d3d9e	2025-11-20 12:02:53.039814	2025-11-25 14:42:32.811691	01K9PVDCNZ9FZ33PFSWJK6ASFR	147	{}
urn:PASP:consent-93a61296-e940-4054-a0e9-3ea17ead4329	1093595536	SAIB	SAIB	OPEN_BANKING	2026-11-22 12:37:14.822268	failed	2025-11-28 12:38:14.760675	e46437ca-7f31-4c29-aab2-4659242ac715	\N	8b4bb6f7-ad0e-4e5c-ab3a-9e3d4558e3e5	2025-11-23 12:38:14.761969	2025-11-23 12:38:14.80427	01K9PVDCNZ9FZ33PFSWJK6ASFR	191	{}
urn:PASP:consent-dd072902-d166-411e-adec-c1d61c971b90	acctest036	SAIB	SAIB	OPEN_BANKING	2027-01-31 08:40:28.320757	connected	2026-02-06 08:41:28.535789	6c718adf-bc67-43bd-92f4-4cbeb32967bb	\N	b14e3d6b-165f-4feb-a052-fafe5e979ff2	2026-02-01 08:41:28.537214	2026-02-01 08:41:28.537216	01K920FBZBT9NE8WRP8BQSHSBQ	688	{}
urn:PASP:consent-18885c5e-f7ad-4a1a-8175-fce900980e7c	1201604103	SAIB	SAIB	OPEN_BANKING	2027-01-18 07:52:50.250319	connected	2026-01-24 07:53:29.733253	24edcdff-0c24-4d55-81b6-45b99b628a7a	\N	6d57fda3-7aca-49ee-852f-dd003c19baee	2026-01-19 07:53:29.735008	2026-01-19 07:53:32.556891	01K9PVDCNZ9FZ33PFSWJK6ASFR	518	{"profile_accounts_link": {"PSUId": "1201604103", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "518", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-100c6a7d-1321-4f8c-9eca-6774ddca953b	acctest038	SAIB	SAIB	OPEN_BANKING	2027-01-31 08:47:04.836017	connected	2026-02-06 08:51:36.530447	5d45bdab-5428-4b1c-b80d-a3be86155dfb	\N	b4befcce-55db-487f-9600-90b2a618cb24	2026-02-01 08:51:36.531818	2026-02-01 08:51:36.53182	01K920FBZBT9NE8WRP8BQSHSBQ	690	{}
urn:PASP:consent-d7c588c8-5acd-4f34-9ee9-ae3914b2fad0	3014	SAIB	SAIB	OPEN_BANKING	2027-01-18 09:56:49.566015	connected	2026-01-24 10:03:34.577025	c16184f5-07e4-4691-95e3-bbd21e6bf0f1	\N	44722a19-e6a8-4a1b-ac62-c9710fa73ac1	2026-01-19 10:03:34.578331	2026-01-19 10:03:34.578333	01KFAT7DVYCQTGRM04154XZG4N	538	{}
urn:PASP:consent-7502ba62-840f-400a-b419-7fea70ea2ac2	John	SAIB	SAIB	OPEN_BANKING	2026-12-06 09:16:57.517938	connected	2025-12-12 09:17:50.373486	a2a2c30c-9e35-4d6b-af2b-588050e43dcb	\N	b3eb936f-41f6-4860-9251-c59cd927d510	2025-12-07 09:17:50.376245	2025-12-07 09:17:50.376248	01K9PVDCNZ9FZ33PFSWJK6ASFR	343	{}
urn:SAMA:kac-eea61d4f-b5a7-4e6c-b3b9-cf306dad749e	Johnoblab	OBLAB	OBLAB	OPEN_BANKING	2026-12-06 09:21:34.571337	connected	2025-12-12 09:22:16.876332	ce0112b5-27d9-4c36-bb73-6fa11441e69d	\N	7e78d8b1-ca8b-4a05-9e19-e53e97be11ff	2025-12-07 09:22:16.878076	2025-12-07 09:22:16.878078	01K9PVDCNZ9FZ33PFSWJK6ASFR	344	{}
urn:PASP:consent-1a4f6af1-25ee-48c4-84db-7ba3d8a99501	doeirihd	SAIB	SAIB	OPEN_BANKING	2026-12-10 13:58:03.719882	connected	2025-12-16 14:00:06.027871	27915a13-c3e0-497b-a840-c0593cf169ab	\N	9fee033b-766b-4c62-a40d-90725b7d62f9	2025-12-11 14:00:06.032329	2025-12-11 14:00:06.032332	01K9PVDCNZ9FZ33PFSWJK6ASFR	367	{}
urn:SAMA:kac-d0dd6360-110f-4f9c-a892-de83ee054681	testpdf2	OBLAB	OBLAB	OPEN_BANKING	2026-12-13 09:44:14.175332	connected	2025-12-19 09:45:02.714674	b793b002-a397-41f9-9f73-33eac8345db8	\N	eacaaec9-71a1-4b70-b327-4480d70da2ed	2025-12-14 09:45:02.716082	2025-12-14 09:45:02.716084	01K9PVDCNZ9FZ33PFSWJK6ASFR	381	{}
urn:SAMA:kac-234156b3-8225-478e-9fd8-e19d9aedd15b	MakkiOblab	OBLAB	OBLAB	OPEN_BANKING	2026-12-13 14:26:18.179092	connected	2025-12-19 14:27:01.900861	aab104c6-69bb-425c-a7c1-5367b532fa35	\N	042f43a4-fd54-40ca-9b1b-f3f04c3f8e8b	2025-12-14 14:27:01.902253	2025-12-14 14:27:01.902256	01K9PVDCNZ9FZ33PFSWJK6ASFR	396	{}
urn:SAMA:kac-335ef8a3-136a-472d-a3f3-84ab4e0f315a	BEN-1712414695	OBLAB	OBLAB	OPEN_BANKING	2026-11-26 12:21:21.23437	disconnected	2025-12-15 12:58:25.738496	0b0132a2-20d3-46b9-a2de-6dc71f2b5741	\N	7ef3968b-3804-4e9a-9872-9991c7b876d4	2025-11-27 12:23:43.415665	2025-12-30 09:30:00.046706	01K9PVDCNZ9FZ33PFSWJK6ASFR	305	{}
urn:PASP:consent-184fc439-5ae2-4ac4-99fb-812d9b212a16	1201565999	SAIB	SAIB	OPEN_BANKING	2027-01-19 07:39:19.671403	connected	2026-01-25 07:39:54.031871	a64a7c73-3097-4780-8cf8-0929c2352449	\N	8911b446-800a-47ff-a604-f24cc4b053f1	2026-01-20 07:39:54.0333	2026-01-20 07:39:56.330329	01K9PVDCNZ9FZ33PFSWJK6ASFR	555	{"profile_accounts_link": {"PSUId": "1201565999", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "555", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-b0269093-1ed2-4c5b-bef5-d5fff8e84560	1234567891	SAIB	SAIB	OPEN_BANKING	2027-01-18 10:15:13.059121	disconnected	2026-01-24 10:15:49.467417	13d7a70f-9994-415e-9ba7-d40040013ebe	\N	6b402bf7-b260-42be-bb45-1fa5f480ad6b	2026-01-19 10:15:49.468819	2026-01-21 10:30:00.048832	01KAX1H32WAWVBSWAN4BQBDSET	542	{}
urn:PASP:consent-6c04e894-6e41-495d-9c08-e43ee68324e7	craccount2	SAIB	SAIB	OPEN_BANKING	2027-01-10 08:44:42.978226	connected	2026-01-16 08:45:33.899941	2569d431-3ec4-4cdf-b5b9-a1e18f37805c	\N	55d9d3b6-96af-4207-85c1-cd7cc790f977	2026-01-11 08:45:33.901468	2026-01-11 08:45:33.90147	01K920FBZBT9NE8WRP8BQSHSBQ	435	{}
urn:PASP:consent-075e504d-100e-40fb-81c9-fe4696528cc7	696e3e16e8d47c225a94bca1	SAIB	SAIB	OPEN_BANKING	2027-01-18 14:25:36.72749	disconnected	2026-01-24 14:26:06.758775	270abb6a-2a49-4eae-b34a-1a4752d413d9	\N	483d5b0b-6453-4b0b-afa9-4a11208588bb	2026-01-19 14:26:06.760401	2026-01-21 14:30:00.043157	01KFB1GSTPDXYX6P7YHYR5EXCF	553	{}
urn:PASP:consent-a181eb33-0cc1-49fb-8f5a-28700a21047b	696f9a2aa5a80766ee37b9c4	SAIB	SAIB	OPEN_BANKING	2027-01-19 15:17:58.069646	disconnected	2026-01-25 15:18:23.939878	b1235c1d-93d9-42a9-8c19-595f1e42277a	\N	4c1abbfb-e8fb-48bf-b36f-bec4315d74c9	2026-01-20 15:18:23.94111	2026-01-22 15:30:00.039059	01KFDYQD5MBZPZ8QBQM7CKVT4V	564	{}
urn:PASP:consent-ad276676-58cb-47ee-b987-1a74aa1888b6	694aa8aadd8c7f10ccf9d156	SAIB	SAIB	OPEN_BANKING	2027-01-20 16:35:45.403417	disconnected	2026-01-26 16:36:08.270755	d5ab880b-80ce-4e93-8de5-d5d48ee98511	\N	d59adb3f-e428-4fcf-9a21-f5802eaa4ac3	2026-01-21 16:36:08.272041	2026-01-23 17:30:00.044787	01KFG3WZVG4J9CRS0GBXJRV7ZX	580	{}
urn:PASP:consent-d353e897-524d-4c03-8c6c-c177ce02b1dc	6971fbc62246978b2d7b4bc7	SAIB	SAIB	OPEN_BANKING	2027-01-21 10:43:11.899056	disconnected	2026-01-27 10:44:17.216571	4646b0f0-f955-4043-8b56-e7b476e9de57	\N	e0439c23-a644-4da7-8ee2-c55891eb6947	2026-01-22 10:44:17.218691	2026-01-24 11:30:00.035002	01KFG3WZVG4J9CRS0GBXJRV7ZX	596	{}
urn:PASP:consent-19c14c6f-1577-445d-a84d-dec74b7b5646	accttest01	SAIB	SAIB	OPEN_BANKING	2027-01-25 12:09:26.895384	connected	2026-01-31 12:09:49.80642	d1432064-5ad0-48c3-8d1f-8cb63bf50cc6	\N	e3b81501-110a-4ecb-9c04-6a6d327e9ded	2026-01-26 12:09:49.807869	2026-01-26 12:09:49.807871	01K920FBZBT9NE8WRP8BQSHSBQ	625	{}
urn:SAMA:kac-2fb7eb0f-1a27-4e67-a0eb-c50e63472f16	9923384-001	OBLAB	OBLAB	OPEN_BANKING	2027-01-25 16:24:04.769044	connected	2026-01-31 16:25:06.602343	9984318e-5f54-494c-ae9d-61d163418600	\N	8be43f33-4450-4a2c-b227-26cbc821edd4	2026-01-26 16:25:06.603968	2026-01-26 16:25:06.603971	01K920FBZBT9NE8WRP8BQSHSBQ	628	{}
urn:PASP:consent-6093b331-1a23-49d6-bb6a-4f32969d15e7	697611cd0135bd45e45ccac4	SAIB	SAIB	OPEN_BANKING	2027-01-24 12:54:20.910874	disconnected	2026-01-30 12:55:27.329691	1167b021-60dc-48bc-a206-5876d9c508dc	\N	616930f4-3fba-4404-b54a-5fe67a3ddbdb	2026-01-25 12:55:27.331077	2026-01-27 13:30:00.024147	01KFG3WZVG4J9CRS0GBXJRV7ZX	601	{}
urn:PASP:consent-5b568e93-c0c8-4b69-88e7-fe17f707e663	69761ed10135bd45e45ce4ec	SAIB	SAIB	OPEN_BANKING	2027-01-24 13:50:00.502802	disconnected	2026-01-30 13:51:47.391699	3e162dcd-c02c-45ff-905e-beb584e95195	\N	7e3c7863-2aa0-4c18-aab3-13edef1b2f4e	2026-01-25 13:51:47.39363	2026-01-27 14:30:00.022686	01KFG3WZVG4J9CRS0GBXJRV7ZX	606	{}
urn:PASP:consent-a4b160e8-5a7d-44cc-b5be-7d5acf1b21d0	69774fe8d03e7bf560e02b1b	SAIB	SAIB	OPEN_BANKING	2027-01-25 11:31:02.972712	disconnected	2026-01-31 11:34:19.075477	6aa291d5-1fa4-40ce-8055-ab21938cbc16	\N	cde7aecf-ae1e-4b3a-850b-6d71bb01ebc1	2026-01-26 11:34:19.07734	2026-01-28 12:30:00.02179	01KFG3WZVG4J9CRS0GBXJRV7ZX	621	{}
urn:SAMA:kac-32a95028-c2e3-4588-aa42-675b7e9f1b22	neotektest	OBLAB	OBLAB	OPEN_BANKING	2026-11-24 07:34:20.069253	connected	2025-12-16 14:41:55.424972	508b56de-3509-4ebf-a1bf-78869ac95681	\N	e502719f-e039-4de8-b9aa-09f1653fd37a	2025-11-25 07:35:51.665939	2025-12-11 14:41:55.425795	01K9PVDCNZ9FZ33PFSWJK6ASFR	228	{}
urn:PASP:consent-f6a068c5-e346-4827-abff-f2283e875e20	1093595537	SAIB	SAIB	OPEN_BANKING	2026-11-22 13:07:30.631451	failed	2025-11-28 13:08:14.839666	cfa0b6e3-a4f0-45b1-8cea-7b554b387b27	\N	235cb4c3-0a18-476b-b420-415ec9363005	2025-11-23 13:08:14.840952	2025-11-23 13:08:14.913972	01K9PVDCNZ9FZ33PFSWJK6ASFR	195	{}
urn:PASP:consent-8bf86544-70ba-4346-a18d-19f26a60d4db	AVG-1200967220	SAIB	SAIB	OPEN_BANKING	2026-11-25 14:18:49.071287	disconnected	2025-12-01 14:19:53.777518	99c4d331-9141-4077-a5e4-44a6640e6dfc	\N	2220eac4-c8fe-4e51-8046-4225962e2d9d	2025-11-26 14:19:53.779146	2025-12-30 09:30:00.032373	01K9PVDCNZ9FZ33PFSWJK6ASFR	286	{}
urn:PASP:consent-fa873cf8-9eeb-45fc-9273-0e7b6ce08d06	acctest040	SAIB	SAIB	OPEN_BANKING	2027-01-31 09:00:11.085995	connected	2026-02-06 09:00:28.230838	cbb5f8c5-0651-43b2-9aa0-13c693a662b3	\N	4cd11798-54e7-4298-bf03-4120ae36e1d6	2026-02-01 09:00:28.23223	2026-02-01 09:00:28.232233	01K920FBZBT9NE8WRP8BQSHSBQ	692	{}
urn:PASP:consent-52304492-6a73-4df6-8278-e497c630a3e3	1093595538	SAIB	SAIB	OPEN_BANKING	2026-11-23 08:44:54.603292	connected	2025-11-29 08:45:54.789667	1963618d-2292-4043-a892-72ca26dc0253	\N	980e7c37-9993-4569-a96e-7c38db0352f9	2025-11-24 08:45:54.791011	2025-11-24 08:45:54.791013	01K9PVDCNZ9FZ33PFSWJK6ASFR	207	{}
urn:PASP:consent-e8def964-a8a7-4d15-a5af-866cc85abd96	1093595539	SAIB	SAIB	OPEN_BANKING	2026-11-23 08:47:53.641516	connected	2025-11-29 08:51:08.579184	4bd2548f-b239-490f-9225-1ba15fb62970	\N	89b1fc2c-2c3e-4085-b65f-b69be26e996e	2025-11-24 08:51:08.581617	2025-11-24 08:51:08.58162	01K9PVDCNZ9FZ33PFSWJK6ASFR	208	{}
urn:PASP:consent-c17b5261-9a98-4afd-9a91-332b7271704c	1132784917	SAIB	SAIB	OPEN_BANKING	2027-01-18 08:01:27.723947	connected	2026-01-24 08:02:12.772358	fa8238b1-a561-4987-adde-0c94e1b46109	\N	d973509a-bd20-4f2d-b012-aa3f6b9d8242	2026-01-19 08:02:12.774442	2026-01-19 08:02:16.250374	01K9PVDCNZ9FZ33PFSWJK6ASFR	519	{"profile_accounts_link": {"PSUId": "1132784917", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "519", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:SAMA:kac-5f5dc937-2a1b-43a9-afc1-0debedb35899	AVG-1200928842	OBLAB	OBLAB	OPEN_BANKING	2026-11-23 14:29:42.712724	connected	2025-11-29 14:30:43.223364	9f8a4483-7f06-4d7d-9652-a9284865b4a5	\N	06906bcf-8585-4af9-bd46-8d26989631f8	2025-11-24 14:30:43.225002	2025-11-24 14:30:43.225004	01K9PVDCNZ9FZ33PFSWJK6ASFR	224	{}
urn:PASP:consent-0be6f0b2-67b7-41ac-a930-b1a63a8ee6f3	696cb5dee5352e6adb677dd4	SAIB	SAIB	OPEN_BANKING	2027-01-17 11:23:57.025495	disconnected	2026-01-23 11:24:20.599668	b1ac379e-8bbc-4d1c-b188-f31f5c66378f	\N	d0847a2a-05fe-4b19-8405-2ce1779e4f87	2026-01-18 11:24:20.600989	2026-01-20 11:30:00.029586	01KF8D2HVXK1Y8R5HMWKQ3JM36	515	{}
urn:SAMA:kac-82e9e7d0-ffaa-48a1-a478-9e29630148b5	AVG-1200967220	OBLAB	OBLAB	OPEN_BANKING	2026-11-24 10:13:09.533729	connected	2025-11-30 10:14:33.338492	0c52a6e7-d34c-4474-9a6d-edc7d101f7a3	\N	1eb6991b-6c95-4fcc-99aa-09826d65bd93	2025-11-25 10:14:33.339796	2025-11-25 10:14:33.339798	01K9PVDCNZ9FZ33PFSWJK6ASFR	233	{}
urn:PASP:consent-607985c0-6204-4276-98c7-7de41c09de85	10	SAIB	SAIB	OPEN_BANKING	2026-11-24 12:27:38.6381	connected	2025-11-30 12:28:42.713255	63086738-8881-468d-8370-f69fc06c8b2b	\N	ff4271cd-7fcf-476e-a975-668254ce6000	2025-11-25 12:28:42.716162	2025-11-25 12:28:42.716164	01K9PVDCNZ9FZ33PFSWJK6ASFR	237	{}
urn:PASP:consent-94b97b79-b7f0-4135-96eb-86b2cb5c166d	696df6dd68bcc4d15d58d7f6	SAIB	SAIB	OPEN_BANKING	2027-01-18 09:45:05.520318	disconnected	2026-01-24 09:45:46.257215	8f30f078-1000-4ba1-ae37-ccc3c219e223	\N	5744b123-1d71-4ede-b676-a4da77b8651a	2026-01-19 09:45:46.258457	2026-01-21 10:30:00.022007	01KF8D2HVXK1Y8R5HMWKQ3JM36	531	{}
urn:PASP:consent-0f4bf274-04b6-479c-ac1a-796abeae79d6	4	SAIB	SAIB	OPEN_BANKING	2026-11-24 13:15:02.834456	connected	2025-11-30 13:20:23.096113	c2b4d489-7849-411d-a0a3-51fdd5b110f7	\N	e0a1fce0-e578-4558-8b0b-f69e555978c0	2025-11-25 13:20:23.09737	2025-11-25 13:20:23.097372	01K9PVDCNZ9FZ33PFSWJK6ASFR	244	{}
urn:PASP:consent-f102d63f-54f9-4df0-94ac-8b86451abd82	12	SAIB	SAIB	OPEN_BANKING	2026-11-25 07:46:32.792131	connected	2025-12-01 07:48:19.248689	7028919c-4eb1-4a71-9430-1a340d321225	\N	9026ca0c-7580-4427-ab38-906a48ed099a	2025-11-26 07:48:19.25055	2025-11-26 07:48:19.250552	01K9PVDCNZ9FZ33PFSWJK6ASFR	255	{}
urn:PASP:consent-5f1a404a-e904-45c7-9281-80022711f4f2	694a9904dd8c7f10ccf9ba3e	SAIB	SAIB	OPEN_BANKING	2027-01-20 17:36:04.467998	disconnected	2026-01-26 17:37:10.095279	679b2772-97bb-497d-873e-0d716a025a3a	\N	67dcdf25-f055-4512-bb7b-6973a14e4264	2026-01-21 17:37:10.105899	2026-01-23 18:30:00.023304	01KFG3WZVG4J9CRS0GBXJRV7ZX	586	{}
urn:PASP:consent-de1a9d7f-e8e2-41b9-8fdb-12e65aec6f5c	16	SAIB	SAIB	OPEN_BANKING	2026-11-25 12:15:43.057315	connected	2025-12-01 14:08:02.436664	451678fe-5c50-4807-8daf-d0c5b7daa5cb	\N	b02b8c96-2495-49f8-95b7-ce9006fd93ac	2025-11-26 14:08:02.438597	2025-11-26 14:08:02.4386	01K9PVDCNZ9FZ33PFSWJK6ASFR	269	{}
urn:PASP:consent-5dfbb9ac-a251-486f-8d81-6d0db5748f52	3	SAIB	SAIB	OPEN_BANKING	2027-01-25 11:34:39.025575	connected	2026-01-31 11:35:08.457127	5612cb5c-c094-4713-aefa-9e568c5e2c1f	\N	437cfc0c-eb3c-4650-a355-f2c72c9a3977	2026-01-26 11:35:08.458972	2026-01-26 11:35:08.458994	01K7EQ30WFSAY41B4PP5RR6HWF	622	{}
urn:PASP:consent-7aac8339-5890-4d5b-9fdc-015bccd71b06	khalid-test	SAIB	SAIB	OPEN_BANKING	2027-01-25 13:52:32.698873	connected	2026-01-31 13:53:16.623015	7ec5f0da-2d22-4154-a1c0-3a8f07f0a5d5	\N	a0b04c63-0647-4788-ad8e-420f4f08689a	2026-01-26 13:53:16.62615	2026-01-26 13:53:16.626154	01K920FBZBT9NE8WRP8BQSHSBQ	626	{}
urn:SAMA:kac-d6ce0e60-7be7-4158-958c-fb4804bd568c	19	OBLAB	OBLAB	OPEN_BANKING	2026-11-26 08:31:52.917776	connected	2025-12-02 08:33:12.976366	a39ef19b-0120-4e05-bbf0-387da3a08e55	\N	8a360670-25b6-4254-a0ee-a76be2cac03a	2025-11-27 08:33:12.977859	2025-11-27 08:33:12.977873	01K9PVDCNZ9FZ33PFSWJK6ASFR	291	{}
urn:PASP:consent-410a0724-61c1-4ad4-8c3b-c32743ce6c7f	IGNORE-NEOTETEST	SAIB	SAIB	OPEN_BANKING	2026-11-26 10:22:47.59168	connected	2025-12-02 10:25:12.853089	0dc46315-77ae-4dd9-b7b0-b1bf10ab89c9	\N	d660de24-3647-472e-b18d-8a9af6fc850b	2025-11-27 10:25:12.854632	2025-11-27 10:25:12.854634	01K9PVDCNZ9FZ33PFSWJK6ASFR	293	{}
urn:PASP:consent-204c653a-c56a-4c3d-937a-f5cd187db477	IGNORE-NEOTETEST2	SAIB	SAIB	OPEN_BANKING	2026-11-26 10:37:49.75537	connected	2025-12-02 10:38:41.470547	53af5145-0107-4452-b615-063347efdd95	\N	aad0e70c-c1b5-4bc6-a207-d6d591688bb4	2025-11-27 10:38:41.471941	2025-11-27 10:38:41.471944	01K9PVDCNZ9FZ33PFSWJK6ASFR	295	{}
urn:PASP:consent-855afe58-539b-4d8c-b4c6-b318fc79cc52	IGNORE-NEOTETEST3	SAIB	SAIB	OPEN_BANKING	2026-11-26 10:42:48.226259	connected	2025-12-02 10:43:27.744719	90195a9a-7386-4671-b61d-b6cd201c207c	\N	1b56155f-b303-4c6f-addf-284b4df06462	2025-11-27 10:43:27.746391	2025-11-27 10:43:27.746394	01K9PVDCNZ9FZ33PFSWJK6ASFR	296	{}
urn:PASP:consent-cd05d5c7-3826-405b-8d16-ef4d8ea945c6	acctest041	SAIB	SAIB	OPEN_BANKING	2027-01-31 09:02:54.775822	connected	2026-02-06 09:03:20.44727	d8183d85-4d77-49c9-970e-334df8eaf137	\N	eebe99a9-9dd5-47a0-b584-b51e965d8050	2026-02-01 09:03:20.449125	2026-02-01 09:03:20.449128	01K920FBZBT9NE8WRP8BQSHSBQ	693	{}
urn:PASP:consent-dcf2c862-bf1c-4500-881d-a474ee33dcd8	acctest042	SAIB	SAIB	OPEN_BANKING	2027-01-31 09:14:57.657278	connected	2026-02-06 09:15:14.59497	4b071746-1b55-40bd-96e8-1aa5318bb78f	\N	6155feb9-dce7-4423-a0a5-1d71f9558f75	2026-02-01 09:15:14.596708	2026-02-01 09:15:14.596711	01K920FBZBT9NE8WRP8BQSHSBQ	694	{}
urn:PASP:consent-f49d34d8-4970-4c42-b30a-887c8e09348b	acctest046	SAIB	SAIB	OPEN_BANKING	2027-01-31 11:27:04.501695	connected	2026-02-06 11:27:49.654203	492d5b73-e396-478d-9ada-c84007848e97	\N	8f2b9660-d979-4c1e-8312-d3f29a28298a	2026-02-01 11:27:49.655447	2026-02-01 11:27:49.655449	01K920FBZBT9NE8WRP8BQSHSBQ	699	{}
urn:PASP:consent-ae61b559-f113-4c02-bd31-a37b856d73f7	696e1b67640832e3ee7e8e37	SAIB	SAIB	OPEN_BANKING	2027-01-18 11:55:39.067181	disconnected	2026-01-24 11:56:05.699334	f88ed298-89db-4f64-bc37-cc1e2c1545bf	\N	c96e907f-be1d-4385-a280-27bf229d7342	2026-01-19 11:56:05.700667	2026-01-21 12:34:44.42425	01KFB1GSTPDXYX6P7YHYR5EXCF	545	{}
urn:PASP:consent-28202174-8319-41c8-88d6-0f4e349fd66f	acctest049	SAIB	SAIB	OPEN_BANKING	2027-01-31 11:29:32.676432	connected	2026-02-06 11:30:24.436825	c19cef06-9441-4975-a3f5-454b14c374df	\N	cf75f543-6a0a-418b-8d6e-08a12303811d	2026-02-01 11:30:24.438321	2026-02-01 11:30:24.438323	01K920FBZBT9NE8WRP8BQSHSBQ	702	{}
urn:PASP:consent-510b0ca2-734e-4c30-a0ea-4a5380455cf1	1313131452	SAIB	SAIB	OPEN_BANKING	2027-01-20 14:41:07.969859	connected	2026-01-27 08:25:46.705443	4db56051-7866-4d33-a299-3c1a933eec4d	\N	0988dfd9-bac2-480d-b48d-b32decfa92cd	2026-01-22 08:25:46.707028	2026-01-22 08:25:46.707031	01KBCSPH72RCZCRNMNSH0SC3CR	577	{}
urn:PASP:consent-41161b96-6459-4af9-b65d-d60abedb53b3	6971dfa89e218f878d80a4ca	SAIB	SAIB	OPEN_BANKING	2027-01-21 08:32:36.674121	disconnected	2026-01-27 08:33:51.708758	efbac947-9f24-4f64-976c-28aaaf5b31cc	\N	8f15ddc0-4051-4059-8804-dda22a66e1e2	2026-01-22 08:33:51.711421	2026-01-24 09:30:00.021171	01KFG3WZVG4J9CRS0GBXJRV7ZX	590	{}
urn:SAMA:kac-7aad0e2f-89dc-4ddb-b893-245427666a59	4566	OBLAB	OBLAB	OPEN_BANKING	2026-12-10 14:02:55.647754	connected	2025-12-16 14:03:37.793346	feaf16aa-d676-46e1-b76e-dbda9a03b1b2	\N	53f7007c-c709-461c-ac0f-97416832874a	2025-12-11 14:03:37.795383	2025-12-11 14:03:37.795385	01K9PVDCNZ9FZ33PFSWJK6ASFR	369	{}
urn:SAMA:kac-a6ad12c4-7e02-412b-b494-111b99b81281	obtest1	OBLAB	OBLAB	OPEN_BANKING	2026-12-10 14:21:18.708353	connected	2025-12-16 14:21:45.706315	830c9ec2-b3f7-478f-ad47-95f0deab7ab6	\N	ba90a9b5-5152-4e63-a8de-44e5a33b0a0a	2025-12-11 14:21:45.707723	2025-12-11 14:21:45.707725	01K9PVDCNZ9FZ33PFSWJK6ASFR	370	{}
urn:PASP:consent-d871219a-6ea6-4bb5-8b5a-54c0d8c734d7	acctest	SAIB	SAIB	OPEN_BANKING	2027-01-25 11:50:26.717225	connected	2026-01-31 11:50:44.664438	2a9346d0-af35-4afc-977a-fe75e6b54e37	\N	3dcc288b-8721-46ef-8d08-9e3682915c74	2026-01-26 11:50:44.666946	2026-01-26 11:50:44.666948	01K920FBZBT9NE8WRP8BQSHSBQ	624	{}
urn:SAMA:kac-482d57a8-f68d-48c8-8dd5-3a33c3589001	9923384	OBLAB	OBLAB	OPEN_BANKING	2027-01-25 16:15:20.560084	connected	2026-01-31 16:16:05.642071	dbe7ada5-16d3-4cc8-bb83-0b62d1ab2928	\N	4bcc0f69-7676-451b-a568-9068798b5efd	2026-01-26 16:16:05.643671	2026-01-26 16:16:05.643673	01K920FBZBT9NE8WRP8BQSHSBQ	627	{}
urn:PASP:consent-c9515ffc-d986-470a-a4d5-19d92273a32d	accttest02	SAIB	SAIB	OPEN_BANKING	2027-01-26 07:40:05.286312	failed	2026-02-01 07:40:30.434633	e43ea4bf-c5b0-46a6-a5c1-ad5bb620be39	\N	01098ca6-166a-4a54-8a51-23c84b98861d	2026-01-27 07:40:30.436484	2026-01-27 07:40:30.482331	01K920FBZBT9NE8WRP8BQSHSBQ	632	{}
urn:PASP:consent-ab237902-0dad-4f6f-9170-e02a662e5286	craccount	SAIB	SAIB	OPEN_BANKING	2026-12-28 06:31:20.447992	connected	2026-01-03 06:31:52.098758	97e71583-4cbc-4969-8808-b492f016b42e	\N	8417abf4-1b5a-4a95-bf4c-6310929c4f3d	2025-12-29 06:31:52.100142	2025-12-29 06:31:52.100144	01K920FBZBT9NE8WRP8BQSHSBQ	400	{}
urn:PASP:consent-ee933f47-cbed-4bf0-957f-ee18f0232566	AVG-1200936332	SAIB	SAIB	OPEN_BANKING	2026-11-26 16:29:40.066089	disconnected	2025-12-02 16:30:08.321757	b7fed616-5940-40b9-8a70-9ece0b96665f	\N	b2ab3f18-f181-49aa-8c13-08e9e1b8312f	2025-11-27 16:30:08.323543	2025-12-30 09:30:00.056065	01K9PVDCNZ9FZ33PFSWJK6ASFR	310	{}
urn:PASP:consent-d2855c6c-e211-4f32-a885-b747c08ad76d	aaa	SAIB	SAIB	OPEN_BANKING	2027-01-26 07:45:20.491976	failed	2026-02-01 07:45:51.063617	d2886b2f-db21-4482-b543-a815ad57abd6	\N	d172b20e-b424-4938-87c7-a70dd508be59	2026-01-27 07:45:51.06495	2026-01-27 07:45:51.113698	01K920FBZBT9NE8WRP8BQSHSBQ	635	{}
urn:PASP:consent-5f084376-4cbc-4678-9d37-205a34fba792	craccount3	SAIB	SAIB	OPEN_BANKING	2027-01-10 08:47:07.784106	connected	2026-01-16 08:47:30.578909	b9abdab7-1d24-4716-9844-98d720330fba	\N	b907beb0-b5eb-400f-9e12-e79df5628a74	2026-01-11 08:47:30.580393	2026-01-11 08:47:30.580396	01K920FBZBT9NE8WRP8BQSHSBQ	436	{}
urn:PASP:consent-d59173a1-7dd7-4bf9-96b0-463816fe3d71	test1	SAIB	SAIB	OPEN_BANKING	2027-01-13 14:08:46.866062	connected	2026-01-19 14:09:21.061661	9306415a-9267-495d-8f53-5a2ae3032b74	\N	674b63af-6a96-4908-9a96-a21bf2be9b7b	2026-01-14 14:09:21.063172	2026-01-14 14:09:21.063174	01K920FBZBT9NE8WRP8BQSHSBQ	469	{}
urn:PASP:consent-ada8ee10-ee7f-461b-99a0-47a6fa5717b2	697748b2d03e7bf560e01b8a	SAIB	SAIB	OPEN_BANKING	2027-01-25 10:59:55.019605	disconnected	2026-01-31 11:00:38.527288	970b8c49-4d53-48fc-939f-ca46146e3910	\N	99b5befa-c796-488c-9513-4bce19ce38f7	2026-01-26 11:00:38.528948	2026-01-28 11:30:00.025078	01KFG3WZVG4J9CRS0GBXJRV7ZX	620	{}
urn:PASP:consent-be1d80ba-fe0d-48aa-9742-4da76777eaa3	tet1111110	SAIB	SAIB	OPEN_BANKING	2027-01-26 09:57:29.698351	connected	2026-02-01 09:58:09.639056	82f2e1a9-2610-453c-9358-045bd64a9da3	\N	4be17172-4c2f-4161-a022-f90a198f1e26	2026-01-27 09:58:09.640368	2026-01-27 09:58:09.64037	01K920FBZBT9NE8WRP8BQSHSBQ	639	{}
urn:PASP:consent-e76ddc86-a1af-43f8-bf5d-f29b0b1d256a	all000000	SAIB	SAIB	OPEN_BANKING	2027-01-26 09:59:03.803516	failed	2026-02-01 09:59:27.367962	ace398c6-1061-4bc0-b3e6-197c1329038d	\N	c257657a-63ba-4199-a09b-67743641be67	2026-01-27 09:59:27.369577	2026-01-27 09:59:27.413947	01K920FBZBT9NE8WRP8BQSHSBQ	640	{}
urn:PASP:consent-2bcbc441-e1ba-49f8-88f0-7748f820f55d	all0770000	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:01:40.863648	failed	2026-02-01 10:02:02.935728	a3d908cf-15aa-4e3d-b8ab-0f9bce60bc51	\N	fb83db4a-3340-4bf7-b597-f84c5199d930	2026-01-27 10:02:02.937067	2026-01-27 10:02:02.977109	01K920FBZBT9NE8WRP8BQSHSBQ	642	{}
urn:PASP:consent-923b0da0-bdc7-4958-bb2b-83705ed165fb	69788bf2a5704a6f4c2ddc9f	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:00:46.42995	failed	2026-02-01 10:02:28.921008	c48b7662-2b8a-4985-a3d6-294dd3e3b904	\N	a97b2381-41f6-4d90-a951-b1a3c85c6ff9	2026-01-27 10:02:28.922556	2026-01-27 10:02:28.958272	01KFG3WZVG4J9CRS0GBXJRV7ZX	641	{}
urn:PASP:consent-63321b90-fffb-4bdb-b084-d3d515bafc75	test_1	SAIB	SAIB	OPEN_BANKING	2027-01-24 13:28:11.39795	disconnected	2026-01-30 13:29:23.960606	03816514-e808-4e30-9b25-e4b7b1a83bdc	\N	2143584d-6c54-4fb9-afc2-f6bade95dc3e	2026-01-25 13:29:23.96278	2026-01-27 13:30:00.056282	01K9PVDCNZ9FZ33PFSWJK6ASFR	603	{}
urn:PASP:consent-a4643b1e-9c82-4aa3-bcd6-5a1cdec7394d	6977348ca059aeebbb604774	SAIB	SAIB	OPEN_BANKING	2027-01-25 09:37:51.488487	disconnected	2026-01-31 09:38:41.94748	96cd403e-b11a-4266-98bf-7ddfd697d84a	\N	71a49b66-a5bc-4432-9d88-ae641fcb8f0c	2026-01-26 09:38:41.94894	2026-01-28 10:30:00.02788	01KFG3WZVG4J9CRS0GBXJRV7ZX	618	{}
urn:PASP:consent-90969d0a-9755-4a72-84a1-b2c030aaeede	acctest044	SAIB	SAIB	OPEN_BANKING	2027-01-31 11:12:43.174965	connected	2026-02-06 11:12:58.101309	c6e029fa-289b-43ec-a59b-1fe3a6d8401d	\N	eb0ee088-cd59-4f32-bd41-e4da8264c2c9	2026-02-01 11:12:58.103108	2026-02-01 11:12:58.103111	01K920FBZBT9NE8WRP8BQSHSBQ	697	{}
urn:PASP:consent-8e8e448f-553e-49bb-98f1-a91ad0bec09d	mbank	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:15:30.478982	connected	2026-02-01 10:16:03.636432	047fe5e0-612c-494b-b76a-2fcca0ca9fd0	\N	4f667fa0-d9c7-46a0-bf9c-cd2e0182ce6f	2026-01-27 10:16:03.638554	2026-01-27 10:16:03.638557	01K920FBZBT9NE8WRP8BQSHSBQ	645	{}
urn:PASP:consent-6fdd9057-b38c-4015-901f-2a1cba1cf264	all0770223000	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:27:22.675071	connected	2026-02-01 10:28:01.938064	b10d2c34-3734-4b41-84f0-377a288d5e0a	\N	4caff07a-c6e0-42bd-8732-92dfd90696f8	2026-01-27 10:28:01.939759	2026-01-27 10:28:01.939762	01K920FBZBT9NE8WRP8BQSHSBQ	647	{}
urn:PASP:consent-03cc550f-3149-41bb-9650-2ba144e420e7	assa	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:31:52.835028	connected	2026-02-01 10:32:23.556321	441711ba-ddb1-4287-980e-6ebebb8e4d16	\N	8c4e4b0b-a0bf-4395-9c9d-4b82a2accce8	2026-01-27 10:32:23.557533	2026-01-27 10:32:23.557535	01K920FBZBT9NE8WRP8BQSHSBQ	648	{}
urn:PASP:consent-3b05de1f-130c-40a7-b644-2d15523bb4de	888877737	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:41:55.751478	connected	2026-02-01 10:42:23.949997	04fa6e2b-c0c4-4978-acaa-70819e9054d6	\N	6a204794-f446-40d0-9013-8cd119886f57	2026-01-27 10:42:23.95336	2026-01-27 10:42:23.953362	01K920FBZBT9NE8WRP8BQSHSBQ	651	{}
urn:PASP:consent-8da5fcad-8256-4583-aa29-ccfc4def102e	1035270857	SAIB	SAIB	OPEN_BANKING	2027-01-26 11:12:16.904053	connected	2026-02-01 11:13:27.556861	1f306e1c-a3d1-449d-9b6d-15d55eebc4ca	\N	8bac319c-e86b-4ecf-9649-eb6d72611bf0	2026-01-27 11:13:27.558341	2026-01-27 11:13:33.996137	01K9PVDCNZ9FZ33PFSWJK6ASFR	653	{"profile_accounts_link": {"PSUId": "1035270857", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "653", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-dd242036-18dd-4134-90bd-94e5abc1db97	acctest012	SAIB	SAIB	OPEN_BANKING	2027-01-26 12:33:43.272043	connected	2026-02-01 12:34:07.856058	56094dff-6efd-4a95-a599-00411766cb6b	\N	f7564e87-00e4-4f85-b585-02361f6775e2	2026-01-27 12:34:07.859229	2026-01-27 12:34:07.859231	01K920FBZBT9NE8WRP8BQSHSBQ	656	{}
urn:PASP:consent-2b7600b7-4a8c-465e-9ccc-a9bb8a8490cd	acctest0035	SAIB	SAIB	OPEN_BANKING	2027-01-26 12:50:02.648951	connected	2026-02-01 12:50:26.04362	e0349cc1-c3f4-4511-9919-ab96d5249937	\N	cd7abdb5-d601-4090-ac0d-62b6a833ab69	2026-01-27 12:50:26.04497	2026-01-27 12:50:26.044972	01K920FBZBT9NE8WRP8BQSHSBQ	657	{}
urn:PASP:consent-af86c9f1-1951-400c-bf38-fdc56ffa1fa9	1676197047	SAIB	SAIB	OPEN_BANKING	2027-01-26 13:46:34.522893	connected	2026-02-01 13:47:55.765324	86ee63a3-10b8-4d02-b69f-9cae84913c6a	\N	2c4a106c-8f7d-40aa-ae15-408917a5d134	2026-01-27 13:47:55.766647	2026-01-27 13:48:06.40218	01K9PVDCNZ9FZ33PFSWJK6ASFR	658	{"profile_accounts_link": {"PSUId": "1676197047", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "658", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-80b3e51d-2738-4e14-a4d8-3df1fc78cfd2	acctest003	SAIB	SAIB	OPEN_BANKING	2027-01-28 07:35:26.685051	connected	2026-02-03 07:35:49.869442	eb149b7e-116b-467a-a399-1e6175b3e3b6	\N	5f4e1cb9-ee96-4289-b982-b23013b17bb7	2026-01-29 07:35:49.872294	2026-01-29 07:35:49.872297	01K920FBZBT9NE8WRP8BQSHSBQ	661	{}
urn:SAMA:kac-0cdb54de-fe12-4d83-9696-5594011ab5bc	774665	OBLAB	OBLAB	OPEN_BANKING	2027-01-28 07:40:11.927915	connected	2026-02-03 07:40:49.051374	24daa336-9990-47d7-85d3-b892ce1b0c26	\N	9e985f8f-3024-4d38-811c-a50365cb293a	2026-01-29 07:40:49.052738	2026-01-29 07:40:49.052741	01K920FBZBT9NE8WRP8BQSHSBQ	665	{}
urn:SAMA:kac-6da1b3d9-b9ca-4d6e-9a17-c2bfec1dd075	acctest005	OBLAB	OBLAB	OPEN_BANKING	2027-01-28 07:46:57.206108	connected	2026-02-03 07:47:29.306248	e00e7e4e-a424-4056-a200-c339819a9bae	\N	8a8c7191-8d3b-46c3-8ca8-a17a05298aee	2026-01-29 07:47:29.307808	2026-01-29 07:47:29.307811	01K920FBZBT9NE8WRP8BQSHSBQ	668	{}
urn:PASP:consent-5514dafd-0c1c-4d2e-a3f7-4065e826f9be	acctest006	SAIB	SAIB	OPEN_BANKING	2027-01-28 09:00:21.479081	connected	2026-02-03 09:00:44.738224	14b67fbf-39d3-4627-8141-2d102ebadbc9	\N	1de0ed23-19d8-4019-a095-ed1904ef6c1d	2026-01-29 09:00:44.739627	2026-01-29 09:00:44.73963	01K920FBZBT9NE8WRP8BQSHSBQ	669	{}
urn:SAMA:kac-2d024ce2-9766-4748-9f95-5d7a2549b28f	acctest006	OBLAB	OBLAB	OPEN_BANKING	2027-01-28 09:07:54.985238	connected	2026-02-03 09:08:33.802498	01ef61fd-b823-4194-8728-d6ccf16a93f0	\N	31428d3f-eafd-470e-a30e-110edd553d7d	2026-01-29 09:08:33.803803	2026-01-29 09:08:33.803806	01K920FBZBT9NE8WRP8BQSHSBQ	670	{}
urn:SAMA:kac-ed1a7204-b4c8-4e6d-ae52-685eb9063aa6	acctest021	OBLAB	OBLAB	OPEN_BANKING	2027-01-28 09:13:58.663731	connected	2026-02-03 09:14:37.631096	9118c89b-a61c-4fe1-b7ac-abb6e37de5fd	\N	920ec915-05ac-4735-9128-4c5e2cca65cb	2026-01-29 09:14:37.632493	2026-01-29 09:14:37.632496	01K920FBZBT9NE8WRP8BQSHSBQ	673	{}
urn:PASP:consent-20c20d71-7a9d-452f-806a-8681e0025711	acctest022	SAIB	SAIB	OPEN_BANKING	2027-01-28 09:28:42.48963	connected	2026-02-03 09:29:11.280564	381744cb-bf0f-4d39-b58d-ba9d27213846	\N	54853b4f-141e-4745-8ff8-224915c815ff	2026-01-29 09:29:11.281969	2026-01-29 09:29:11.281971	01K920FBZBT9NE8WRP8BQSHSBQ	674	{}
urn:PASP:consent-93cb3847-83c3-4f99-8fcd-9e5f29c83791	test_12	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:35:41.843161	disconnected	2026-02-01 10:36:31.223331	77b472fa-6e05-47a3-b91a-dc84c0d749ce	\N	faa6c6ec-08b4-4f71-a002-8b22b5231902	2026-01-27 10:36:31.224905	2026-01-29 11:30:00.028635	01K9PVDCNZ9FZ33PFSWJK6ASFR	650	{}
urn:PASP:consent-de969288-2b33-4de7-af35-2c02f6166a81	test_123	SAIB	SAIB	OPEN_BANKING	2027-01-26 10:45:10.278295	disconnected	2026-02-01 10:46:11.972683	2ef1944f-6621-4d7c-a1d5-31f6e9b5052f	\N	24da3a0c-543d-4115-9952-1b85654dbca2	2026-01-27 10:46:11.97424	2026-01-29 11:30:00.039852	01K9PVDCNZ9FZ33PFSWJK6ASFR	652	{}
urn:PASP:consent-918fc6b7-7286-406f-8943-f634d2c2b527	acctest024	SAIB	SAIB	OPEN_BANKING	2027-01-28 11:32:33.45192	connected	2026-02-03 11:32:58.73009	6faa7463-78ca-4d48-844d-df97ba32149b	\N	ccf62280-4415-412d-9bf5-91c98b473df5	2026-01-29 11:32:58.732531	2026-01-29 11:32:58.732533	01K920FBZBT9NE8WRP8BQSHSBQ	676	{}
urn:SAMA:kac-317addb2-ea92-4478-8fca-0bc9c51279d7	acctest025	OBLAB	OBLAB	OPEN_BANKING	2027-01-28 11:34:52.48651	connected	2026-02-03 11:35:17.605058	b4e11d01-7da0-4a28-904c-544f14a20443	\N	f049fc0c-4b6f-4619-8ef3-7bade0507571	2026-01-29 11:35:17.606502	2026-01-29 11:35:17.606505	01K920FBZBT9NE8WRP8BQSHSBQ	677	{}
urn:PASP:consent-55282b48-1c6e-4008-9ef8-560dac13d2b4	acctest026	SAIB	SAIB	OPEN_BANKING	2027-01-28 11:38:52.535033	connected	2026-02-03 11:39:06.314035	f297db88-182c-4b65-a598-1b3746674fc5	\N	69156e4f-0015-41ad-bf0a-b801f5adc761	2026-01-29 11:39:06.315404	2026-01-29 11:39:06.315407	01K920FBZBT9NE8WRP8BQSHSBQ	678	{}
urn:PASP:consent-11fefe0c-c35c-4657-8ef8-d8f4bb3d114f	69794186cf4ab7c8c72459f7	SAIB	SAIB	OPEN_BANKING	2027-01-26 22:56:21.235655	disconnected	2026-02-01 22:57:20.492358	afb8d893-050f-45a0-81d2-94c80a380b2e	\N	591d1f7a-eab6-4672-bffe-b5e7ac9ab69d	2026-01-27 22:57:20.494308	2026-01-29 23:30:00.024	01KFG3WZVG4J9CRS0GBXJRV7ZX	660	{}
urn:PASP:consent-e54d690a-03f1-4938-b429-0ce9393fa8d4	acctest027	SAIB	SAIB	OPEN_BANKING	2027-01-28 11:42:45.913996	connected	2026-02-03 11:43:02.204516	b9bd5e7a-f3df-4bbb-8454-f1f74727019d	\N	50a3dd6f-4a18-42dd-a03a-dceb313258a7	2026-01-29 11:43:02.206113	2026-01-29 11:43:02.206115	01K920FBZBT9NE8WRP8BQSHSBQ	679	{}
urn:PASP:consent-3b27ea39-1f7d-48cc-8998-02b4969077ce	acctest028	SAIB	SAIB	OPEN_BANKING	2027-01-28 11:59:18.114719	connected	2026-02-03 11:59:36.371989	79261164-02f9-4a80-87f9-f2a266aa8648	\N	594ef41a-ade2-409b-bd35-8ce048346b53	2026-01-29 11:59:36.373287	2026-01-29 11:59:36.37329	01K920FBZBT9NE8WRP8BQSHSBQ	680	{}
urn:PASP:consent-ddca4061-7cd4-426d-9d26-14528114f20f	acctest029	SAIB	SAIB	OPEN_BANKING	2027-01-28 12:11:16.582511	connected	2026-02-03 12:12:01.002817	d4ef2bf4-9550-4b64-87d0-46567da56ff2	\N	b2d41aa1-4238-4e0e-b312-4740917f9267	2026-01-29 12:12:01.004217	2026-01-29 12:12:01.00422	01K920FBZBT9NE8WRP8BQSHSBQ	681	{}
urn:PASP:consent-f7c29242-87e1-4db5-af80-c94e97016645	6978a6d8339a79770761ffc0	SAIB	SAIB	OPEN_BANKING	2027-01-26 11:53:54.225504	disconnected	2026-02-01 11:54:34.094051	632a6024-5bbb-4be1-a2df-28dfc07b9e37	\N	e21cd17b-3f57-481f-a133-d2ed60997671	2026-01-27 11:54:34.095371	2026-01-29 12:30:00.033386	01KFG3WZVG4J9CRS0GBXJRV7ZX	654	{}
urn:PASP:consent-76460f18-ff61-40cd-8b31-56d8390c820e	acctest045	SAIB	SAIB	OPEN_BANKING	2027-01-31 11:23:56.131786	connected	2026-02-06 11:24:14.030834	8bae95e9-0ce0-4c91-bb6e-c2bafc24d25a	\N	10779793-4585-4afe-8855-c5e5c5c19a3e	2026-02-01 11:24:14.0322	2026-02-01 11:24:14.032202	01K920FBZBT9NE8WRP8BQSHSBQ	698	{}
urn:PASP:consent-e7921eb5-8272-4ee1-98fe-3f1b76aec1e7	acctest050	SAIB	SAIB	OPEN_BANKING	2027-01-31 11:33:56.838427	connected	2026-02-06 11:34:17.007629	532b6463-f319-44f7-8461-ca8e3d43d7e4	\N	0c42c215-5af8-4de4-bd1f-6c5fc949e555	2026-02-01 11:34:17.009082	2026-02-01 11:34:17.009084	01K920FBZBT9NE8WRP8BQSHSBQ	703	{}
urn:PASP:consent-9314fad1-4f28-4dfb-817e-1fec304bc907	acctest051	SAIB	SAIB	OPEN_BANKING	2027-01-31 11:38:09.510506	connected	2026-02-06 11:38:31.439879	4b2973e3-3864-4cf5-a105-bb4441ac7b7a	\N	d8e652e1-4939-42fc-aa56-cb8a0f3f1032	2026-02-01 11:38:31.441427	2026-02-01 11:38:31.44143	01K920FBZBT9NE8WRP8BQSHSBQ	704	{}
urn:PASP:consent-8e6a6bf6-cfed-4715-bea0-906fdd767da7	acctest052	SAIB	SAIB	OPEN_BANKING	2027-01-31 11:55:28.206952	connected	2026-02-06 11:55:50.985416	5e2e6991-296d-4ed0-8609-5a4325b87937	\N	ee177a2f-08bd-456d-bfef-209883dd4ac2	2026-02-01 11:55:50.986783	2026-02-01 11:55:50.986785	01K920FBZBT9NE8WRP8BQSHSBQ	705	{}
urn:PASP:consent-b7563c29-6f9f-4024-a118-d94f918ba8ca	acctest053	SAIB	SAIB	OPEN_BANKING	2027-01-31 12:29:15.955014	connected	2026-02-06 12:29:57.888139	961df381-ca8a-4b6d-9765-ad91d63b7020	\N	071a63f0-8193-4e56-a5b6-eaa57e18c43e	2026-02-01 12:29:57.889443	2026-02-01 12:29:57.889445	01K920FBZBT9NE8WRP8BQSHSBQ	706	{}
urn:SAMA:kac-fcf0e19c-930a-4f25-bf09-83efd5fba683	acctest054	OBLAB	OBLAB	OPEN_BANKING	2027-01-31 12:45:49.069575	connected	2026-02-06 12:46:25.153263	c250b1b6-ba58-44f7-85d4-420a8ec492df	\N	100cbe8e-dfe5-4969-b12e-281fa94793eb	2026-02-01 12:46:25.154673	2026-02-01 12:46:25.154675	01K920FBZBT9NE8WRP8BQSHSBQ	707	{}
urn:PASP:consent-16d024e5-57e4-43d3-a290-283d91017eaa	acctest055	SAIB	SAIB	OPEN_BANKING	2027-01-31 12:54:48.068239	connected	2026-02-06 12:55:33.891301	233cf441-0a35-44d6-be20-51732d71255f	\N	ee82e5e3-57d9-4283-85b0-b3f2f2580575	2026-02-01 12:55:33.892612	2026-02-01 12:55:33.892614	01K920FBZBT9NE8WRP8BQSHSBQ	708	{}
urn:PASP:consent-33192bf0-96c3-44c9-80cd-0016d6a8004e	87774766	SAIB	SAIB	OPEN_BANKING	2027-01-31 12:56:25.35377	connected	2026-02-06 12:58:12.176754	27e554be-159a-499a-8d11-a246546ef35d	\N	ae9b697b-29fd-46d8-a4cc-88fd61acd611	2026-02-01 12:58:12.178121	2026-02-01 12:58:12.178123	01K920FBZBT9NE8WRP8BQSHSBQ	709	{}
urn:PASP:consent-50c7b999-50f4-474d-8efa-35dda54aa7c9	acctest058	SAIB	SAIB	OPEN_BANKING	2027-01-31 13:18:59.275187	connected	2026-02-06 13:19:24.282664	b81e8ca1-489c-4c44-936b-22e2be185a8d	\N	541d69e6-2c74-4749-b20e-3e90673c85f7	2026-02-01 13:19:24.283993	2026-02-01 13:19:24.283995	01K920FBZBT9NE8WRP8BQSHSBQ	712	{}
urn:PASP:consent-16a709a2-2da0-48d1-b951-f97c65554e65	877748876	SAIB	SAIB	OPEN_BANKING	2027-01-31 13:40:43.739871	connected	2026-02-06 13:41:41.521718	4ecddd74-1e49-407c-9495-f14149c08d74	\N	411f0cf5-a849-4893-bbb3-254ea4c2bc32	2026-02-01 13:41:41.522941	2026-02-01 13:41:41.522943	01K920FBZBT9NE8WRP8BQSHSBQ	715	{}
urn:PASP:consent-b1a70dbc-4ee7-4b35-9fa4-28d2677626cb	acctest059	SAIB	SAIB	OPEN_BANKING	2027-02-01 08:15:12.710621	connected	2026-02-07 08:15:45.089924	95a5eda5-a4ac-4b78-b001-abe1796cc7eb	\N	78191a99-3af3-4424-a1cc-4e81ad886c3c	2026-02-02 08:15:45.091212	2026-02-02 08:15:45.091214	01K920FBZBT9NE8WRP8BQSHSBQ	716	{}
urn:PASP:consent-d6ef5fc8-92e2-4426-9af6-e153fc55fdab	acctest060	SAIB	SAIB	OPEN_BANKING	2027-02-01 08:30:06.926531	connected	2026-02-07 08:30:31.949459	098fa571-63b1-45f3-ac69-74ef88c39be8	\N	b7791049-a29c-4f96-a17e-40f60016dc6c	2026-02-02 08:30:31.950834	2026-02-02 08:30:31.950836	01K920FBZBT9NE8WRP8BQSHSBQ	717	{}
urn:PASP:consent-ba0f2f69-02ec-4f5d-bf07-01cae548f728	acctest061	SAIB	SAIB	OPEN_BANKING	2027-02-01 09:58:34.303373	connected	2026-02-07 09:59:20.433303	3023900d-f7b9-4933-b0c7-446bc09993d0	\N	f60bf9bb-cede-41c4-a891-6876771991ea	2026-02-02 09:59:20.438207	2026-02-02 09:59:20.438212	01K920FBZBT9NE8WRP8BQSHSBQ	718	{}
urn:PASP:consent-cca9e708-c04a-48b8-b059-9b8ffef1d0b9	acctest062	SAIB	SAIB	OPEN_BANKING	2027-02-01 10:21:45.350049	connected	2026-02-07 10:22:12.958293	230a5bd1-ea2f-4262-98fb-7a6ffeb2f8da	\N	d9046f47-49a8-4ed6-bfac-24ff8cc88060	2026-02-02 10:22:12.959909	2026-02-02 10:22:12.959911	01K920FBZBT9NE8WRP8BQSHSBQ	719	{}
urn:PASP:consent-d7404e86-6f7c-4f3c-bf4d-25b9ae694b55	acctest063	SAIB	SAIB	OPEN_BANKING	2027-02-01 10:26:07.594129	connected	2026-02-07 10:26:35.774111	0f5fb65c-aba7-4b19-971a-6e450dcd7300	\N	e887184b-45e3-48c5-ae4e-0b8fae77e8fe	2026-02-02 10:26:35.775467	2026-02-02 10:26:35.775469	01K920FBZBT9NE8WRP8BQSHSBQ	721	{}
urn:PASP:consent-d9343644-7f42-44ae-b9d6-e1f47009f4f6	acctest064	SAIB	SAIB	OPEN_BANKING	2027-02-01 10:33:46.651575	connected	2026-02-07 10:34:18.027575	48a9f553-bbd2-40b4-baa2-01a2aaf965d1	\N	ba51a813-e702-4003-b3ab-c8f37b48207c	2026-02-02 10:34:18.028991	2026-02-02 10:34:18.028993	01K920FBZBT9NE8WRP8BQSHSBQ	722	{}
urn:PASP:consent-31834a86-83b4-40a0-8022-8612bb612c3c	4777566	SAIB	SAIB	OPEN_BANKING	2027-02-01 11:05:42.854774	connected	2026-02-07 11:06:36.701722	aba66a7a-e1ff-4634-8228-e55a47196659	\N	d45f813f-d1c1-4157-8894-7e353d70b2e0	2026-02-02 11:06:36.703131	2026-02-02 11:06:36.703133	01K920FBZBT9NE8WRP8BQSHSBQ	723	{}
urn:PASP:consent-a445ce7e-799c-487f-9192-5c14d0fc898a	6980847da5b0efee4bade87f	SAIB	SAIB	OPEN_BANKING	2027-02-01 11:06:32.955891	disconnected	2026-02-07 11:07:15.741033	a9160a3f-bb69-42d8-8098-87eb614e2a1f	\N	98ead1b1-2570-480c-a9fc-024093344bf9	2026-02-02 11:07:15.742411	2026-02-04 11:30:00.031889	01KFG3WZVG4J9CRS0GBXJRV7ZX	724	{}
urn:PASP:consent-9b37ddf4-d8b9-4227-b306-bb0afc6a30e0	698086eda5b0efee4baded65	SAIB	SAIB	OPEN_BANKING	2027-02-01 11:15:35.228609	disconnected	2026-02-07 11:15:57.857072	972249e3-1dcb-451a-9e4c-70480b217e7f	\N	595c0572-a502-46e6-a806-5768f3b8e559	2026-02-02 11:15:57.858459	2026-02-04 11:30:00.09767	01KFG3WZVG4J9CRS0GBXJRV7ZX	725	{}
urn:PASP:consent-29e0f84c-9a12-48ab-8b8c-60648aeb046b	6981cd04221dece2465b0a96	SAIB	SAIB	OPEN_BANKING	2027-02-02 10:30:08.746908	disconnected	2026-02-08 10:31:17.833303	75c0e590-714d-4234-8a4a-9e53b7ad58e3	\N	0dd80967-3a28-44cc-b46a-dba784690519	2026-02-03 10:31:17.834605	2026-02-05 11:30:00.050809	01KFG3WZVG4J9CRS0GBXJRV7ZX	730	{}
urn:PASP:consent-c49837c1-2f41-4cfa-9e20-87f0da416315	1	SAIB	SAIB	OPEN_BANKING	2027-02-08 22:25:37.161865	connected	2026-02-14 22:26:11.455033	b43751fc-8492-4432-b8f5-b3680a3e18b0	\N	ca69abcf-a99a-4384-856b-0058d1526de9	2026-02-09 22:26:11.456411	2026-02-09 22:26:11.456413	01K9PVDCNZ9FZ33PFSWJK6ASFR	823	{}
urn:PASP:consent-85fc95a6-023f-481d-8c1c-d3e69ac80a1a	2	SAIB	SAIB	OPEN_BANKING	2027-02-08 23:02:35.147778	connected	2026-02-14 23:05:16.860036	7b129d2c-ae06-485e-bd7e-9888489a2c3c	\N	cdd5b208-9890-4d28-96f6-2849bc8e19db	2026-02-09 23:05:16.862004	2026-02-09 23:05:16.862007	01K9PVDCNZ9FZ33PFSWJK6ASFR	824	{}
urn:PASP:consent-75d40be4-ffc2-430b-b256-499acb6aaea8	697f2ca2910238db24cabe62	SAIB	SAIB	OPEN_BANKING	2027-01-31 10:38:32.063771	disconnected	2026-02-06 10:39:17.884842	2a46eb31-7869-43ba-9751-292bb359331f	\N	a206d464-e513-4830-a622-62107894ca40	2026-02-01 10:39:17.886196	2026-02-03 11:30:00.027887	01KFG3WZVG4J9CRS0GBXJRV7ZX	695	{}
urn:PASP:consent-c53cac5b-a887-4cca-9d33-742014ba8dd3	acctest002	SAIB	SAIB	OPEN_BANKING	2027-02-02 12:21:03.400101	connected	2026-02-08 12:21:32.126042	b35e0d38-3bdb-4ade-aa40-9828ede034da	\N	c6f1a654-cd05-4602-a4f2-3a60b3673a74	2026-02-03 12:21:32.12743	2026-02-03 12:21:32.127432	01K920FBZBT9NE8WRP8BQSHSBQ	736	{}
urn:PASP:consent-3366941c-beb2-49d4-920d-9ec8123a9dbf	88477746	SAIB	SAIB	OPEN_BANKING	2027-02-02 13:24:57.268508	connected	2026-02-08 13:25:30.108067	f2d084c3-07dd-4273-b7f0-6e8a3b1aaaa9	\N	1a42a360-5829-4232-8e7b-96c1ead6a441	2026-02-03 13:25:30.110047	2026-02-03 13:25:30.11005	01K920FBZBT9NE8WRP8BQSHSBQ	737	{}
urn:PASP:consent-bf579eb8-5031-4a61-9c64-c7566a32d84d	acctest004	SAIB	SAIB	OPEN_BANKING	2027-02-02 14:02:58.320378	connected	2026-02-08 14:03:35.119208	79de9794-58bc-4a07-9f06-e51c18143950	\N	792d8560-c8dc-4a0d-a424-692b29e8ed64	2026-02-03 14:03:35.120984	2026-02-03 14:03:35.120986	01K920FBZBT9NE8WRP8BQSHSBQ	741	{}
urn:SAMA:kac-6c24e97a-d29d-41fb-abf7-68edc133e6bd	acctest004	OBLAB	OBLAB	OPEN_BANKING	2027-01-28 07:46:04.932055	connected	2026-02-08 14:03:44.347268	708d772a-ee9c-4691-84ac-ad13fffe0084	\N	bb198d04-8eeb-4161-bde5-b3a96734d76f	2026-01-29 07:46:41.199592	2026-02-03 14:03:44.348188	01K920FBZBT9NE8WRP8BQSHSBQ	667	{}
urn:PASP:consent-d02e7227-e9fe-42c9-ac4c-f336d8bca5e2	acctest103	SAIB	SAIB	OPEN_BANKING	2027-02-02 14:10:53.797989	connected	2026-02-08 14:11:11.950781	3537e598-d671-4d78-8a4b-4f30069e608e	\N	fdc90ef2-b5d4-4785-b783-b18e8b5cc9ac	2026-02-03 14:11:11.953255	2026-02-03 14:11:11.953257	01K920FBZBT9NE8WRP8BQSHSBQ	743	{}
urn:PASP:consent-1b6f5d28-e2e2-4bec-b4bd-047ec1764b1d	acctest105	SAIB	SAIB	OPEN_BANKING	2027-02-02 14:14:10.90964	connected	2026-02-08 14:14:30.380136	08bceec6-7a49-43f9-81f2-dfd131757e49	\N	db3b8010-359c-45a6-a723-9cb34e53e04e	2026-02-03 14:14:30.381673	2026-02-03 14:14:30.381675	01K920FBZBT9NE8WRP8BQSHSBQ	745	{}
urn:PASP:consent-6e9e56be-0cc6-4e9d-b475-3ac46c25b142	acctest106	SAIB	SAIB	OPEN_BANKING	2027-02-03 09:18:30.946515	connected	2026-02-09 09:18:53.740453	03380c20-f806-4b55-a237-eb0017c0344d	\N	c98038cc-e473-4339-b8cf-d1e868476f40	2026-02-04 09:18:53.741759	2026-02-04 09:18:53.741762	01K920FBZBT9NE8WRP8BQSHSBQ	748	{}
urn:PASP:consent-d5e03cc7-7797-4631-872d-8066c69ca8b4	acctest107	SAIB	SAIB	OPEN_BANKING	2027-02-03 09:19:07.216816	connected	2026-02-09 09:19:26.420732	f41920ba-be72-4ef0-9a32-68ab94e4ddfe	\N	191cd470-53cc-4d07-a17d-8adc3aaab7ec	2026-02-04 09:19:26.422095	2026-02-04 09:19:26.422097	01K920FBZBT9NE8WRP8BQSHSBQ	749	{}
urn:PASP:consent-1efcc8cc-12b1-45a4-9a7e-4297dc747c11	6981d20c221dece2465b0fe4	SAIB	SAIB	OPEN_BANKING	2027-02-02 10:48:34.638832	disconnected	2026-02-08 10:49:32.383861	af262241-d9d5-41e7-8d6c-bd59ad68b096	\N	b8ebaa21-361f-4466-9a17-0a14a6972044	2026-02-03 10:49:32.385185	2026-02-05 11:30:00.059392	01KFG3WZVG4J9CRS0GBXJRV7ZX	731	{}
urn:PASP:consent-00fdea35-92eb-45ec-a690-c7c2c72bba01	6981d7c0221dece2465b240d	SAIB	SAIB	OPEN_BANKING	2027-02-02 11:13:12.867202	disconnected	2026-02-08 11:13:51.517084	b3178bb2-c399-435a-a118-fd11ca0444dc	\N	b8ce72c6-c7d5-46ca-a1b0-67a6a8e49292	2026-02-03 11:13:51.518349	2026-02-05 11:30:00.068074	01KFG3WZVG4J9CRS0GBXJRV7ZX	732	{}
urn:PASP:consent-dce02c31-e1d8-4bf5-ab65-532f4005190b	6981d900221dece2465b2737	SAIB	SAIB	OPEN_BANKING	2027-02-02 11:17:52.698307	disconnected	2026-02-08 11:19:43.466782	807539fa-cddb-4941-8551-a451a3e85769	\N	263b94a5-4bb1-4ec1-9232-e37d147c782d	2026-02-03 11:19:43.467997	2026-02-05 11:30:00.084414	01KFG3WZVG4J9CRS0GBXJRV7ZX	733	{}
urn:PASP:consent-b43cb1b6-95cd-4265-bf8a-c3b06217e955	6981dfe1221dece2465b389f	SAIB	SAIB	OPEN_BANKING	2027-02-02 11:47:35.213361	disconnected	2026-02-08 11:48:53.829735	1308f24b-b75f-450a-84aa-b1fd935c7844	\N	7a4e35ed-f274-4d37-be5c-969d394a27e0	2026-02-03 11:48:53.832545	2026-02-05 12:30:00.461675	01KFG3WZVG4J9CRS0GBXJRV7ZX	735	{}
urn:PASP:consent-388adc9d-25fd-47f4-9472-97e568b8d099	6981f8a3221dece2465b8a87	SAIB	SAIB	OPEN_BANKING	2027-02-02 13:44:51.845664	disconnected	2026-02-08 13:49:24.649534	9a3c3ef4-1f40-4022-8680-08eb4dc9107b	\N	df31109e-fc4f-486c-bc57-7e94fe340740	2026-02-03 13:49:24.650891	2026-02-05 14:30:00.024959	01KFG3WZVG4J9CRS0GBXJRV7ZX	738	{}
urn:PASP:consent-9fcc455a-1ad3-4b13-a21e-e3930a63467a	6981fdb4221dece2465b9723	SAIB	SAIB	OPEN_BANKING	2027-02-02 13:54:57.828954	disconnected	2026-02-08 13:55:31.58707	ba257fd1-d86f-450f-8d1c-afeceb3fb01f	\N	6227940f-c8e4-4cf8-9e0b-9509184c587b	2026-02-03 13:55:31.588673	2026-02-05 14:30:00.041287	01KFG3WZVG4J9CRS0GBXJRV7ZX	739	{}
urn:PASP:consent-d9fa3d8e-6455-4b7a-a7b8-d548b56e08fb	6983248d9541c0fddc5ef5bb	SAIB	SAIB	OPEN_BANKING	2027-02-03 10:54:42.089733	disconnected	2026-02-09 10:56:03.690438	67b65694-af56-4d16-88c5-21651bd715ad	\N	9e80dfd2-65b9-4792-b61b-996922971629	2026-02-04 10:56:03.691865	2026-02-06 11:30:00.025612	01KFG3WZVG4J9CRS0GBXJRV7ZX	752	{}
urn:PASP:consent-c97cc5d5-4163-40f5-b723-87c8dbccbb3a	69832e999541c0fddc5f147f	SAIB	SAIB	OPEN_BANKING	2027-02-03 11:37:10.951086	disconnected	2026-02-09 11:37:52.70535	161feecc-6295-493e-bf01-e153c86a4a9d	\N	846b2ffa-656c-4865-9116-4b3d2778ec5d	2026-02-04 11:37:52.706629	2026-02-06 12:30:00.024881	01KFG3WZVG4J9CRS0GBXJRV7ZX	753	{}
urn:PASP:consent-f3f193dc-9cdd-4eb7-898c-f806dfcb8801	698335e79541c0fddc5f25c1	SAIB	SAIB	OPEN_BANKING	2027-02-03 12:16:33.817216	disconnected	2026-02-09 12:17:18.042025	44f7907f-b57e-4f0f-9098-98cdcad91e09	\N	6d0819c2-6a84-4934-bb28-92b89a9776b2	2026-02-04 12:17:18.043544	2026-02-06 12:30:00.033419	01KFG3WZVG4J9CRS0GBXJRV7ZX	754	{}
urn:PASP:consent-fa56e408-3c45-46a0-8bb4-e08fbc7d06ec	698339d39541c0fddc5f30cd	SAIB	SAIB	OPEN_BANKING	2027-02-03 12:25:47.500825	disconnected	2026-02-09 12:26:14.028717	c05e467e-0af1-46a3-a6e7-00ea2ec643bc	\N	4a0b6d35-3f37-4331-9cb9-0481ca0bd161	2026-02-04 12:26:14.030215	2026-02-06 12:30:00.049091	01KFG3WZVG4J9CRS0GBXJRV7ZX	755	{}
urn:PASP:consent-006f9cbe-a2e1-40e2-8d49-49f085eee3bc	698343dc9541c0fddc5f4c48	SAIB	SAIB	OPEN_BANKING	2027-02-03 13:07:49.424272	disconnected	2026-02-09 13:08:24.592894	93e674db-851f-4e2e-a61e-d211c1f78490	\N	733e2596-f414-4566-9a43-cf7bde7c314b	2026-02-04 13:08:24.594264	2026-02-06 13:30:00.024723	01KFG3WZVG4J9CRS0GBXJRV7ZX	758	{}
urn:PASP:consent-53a2e3a2-f12d-42bf-b6fc-89f45497ac13	69833c0e9541c0fddc5f338b	SAIB	SAIB	OPEN_BANKING	2027-02-03 12:34:27.727629	disconnected	2026-02-09 12:34:53.110313	feb27e42-3ad4-4a2f-98a8-045cb5ce53c1	\N	7fe5fca4-0b28-4aba-b8c2-cba91b8c8759	2026-02-04 12:34:53.111938	2026-02-06 13:30:00.033813	01KFG3WZVG4J9CRS0GBXJRV7ZX	756	{}
urn:PASP:consent-dcd82fc8-479f-4130-896a-2678c50eb4cf	698337e59541c0fddc5f2d39	SAIB	SAIB	OPEN_BANKING	2027-02-03 12:36:48.664544	disconnected	2026-02-09 12:37:28.463983	c4295179-96be-4fca-be5b-3f92d1f4c5dd	\N	74183e34-ef17-45b7-b4d7-777234ad6a75	2026-02-04 12:37:28.465458	2026-02-06 13:30:00.049107	01KFG3WZVG4J9CRS0GBXJRV7ZX	757	{}
urn:PASP:consent-11d98249-f677-46a5-9079-de163aafe04d	acctest109	SAIB	SAIB	OPEN_BANKING	2027-02-04 07:30:54.980608	connected	2026-02-10 07:31:13.562168	cb8b8e2f-64fa-414e-a5e4-f1290ebc4868	\N	c3bee8df-7986-4f0f-8015-ddec027c4123	2026-02-05 07:31:13.563684	2026-02-05 07:31:13.563687	01K920FBZBT9NE8WRP8BQSHSBQ	761	{}
urn:PASP:consent-43299ff0-97d9-42bb-812e-d319ab22f09c	6981dae5221dece2465b2bd9	SAIB	SAIB	OPEN_BANKING	2027-02-02 11:26:12.428961	disconnected	2026-02-08 11:26:55.777666	ddd21c88-e9bf-453e-bfa7-908379e6ad8e	\N	b7da4ffb-9833-4bd6-b3e8-55e82037a83d	2026-02-03 11:26:55.779083	2026-02-05 11:30:00.030936	01KFG3WZVG4J9CRS0GBXJRV7ZX	734	{}
urn:PASP:consent-38bf54ac-36bd-4c0a-b10b-0eac6af1c2b7	acctest202	SAIB	SAIB	OPEN_BANKING	2027-02-05 01:29:11.188637	connected	2026-02-11 01:29:41.71249	c5d49337-a77f-4d34-8939-1f9e39448cd9	\N	f3509c2b-c3e2-486a-91f4-3f13067b49f1	2026-02-06 01:29:41.713825	2026-02-06 01:29:41.713827	01K920FBZBT9NE8WRP8BQSHSBQ	777	{}
urn:PASP:consent-f1a3f171-c2ac-4058-8039-55163ffea111	69845b93f1461dbace17f530	SAIB	SAIB	OPEN_BANKING	2027-02-04 09:01:57.592531	disconnected	2026-02-10 09:03:08.068789	fc581c19-95b1-4fce-aaa4-813d7b97ef71	\N	70f3383b-8161-4b6f-adf3-a6c4a4a21075	2026-02-05 09:03:08.070146	2026-02-07 09:30:00.025988	01KFG3WZVG4J9CRS0GBXJRV7ZX	763	{}
urn:PASP:consent-4aeb023e-ec1b-4390-93f7-ab6b36feb155	69849ae40a22c6b262d1d2c2	SAIB	SAIB	OPEN_BANKING	2027-02-04 13:30:28.603202	disconnected	2026-02-10 13:31:03.847883	332efdca-6363-473c-89a3-f2de3e73e8ee	\N	72103d4c-5a8e-4fea-87d6-9b4ec79934cc	2026-02-05 13:31:03.849156	2026-02-07 14:30:00.024937	01KFG3WZVG4J9CRS0GBXJRV7ZX	776	{}
urn:PASP:consent-c8028d99-173e-4928-ab5c-ac9fa0b2c55a	1201685854	SAIB	SAIB	OPEN_BANKING	2027-02-07 09:48:20.665865	connected	2026-02-13 09:50:27.292403	936ea72e-3ce7-4114-83ac-c67328f55446	\N	7b2ba09d-c7a6-42bc-ba70-1debef7b75bc	2026-02-08 09:50:27.294064	2026-02-08 09:50:27.294067	01K9PVDCNZ9FZ33PFSWJK6ASFR	784	{}
urn:PASP:consent-b842390d-3df8-442c-be77-f3d3bf7786fb	acctest122	SAIB	SAIB	OPEN_BANKING	2027-02-08 10:58:19.494312	connected	2026-02-14 10:58:48.665282	44e755ca-26e0-4bdf-92d0-7eeb5bfe5b83	\N	a28171fd-7fd4-4e45-ba41-52ffea95315e	2026-02-09 10:58:48.667988	2026-02-09 10:58:48.66799	01K920FBZBT9NE8WRP8BQSHSBQ	808	{}
urn:PASP:consent-cdcc33bb-8f0b-4779-98bf-cf1df533a2e4	00000000002	SAIB	SAIB	OPEN_BANKING	2027-02-08 13:05:11.719839	connected	2026-02-14 13:05:39.071128	99eef091-e0a0-4d26-b00c-6b155d677b74	\N	b31eba38-d0b0-44e4-bce9-0156ded5b1a4	2026-02-09 13:05:39.073608	2026-02-09 13:05:39.07361	01K920FBZBT9NE8WRP8BQSHSBQ	813	{}
urn:PASP:consent-b3971634-daae-4809-843d-66d1ece72ab8	00000000022	SAIB	SAIB	OPEN_BANKING	2027-02-08 13:16:25.002464	connected	2026-02-14 13:16:53.896848	18482ae2-eab0-419b-afab-625879b57d19	\N	f59134d7-688f-4b89-8473-a31dcb39ae34	2026-02-09 13:16:53.898131	2026-02-09 13:16:53.898133	01K920FBZBT9NE8WRP8BQSHSBQ	816	{}
urn:PASP:consent-a10d9eb6-fdcd-4990-a318-f89664d3e732	acctest123	SAIB	SAIB	OPEN_BANKING	2027-02-08 13:21:38.180426	connected	2026-02-14 13:22:03.302079	ed214df0-ad1a-4d97-b7d3-1c757fdd6a4f	\N	c135bebe-8f34-4329-847a-14a24498d8e4	2026-02-09 13:22:03.303492	2026-02-09 13:22:03.303494	01K920FBZBT9NE8WRP8BQSHSBQ	817	{}
urn:PASP:consent-1389691a-50d7-447f-94d0-c3d24908fccc	acctest124	SAIB	SAIB	OPEN_BANKING	2027-02-08 13:26:42.721117	connected	2026-02-14 13:48:29.299802	88f7e186-3312-4296-9abd-653e099d5925	\N	ce9914d6-8ab6-4172-aee2-230ad13a045b	2026-02-09 13:48:29.301045	2026-02-09 13:48:29.301047	01K920FBZBT9NE8WRP8BQSHSBQ	818	{}
urn:PASP:consent-d58d5f84-4f68-4eed-9e1d-ce80d9383449	acctest125	SAIB	SAIB	OPEN_BANKING	2027-02-08 13:49:07.872733	connected	2026-02-14 13:49:25.3549	05ea097f-e0fb-417a-9061-0b508f0896f9	\N	f7ea3778-c335-4f1a-a5a7-0a7384b0b668	2026-02-09 13:49:25.356111	2026-02-09 13:49:25.356113	01K920FBZBT9NE8WRP8BQSHSBQ	820	{}
urn:PASP:consent-43df99f4-509c-45aa-9340-df451eafc06d	acctest126	SAIB	SAIB	OPEN_BANKING	2027-02-08 13:52:49.209303	connected	2026-02-14 13:53:08.424812	661b442c-00a4-480f-a718-10adb0424895	\N	aec28d2d-36c8-4a57-92ca-b65a2541a6d2	2026-02-09 13:53:08.426194	2026-02-09 13:53:08.426197	01K920FBZBT9NE8WRP8BQSHSBQ	821	{}
urn:PASP:consent-c09ce358-a9f1-4622-952d-849e9c2ecf3a	6988525929b6a244380921c9	SAIB	SAIB	OPEN_BANKING	2027-02-07 09:50:34.02182	disconnected	2026-02-13 09:51:31.822952	611dec40-5233-45b0-858e-897e7d834c32	\N	6baae545-68c7-48d5-a9fe-7d05a78a3721	2026-02-08 09:51:31.824578	2026-02-10 10:30:00.028399	01KGM6NYJGHNW2YEHZ1AKQG13H	785	{}
urn:PASP:consent-4e45b7a7-7883-4016-a88f-49021d548a6e	69888a96334d3da47e82a441	SAIB	SAIB	OPEN_BANKING	2027-02-07 13:10:04.331758	disconnected	2026-02-13 13:13:57.326913	94ddb1ee-0528-4e84-a67b-348d1fcfcd7c	\N	16154da2-80ee-4ee8-9886-fc8977e062c9	2026-02-08 13:13:57.328407	2026-02-10 13:30:00.030055	01KGM6NYJGHNW2YEHZ1AKQG13H	787	{}
urn:PASP:consent-1bde239c-d6a1-43ad-a550-a7165c6333fd	69888e36e7c4e79b1db7a49e	SAIB	SAIB	OPEN_BANKING	2027-02-07 13:25:33.07005	disconnected	2026-02-13 13:26:03.049512	b4247682-3575-4982-bd7f-640d45dd6c0e	\N	678d8972-529e-490f-97ee-8916f3265a19	2026-02-08 13:26:03.050896	2026-02-10 13:30:00.104503	01KGM6NYJGHNW2YEHZ1AKQG13H	789	{}
urn:PASP:consent-ccc30700-9054-4b43-8e27-5a8072aef55c	698997dd61208d89c77bfe31	SAIB	SAIB	OPEN_BANKING	2027-02-08 08:20:53.865641	disconnected	2026-02-14 08:21:25.013062	853a0b57-5258-444b-9d7a-50c50655dbd5	\N	45f69ba3-64ad-49a6-8a7c-06b117b38753	2026-02-09 08:21:25.015312	2026-02-11 08:30:00.029587	01KGM6NYJGHNW2YEHZ1AKQG13H	797	{}
urn:PASP:consent-5964165b-2ebd-4293-83ab-d6dc8988f45e	6989ad10dbbec3ef67a1246b	SAIB	SAIB	OPEN_BANKING	2027-02-08 09:53:22.148288	disconnected	2026-02-14 09:53:55.016114	2a85e411-e1c1-41fe-9920-b16f445a84ee	\N	6bc28740-5200-46bb-a068-3e9c7dc9ba0d	2026-02-09 09:53:55.017481	2026-02-11 10:30:00.03348	01KGM6NYJGHNW2YEHZ1AKQG13H	798	{}
urn:PASP:consent-f5f907c8-40b7-4bf3-a5a2-78e56c8c6936	6983456363581af933187ad5	SAIB	SAIB	OPEN_BANKING	2027-02-08 10:11:53.552746	disconnected	2026-02-14 10:12:21.354374	577e4a68-b9df-490e-8c4f-ad7c4d30560b	\N	cc414645-a33e-4063-9187-bb310bf838da	2026-02-09 10:12:21.35654	2026-02-11 10:30:00.063376	01KGM6NYJGHNW2YEHZ1AKQG13H	803	{}
urn:PASP:consent-73da0671-109b-4fa4-a019-0ff55af30160	6989b57661208d89c77c0864	SAIB	SAIB	OPEN_BANKING	2027-02-08 10:25:21.731453	disconnected	2026-02-14 10:25:50.058574	44a3c00b-d3f9-47a9-81e0-d9cb6a78125d	\N	7b571d71-124a-45ef-90b1-b2645320880d	2026-02-09 10:25:50.059901	2026-02-11 10:30:00.153074	01KGM6NYJGHNW2YEHZ1AKQG13H	805	{}
urn:PASP:consent-2f5a2ac2-e46e-4a5f-935e-a5017d567987	6989bde561208d89c77c0b78	SAIB	SAIB	OPEN_BANKING	2027-02-08 11:01:33.710714	disconnected	2026-02-14 11:02:23.972414	c200c53c-07f6-42f5-8e5e-6e6f89eb5684	\N	060207b7-72ca-4ef0-afa5-298ec38d97ee	2026-02-09 11:02:23.973755	2026-02-11 11:30:00.03006	01KGM6NYJGHNW2YEHZ1AKQG13H	810	{}
urn:PASP:consent-efb0daa6-1205-46df-ad2b-89d7daf95eda	6989c80661208d89c77c0f0a	SAIB	SAIB	OPEN_BANKING	2027-02-08 11:47:48.37108	disconnected	2026-02-14 11:48:27.310525	7049835d-20fd-401f-adbc-aa385f34e2d9	\N	91266809-cede-4a50-805f-34272380f87f	2026-02-09 11:48:27.312558	2026-02-11 12:30:00.024909	01KGM6NYJGHNW2YEHZ1AKQG13H	812	{}
urn:PASP:consent-01b5779a-bf50-44ba-a353-2f07d7d22766	6989db4061208d89c77c1c26	SAIB	SAIB	OPEN_BANKING	2027-02-08 13:06:18.87182	disconnected	2026-02-14 13:06:47.886848	4c778f8b-b081-406d-8d7a-1c463a5d8b1f	\N	51ff4d66-7bf1-45bd-94a4-57f0726abf76	2026-02-09 13:06:47.8882	2026-02-11 13:30:00.028566	01KGM6NYJGHNW2YEHZ1AKQG13H	814	{}
urn:PASP:consent-f82966fb-33fc-4527-a8ee-0a5bb1685707	1093595476	SAIB	SAIB	OPEN_BANKING	2027-02-08 22:23:44.708193	disconnected	2026-02-14 22:24:41.524395	1d88772d-ce41-4088-8902-251f57c4a082	\N	a8a0e219-7ce7-4853-a828-b334cc4039c6	2026-02-09 22:24:41.525967	2026-02-11 22:30:00.030992	01K920FBZBT9NE8WRP8BQSHSBQ	822	{}
urn:PASP:consent-8d3a436a-9dd8-4cd9-9718-a4d986fb1dd7	1091017572	SAIB	SAIB	OPEN_BANKING	2027-02-07 08:50:23.425618	disconnected	2026-02-13 08:51:03.552926	77a637ff-0861-41d9-a855-53bb2aebe867	\N	b18f0d2e-ea8e-4c0f-83c8-8f257b3d3d00	2026-02-08 08:51:03.554454	2026-02-10 09:30:00.029258	01KEPJV9BCJJG11H37ZMXR47CE	780	{}
urn:PASP:consent-445c0c6e-0f40-44ce-87ed-3a14399cbdd3	acctest127	SAIB	SAIB	OPEN_BANKING	2027-02-09 09:13:58.296803	connected	2026-02-15 09:49:54.15935	2b294329-5463-4fbf-a906-bffff4c029c3	\N	fc287882-c457-4c96-be02-9ae61fc4acc6	2026-02-10 09:49:54.16103	2026-02-10 09:49:54.161032	01K920FBZBT9NE8WRP8BQSHSBQ	825	{}
urn:PASP:consent-10e25313-4b9b-4caa-91e6-694d9a752080	CR00001	SAIB	SAIB	OPEN_BANKING	2027-02-09 10:43:53.447991	connected	2026-02-15 10:44:50.565988	3af8f600-2c57-44bc-8b8b-eda25232b4a3	\N	5fa89e39-962c-43fb-9065-24b55b2122ca	2026-02-10 10:44:50.567495	2026-02-10 10:44:50.567498	01K920FBZBT9NE8WRP8BQSHSBQ	826	{}
urn:PASP:consent-dba374cb-9af1-408b-92a5-9681d01050e8	acctest128	SAIB	SAIB	OPEN_BANKING	2027-02-09 12:03:01.2998	connected	2026-02-15 12:03:28.235809	4a0a7844-4fb3-496c-9bda-3fdff8d17b36	\N	a8d02e45-de24-4406-932d-209426602325	2026-02-10 12:03:28.237715	2026-02-10 12:03:28.237717	01K920FBZBT9NE8WRP8BQSHSBQ	827	{}
urn:PASP:consent-da991090-3303-452a-ba2f-19871e4a6910	acctest129	SAIB	SAIB	OPEN_BANKING	2027-02-09 12:31:39.106878	connected	2026-02-15 12:31:59.456769	7a7cb26d-fd75-41d8-99aa-56d57a78bd43	\N	d295796e-5df1-4eac-8020-77ebba31062b	2026-02-10 12:31:59.458224	2026-02-10 12:31:59.458226	01K920FBZBT9NE8WRP8BQSHSBQ	828	{}
urn:PASP:consent-1b9c2939-5a57-4bbb-bbce-f8e83ce58875	acctest130	SAIB	SAIB	OPEN_BANKING	2027-02-09 12:53:15.127381	connected	2026-02-15 12:53:51.346509	e429e7ff-009e-47ba-b14a-a22b3bd41800	\N	671e00e6-d8f8-4d51-baf4-a254ee302b06	2026-02-10 12:53:51.348284	2026-02-10 12:53:51.348286	01K920FBZBT9NE8WRP8BQSHSBQ	829	{}
urn:PASP:consent-1917e231-4bae-4240-9813-97a84080fd7f	1201112933	SAIB	SAIB	OPEN_BANKING	2027-02-09 14:03:35.531103	connected	2026-02-15 14:04:29.437515	3c7221da-886b-4ed5-a626-c08853598e75	\N	abc05e74-2dc8-4f5d-8b8a-7c34b6960f49	2026-02-10 14:04:29.439035	2026-02-10 14:04:33.876884	01K9PVDCNZ9FZ33PFSWJK6ASFR	830	{"profile_accounts_link": {"PSUId": "1201112933", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "830", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-2ff2bcad-7ebe-4c2e-99d3-4a0bffd8cd22	CR00002	SAIB	SAIB	OPEN_BANKING	2027-02-10 08:48:53.15516	connected	2026-02-16 08:49:40.526899	ded74e73-c501-43c2-813f-636deaf677da	\N	0a3a391c-cf46-4203-8e41-1216645eb3ce	2026-02-11 08:49:40.529471	2026-02-11 08:49:40.529474	01K920FBZBT9NE8WRP8BQSHSBQ	832	{}
urn:PASP:consent-68a64a6b-0c9d-4bb2-9f19-b1970dd56a44	698b469b61208d89c77c720b	SAIB	SAIB	OPEN_BANKING	2027-02-10 14:36:25.047249	disconnected	2026-02-16 14:37:07.188958	21710f28-71d6-437e-84f1-807daadd1940	\N	97030e3f-c673-40f2-a12d-f77260f70539	2026-02-11 14:37:07.19062	2026-02-13 15:30:00.03642	01KGM6NYJGHNW2YEHZ1AKQG13H	834	{}
urn:PASP:consent-e81d5acc-3f47-4689-8ba2-8b7e699cb047	acctest131	SAIB	SAIB	OPEN_BANKING	2027-02-14 07:14:15.009566	connected	2026-02-20 07:14:46.150124	c1d5e7db-ab6c-4277-a74e-150c63667ee1	\N	10f843de-e6d7-40a2-9c18-8e0a45018886	2026-02-15 07:14:46.151706	2026-02-15 07:14:46.151708	01K920FBZBT9NE8WRP8BQSHSBQ	836	{}
urn:PASP:consent-bcc5780d-1003-48e1-b0cf-004a28716bdd	acctest132	SAIB	SAIB	OPEN_BANKING	2027-02-14 07:27:03.418947	connected	2026-02-20 07:27:34.408984	12b18209-380e-4067-96ab-c603dca3787c	\N	c76a514c-82a8-47aa-ab61-74a1fc69d94d	2026-02-15 07:27:34.410476	2026-02-15 07:27:34.410479	01K920FBZBT9NE8WRP8BQSHSBQ	837	{}
urn:PASP:consent-66f5d181-e89a-47ac-83f0-8c8098c4ea5f	1091017000	SAIB	SAIB	OPEN_BANKING	2027-02-15 09:35:25.89385	connected	2026-02-21 09:35:47.452218	c5a6ab68-86d1-410f-ad7f-f7c59190eb95	\N	0b622a08-bf3c-4a8a-8ff2-3ffed7e8af37	2026-02-16 09:35:47.453737	2026-02-16 09:35:47.453739	01KEPJV9BCJJG11H37ZMXR47CE	853	{}
urn:PASP:consent-e1f065c0-4ba0-4d72-bcd7-acf593fefceb	1091017001	SAIB	SAIB	OPEN_BANKING	2027-02-15 09:47:55.906719	connected	2026-02-21 09:48:14.513968	761bfa1d-956d-485a-8e2a-0f38de878ec2	\N	2b165965-1606-4773-8531-707c59649f9d	2026-02-16 09:48:14.51551	2026-02-16 09:48:14.515512	01KEPJV9BCJJG11H37ZMXR47CE	856	{}
urn:PASP:consent-910e2ddc-2993-44f1-8274-1d6c75f603d6	1091017002	SAIB	SAIB	OPEN_BANKING	2027-02-15 13:10:36.716135	connected	2026-02-21 13:10:52.254607	7cb415f7-7896-4198-8373-039397840011	\N	935aee2b-1dc5-467d-bdb8-b00e30e1dd6a	2026-02-16 13:10:52.255945	2026-02-16 13:10:52.255947	01KHGTV42YPN1MR5TRT28XGK3B	873	{}
urn:PASP:consent-1e1fad09-3597-4c63-b08e-29b7aacb0266	1096390001	SAIB	SAIB	OPEN_BANKING	2027-02-15 16:01:35.010166	connected	2026-02-21 16:01:50.225004	49390ae4-2f46-4871-bd14-b9720271dc77	\N	a27eae5b-9ab6-4c86-a6b3-713413cc6db1	2026-02-16 16:01:50.226485	2026-02-16 16:01:50.226487	01KEPJV9BCJJG11H37ZMXR47CE	877	{}
urn:PASP:consent-33650970-8f94-43dc-8cf3-05d1c3388fb2	109101700233	SAIB	SAIB	OPEN_BANKING	2027-02-15 17:02:58.553617	connected	2026-02-21 17:03:18.834463	f230ed1a-7b69-4b4a-9f75-f5c3523a2559	\N	b48b9ebd-cbb9-4925-828e-d2940582be0e	2026-02-16 17:03:18.835914	2026-02-16 17:03:18.835916	01KEPJV9BCJJG11H37ZMXR47CE	899	{}
urn:PASP:consent-fea44ae0-f3a2-49bb-8d01-d1fef69610e2	1091017002111	SAIB	SAIB	OPEN_BANKING	2027-02-15 18:09:42.22998	connected	2026-02-21 18:10:08.361853	b1c85c38-2658-48ba-a402-a6408c654bb4	\N	5671f5f1-06e1-4ea9-8019-39ae107fc741	2026-02-16 18:10:08.363435	2026-02-16 18:10:08.363438	01KEPJV9BCJJG11H37ZMXR47CE	902	{}
urn:PASP:consent-ceac75f5-0059-4d38-b096-0d627059fcee	10910170021313	SAIB	SAIB	OPEN_BANKING	2027-02-15 18:25:58.365136	connected	2026-02-21 18:26:22.401986	25ad57d5-5fed-4986-a4b3-f9014fb19578	\N	c550f4cc-99e2-497a-98ce-473ff0c39997	2026-02-16 18:26:22.403433	2026-02-16 18:26:22.403436	01KEPJV9BCJJG11H37ZMXR47CE	904	{}
urn:PASP:consent-2936d618-1cbf-4061-8b37-608e3a4d8344	10910170024d93	SAIB	SAIB	OPEN_BANKING	2027-02-16 07:47:10.620032	connected	2026-02-22 07:47:56.487856	8ba332ac-2084-4cea-bda1-0736bb61e4aa	\N	13696a39-6b53-45de-b191-bda4ed3c301c	2026-02-17 07:47:56.489553	2026-02-17 07:47:56.489556	01KDMSTVVNK6NFM417MNNG2J24	905	{}
urn:PASP:consent-289c8ca2-da1f-4230-b158-83b6b0df1ea9	10910170020699	SAIB	SAIB	OPEN_BANKING	2027-02-16 07:49:58.539474	connected	2026-02-22 07:50:44.91506	568e9d84-66ca-4cf0-98f4-71e61323b142	\N	eb55884c-bf69-4c7c-ad21-a4f7ecc970f6	2026-02-17 07:50:44.916741	2026-02-17 07:50:44.916743	01KDMSTVVNK6NFM417MNNG2J24	907	{}
urn:PASP:consent-6209fc3a-08bf-4ffc-b889-4a80d33f64f3	53535	SAIB	SAIB	OPEN_BANKING	2027-02-15 16:32:05.465925	disconnected	2026-02-21 16:32:18.466824	814f47d9-244b-4c4e-af42-f72437afec0c	\N	1435352f-e13c-487c-ba32-2b85e4b0b2f5	2026-02-16 16:32:18.468381	2026-02-18 17:30:00.051705	01KEPJV9BCJJG11H37ZMXR47CE	892	{}
urn:PASP:consent-3a6498b7-fde2-40cd-b29f-420183ce7003	3535	SAIB	SAIB	OPEN_BANKING	2027-02-15 16:34:51.713172	disconnected	2026-02-21 16:35:06.639404	09b5684f-70ac-48f9-a86e-1cdd7f46ab9a	\N	1f562109-ddd0-4e88-8b28-4bfb0849109e	2026-02-16 16:35:06.640987	2026-02-18 17:30:00.141455	01KEPJV9BCJJG11H37ZMXR47CE	893	{}
urn:PASP:consent-7cb825c7-5d7b-466d-a89b-d0640c24ef05	1091017570	SAIB	SAIB	OPEN_BANKING	2027-02-15 16:49:49.338793	disconnected	2026-02-21 16:50:03.707817	85c9ef40-a93e-4d73-9b95-f92dcfb37abd	\N	a8fc163c-c8d7-4c09-8eff-b1e3922976d3	2026-02-16 16:50:03.709454	2026-02-18 17:30:00.258014	01KEPJV9BCJJG11H37ZMXR47CE	898	{}
urn:PASP:consent-71b0f54d-2e42-4b5a-a402-453fbe568b80	10910170025b11	SAIB	SAIB	OPEN_BANKING	2027-02-16 08:13:15.528613	connected	2026-02-22 08:13:43.481316	78042ab2-a3b6-4660-8be9-c76ab033ed75	\N	1180416d-caa4-4ca7-8854-0b7f1d8597b3	2026-02-17 08:13:43.482761	2026-02-17 08:13:43.482763	01KDMSTVVNK6NFM417MNNG2J24	908	{}
urn:PASP:consent-e8fe0b2f-82dc-4aa3-add7-3750d50c810f	109101700263e0	SAIB	SAIB	OPEN_BANKING	2027-02-16 09:26:55.32273	connected	2026-02-22 09:27:51.429752	1e6b52e2-f93f-47fe-b2a9-2ad2e7bff383	\N	9578cde4-c8ff-4236-aea3-3b17481b1ac3	2026-02-17 09:27:51.431292	2026-02-17 09:27:51.431294	01KDMSTVVNK6NFM417MNNG2J24	909	{}
urn:PASP:consent-62921b24-50db-4fc4-97db-18193ba0b74c	1091017002fd7e	SAIB	SAIB	OPEN_BANKING	2027-02-16 11:24:15.495552	connected	2026-02-22 11:25:23.469641	2bbe4def-c043-406c-ac3a-6c234f4c95ef	\N	34b8db0d-9789-4ed9-9f3b-9c3651a63bdf	2026-02-17 11:25:23.472171	2026-02-17 11:25:23.472173	01KDMSTVVNK6NFM417MNNG2J24	910	{}
urn:PASP:consent-054e684c-8051-4add-8694-e6d9053e8a20	10910170028c80	SAIB	SAIB	OPEN_BANKING	2027-02-16 12:37:51.370665	connected	2026-02-22 12:38:08.836881	391e10d5-a98b-46b6-8765-cb220e3dbf4c	\N	8ddf3596-fc62-4e86-b2d2-83fd984875c1	2026-02-17 12:38:08.838326	2026-02-17 12:38:08.838329	01KDMSTVVNK6NFM417MNNG2J24	911	{}
urn:PASP:consent-29129b29-0f18-415c-bbe5-c6fd7bcd7a0c	acctest133	SAIB	SAIB	OPEN_BANKING	2027-02-16 12:57:56.619294	connected	2026-02-22 12:58:43.806861	02e73506-1bca-4cef-a8ef-adb7b23d853a	\N	ebbfdd82-166e-4aeb-946a-50d71696ac78	2026-02-17 12:58:43.809866	2026-02-17 12:58:43.809868	01K920FBZBT9NE8WRP8BQSHSBQ	912	{}
urn:PASP:consent-4b457505-351b-43ff-8245-f98ce8c96f7c	10910170024a10	SAIB	SAIB	OPEN_BANKING	2027-02-16 13:00:44.54225	connected	2026-02-22 13:01:05.655951	db81f94d-276a-4cf7-9586-afc1d979c067	\N	7864ae79-4701-4452-a960-21b1d56b8acd	2026-02-17 13:01:05.657787	2026-02-17 13:01:05.657789	01KDMSTVVNK6NFM417MNNG2J24	913	{}
urn:PASP:consent-052ba931-2c8d-48f0-b242-48e8861554e2	1091017002c269	SAIB	SAIB	OPEN_BANKING	2027-02-16 13:09:08.704267	connected	2026-02-22 13:09:33.060966	d95020c9-4ae2-48d2-897c-dafbe4e44349	\N	1d286afc-c5a5-4ed8-b3fc-efc652c8702b	2026-02-17 13:09:33.062879	2026-02-17 13:09:33.062882	01KDMSTVVNK6NFM417MNNG2J24	914	{}
urn:PASP:consent-653b0d48-d81f-47d7-b99e-3f97a764c7ed	1091017002e628	SAIB	SAIB	OPEN_BANKING	2027-02-21 14:02:53.884012	connected	2026-02-27 14:03:42.68905	0f9259fb-841a-4a9a-a8b7-ee696148fccd	\N	6d972aa7-0e1a-4180-9365-98637115f3b2	2026-02-22 14:03:42.690838	2026-02-22 14:03:42.690841	01KDMSTVVNK6NFM417MNNG2J24	916	{}
urn:PASP:consent-dde41da0-22e3-4809-aa67-1cff7651ad92	109639000096b9	SAIB	SAIB	OPEN_BANKING	2027-02-21 15:31:41.661806	connected	2026-02-27 15:32:02.842068	c141a0b8-b9ce-4348-9554-48e10343ec29	\N	a8abca25-99a9-4fa9-8b83-d0d9c44e2e8a	2026-02-22 15:32:02.844311	2026-02-22 15:32:02.844313	01KDMSTVVNK6NFM417MNNG2J24	917	{}
urn:PASP:consent-c002d895-79f3-4ec7-ab1d-fc2d9c39031e	10963900009b47	SAIB	SAIB	OPEN_BANKING	2027-02-21 15:57:21.944747	connected	2026-02-27 15:57:42.48876	2812b963-8ec0-401d-bd88-fe15962b2ea7	\N	e78c062f-4dab-4775-9d6a-06d5006e4c21	2026-02-22 15:57:42.490226	2026-02-22 15:57:42.490229	01KDMSTVVNK6NFM417MNNG2J24	919	{}
urn:PASP:consent-82a759a7-6f6c-4ba9-89f4-599d9ec5db89	10963900000b5a	SAIB	SAIB	OPEN_BANKING	2027-02-21 19:34:48.956748	connected	2026-02-27 19:49:43.018702	52ca6dfc-c6af-4c4d-bd20-663cc1e2563b	\N	27ea3d9a-71f6-4e80-b735-399e44206fd2	2026-02-22 19:49:43.020285	2026-02-22 19:49:43.020288	01KDMSTVVNK6NFM417MNNG2J24	921	{}
urn:PASP:consent-ab228126-1a6b-4f29-944f-f2821738e4ef	1096390000211e	SAIB	SAIB	OPEN_BANKING	2027-02-21 20:17:26.234711	connected	2026-02-27 20:20:58.385589	634f31ad-d2de-462c-a288-51c556302c01	\N	c6dd43c8-2e26-436d-b89f-bcb656618035	2026-02-22 20:20:58.387171	2026-02-22 20:20:58.387173	01KDMSTVVNK6NFM417MNNG2J24	922	{}
urn:PASP:consent-b247ba9d-ace0-44ac-b98e-8c113851dba0	1096390000f067	SAIB	SAIB	OPEN_BANKING	2027-02-21 20:29:32.724612	connected	2026-02-27 20:29:52.484299	8f75a9c1-5713-4bc3-98c1-aeeec0808bb8	\N	db1f93c3-ab4e-4465-a7b7-b903fc00baa8	2026-02-22 20:29:52.486055	2026-02-22 20:29:52.486057	01KDMSTVVNK6NFM417MNNG2J24	923	{}
urn:PASP:consent-355c25d9-a666-456a-94bf-333e6b9ea0a8	1096390000d7d8	SAIB	SAIB	OPEN_BANKING	2027-02-21 20:33:44.743946	connected	2026-02-27 20:34:03.038765	12e78a69-2ff3-4c8b-a2dd-f61ae046ded0	\N	df610f59-de32-4ad1-9a2b-911cbbc581fb	2026-02-22 20:34:03.040759	2026-02-22 20:34:03.040761	01KDMSTVVNK6NFM417MNNG2J24	924	{}
urn:PASP:consent-69acc8ac-bf89-4adf-a446-76deb12abcd5	1096390000e151	SAIB	SAIB	OPEN_BANKING	2027-02-21 21:48:05.961933	connected	2026-02-27 21:49:42.753314	c928a269-7af6-4e07-801c-09e95e658e2b	\N	52365475-b9d1-4cea-8668-67e9a7f1862c	2026-02-22 21:49:42.754928	2026-02-22 21:49:42.754931	01KDMSTVVNK6NFM417MNNG2J24	926	{}
urn:PASP:consent-54ed13b5-61b4-42cc-a585-ababbfa4386f	10963900000f32	SAIB	SAIB	OPEN_BANKING	2027-02-21 22:33:22.931046	connected	2026-02-27 22:33:40.745805	dc64b7a5-21e4-4d1b-a463-f9ce0dbb38ae	\N	bb38f46a-4acd-4103-bfe7-1422f40865e7	2026-02-22 22:33:40.74742	2026-02-22 22:33:40.747423	01KDMSTVVNK6NFM417MNNG2J24	927	{}
urn:PASP:consent-ee61cc55-59d2-4308-9d0e-887eb765cab9	10963900007480	SAIB	SAIB	OPEN_BANKING	2027-02-21 23:39:30.134319	connected	2026-02-27 23:39:50.755553	2598c2af-9f46-473d-b86d-4a96460783e1	\N	6134712a-06b6-4f15-a8e6-bf40155d42d4	2026-02-22 23:39:50.757131	2026-02-22 23:39:50.757134	01KDMSTVVNK6NFM417MNNG2J24	928	{}
urn:PASP:consent-3855e001-f755-4fdc-b839-cc90273f9268	10963900006c06	SAIB	SAIB	OPEN_BANKING	2027-02-21 23:51:37.856796	connected	2026-02-27 23:51:58.140183	ac277818-7c9e-47b8-a3ee-91fde1fcbf96	\N	5aa0d5a4-1aa4-440b-acb9-d1d53143547e	2026-02-22 23:51:58.141571	2026-02-22 23:51:58.141573	01KDMSTVVNK6NFM417MNNG2J24	929	{}
urn:PASP:consent-40126eb9-1dc4-445a-bea5-7bd29cdd1f97	1096390000ba52	SAIB	SAIB	OPEN_BANKING	2027-02-21 23:52:41.788925	connected	2026-02-27 23:52:58.919718	d28fc762-ab15-4967-9385-d602ce815d50	\N	7d8d9e4f-d560-4c30-8528-4e0ea646d0b5	2026-02-22 23:52:58.921411	2026-02-22 23:52:58.921413	01KDMSTVVNK6NFM417MNNG2J24	930	{}
urn:PASP:consent-3a2cba3d-6273-4357-8fa2-3d9483b19d0f	10963900007e2c	SAIB	SAIB	OPEN_BANKING	2027-02-22 01:56:39.89692	connected	2026-02-28 01:57:01.37333	cd0d34ea-749d-40c1-8353-215fdb5a4b8f	\N	ffd4c838-1242-4d17-8b5a-ebfb94546e64	2026-02-23 01:57:01.374974	2026-02-23 01:57:01.374976	01KDMSTVVNK6NFM417MNNG2J24	931	{}
urn:PASP:consent-e3253044-827b-4a65-90f0-517d32b5139c	109639000093a7	SAIB	SAIB	OPEN_BANKING	2027-02-22 02:12:27.003668	connected	2026-02-28 02:12:53.844893	d46016bf-d525-49e0-9b66-991f63c6ed8d	\N	2df5bbb8-f1d5-4480-bf4c-7414afb24cbe	2026-02-23 02:12:53.846432	2026-02-23 02:12:53.846434	01KDMSTVVNK6NFM417MNNG2J24	933	{}
urn:PASP:consent-c0000a2f-1de8-49da-a34d-c1b267eff490	1096390000b63e	SAIB	SAIB	OPEN_BANKING	2027-02-22 02:41:36.39082	connected	2026-02-28 02:41:57.278902	a597579a-b44e-4fd7-8f4e-97cc292fafee	\N	ddabf2d2-1575-4b2e-867b-b40b96408ce9	2026-02-23 02:41:57.280429	2026-02-23 02:41:57.280432	01KDMSTVVNK6NFM417MNNG2J24	934	{}
urn:PASP:consent-4eaa4cc1-4b99-4d5d-b104-d604cfc08c45	1096390000de78	SAIB	SAIB	OPEN_BANKING	2027-02-22 03:10:04.850227	connected	2026-02-28 03:10:20.996034	a448d3c7-592b-4bee-a1ad-d86dfae78ccb	\N	41e1b2a4-e86b-4c31-933d-a0587b8428b1	2026-02-23 03:10:20.997893	2026-02-23 03:10:20.997895	01KDMSTVVNK6NFM417MNNG2J24	935	{}
urn:PASP:consent-f9dae4b2-e560-481d-9ed5-80cd23b44977	1096390000b84a	SAIB	SAIB	OPEN_BANKING	2027-02-22 06:30:31.678595	connected	2026-02-28 06:30:54.152837	87e82e41-2c89-4153-8970-b9c03388f68e	\N	cf1c0f11-a9a1-4488-a023-2ac139df5fb9	2026-02-23 06:30:54.154465	2026-02-23 06:30:54.154468	01KDMSTVVNK6NFM417MNNG2J24	936	{}
urn:PASP:consent-470634bb-e80a-4687-a4c2-42031f2cc8f0	120047470886	SAIB	SAIB	OPEN_BANKING	2027-02-22 12:35:06.499812	connected	2026-02-28 12:36:41.174693	cab83abf-a6ff-4441-adae-7cadf6bbbd2d	\N	a76a3045-7fd5-4e6a-b623-f5454387cd36	2026-02-23 12:36:41.178371	2026-02-23 12:36:41.178374	01K920FBZBT9NE8WRP8BQSHSBQ	937	{}
urn:PASP:consent-350ad0fa-dcc2-40dc-adb4-7f62e955ae8b	109639000078e3	SAIB	SAIB	OPEN_BANKING	2027-02-22 17:38:25.965679	connected	2026-02-28 17:38:45.352878	2f57ad45-4a57-4cfa-a578-9f9dc738b3d0	\N	2979e460-4401-4b67-8938-301b9ba62fda	2026-02-23 17:38:45.355177	2026-02-23 17:38:45.35518	01KDMSTVVNK6NFM417MNNG2J24	938	{}
urn:PASP:consent-4b9d07ad-7851-40ee-b184-eed4df94cc05	10963900003549	SAIB	SAIB	OPEN_BANKING	2027-02-22 17:50:31.531142	connected	2026-02-28 17:50:53.014476	81f7e455-fe0e-49f2-ad9e-0c20030a0900	\N	c83916e1-a88b-4ab6-b900-11e9b63cf3a9	2026-02-23 17:50:53.015882	2026-02-23 17:50:53.015884	01KEPJV9BCJJG11H37ZMXR47CE	939	{}
urn:PASP:consent-8a55bc7b-0448-45c2-8663-79547952cfd4	109639000053ce	SAIB	SAIB	OPEN_BANKING	2027-02-22 18:03:30.707105	connected	2026-02-28 18:03:59.771997	4e90f673-5eb4-4877-bdb0-7f483dfbddcc	\N	6a3a0cc4-a1e2-45c2-8400-0e9a3b630d3a	2026-02-23 18:03:59.7735	2026-02-23 18:03:59.773502	01KEPJV9BCJJG11H37ZMXR47CE	943	{}
urn:PASP:consent-9cdfbf88-28b7-4800-8716-5cf8c787582a	1096390000c78b	SAIB	SAIB	OPEN_BANKING	2027-02-22 18:05:11.94549	connected	2026-02-28 18:05:33.760971	f7d7e6cc-9fcb-4fa2-9eb5-def86e59ae02	\N	eae8d9b1-b479-4694-b978-45f2a7a7f69c	2026-02-23 18:05:33.762653	2026-02-23 18:05:33.762656	01KDMSTVVNK6NFM417MNNG2J24	944	{}
urn:PASP:consent-81570f6d-1cc2-4928-a265-2217913bcbea	10963900005b20	SAIB	SAIB	OPEN_BANKING	2027-02-22 18:11:26.278404	connected	2026-02-28 18:11:38.816622	518df744-85a3-47f1-ad76-94a00097e864	\N	079bf741-338d-45a0-bbec-17a2570f4e90	2026-02-23 18:11:38.818402	2026-02-23 18:11:38.818405	01KEPJV9BCJJG11H37ZMXR47CE	948	{}
urn:PASP:consent-fcc21d26-4335-4010-8564-bd7b5d269263	109639000048db	SAIB	SAIB	OPEN_BANKING	2027-02-22 18:25:13.868689	connected	2026-02-28 18:25:38.439144	11777480-29f9-4a29-9d1e-85b56a66828c	\N	3045b25c-3267-4ae0-9298-fbb000a52298	2026-02-23 18:25:38.440651	2026-02-23 18:25:38.440654	01KEPJV9BCJJG11H37ZMXR47CE	949	{}
urn:PASP:consent-3584d939-5e6f-4346-81ab-8f2c7e41f507	109639000036e3	SAIB	SAIB	OPEN_BANKING	2027-02-22 18:29:00.65351	connected	2026-02-28 18:29:17.247898	dc8554c2-5091-4df6-bdab-eea9572b82e9	\N	47793a4c-0cea-4752-a8ee-9f916c2b8841	2026-02-23 18:29:17.249397	2026-02-23 18:29:17.2494	01KDMSTVVNK6NFM417MNNG2J24	950	{}
urn:PASP:consent-83882d05-cc4b-4ec9-8bba-b96653beb91d	10963900001db3	SAIB	SAIB	OPEN_BANKING	2027-02-22 19:46:24.813234	connected	2026-02-28 19:46:42.626891	a86d266d-6e50-4c04-9902-86c2420ca27b	\N	69c974e7-bd50-4ba7-a5e5-c375daa93db5	2026-02-23 19:46:42.628545	2026-02-23 19:46:42.628547	01KEPJV9BCJJG11H37ZMXR47CE	951	{}
urn:PASP:consent-d82413f6-416a-4f97-9e6d-29dad6cc1f29	10963900007c5f	SAIB	SAIB	OPEN_BANKING	2027-02-23 12:38:53.07379	connected	2026-03-01 12:39:14.176199	2a9ac767-6cbd-48cc-ae63-fec9e9322162	\N	a5f9e976-3051-4151-b997-2c766f121655	2026-02-24 12:39:14.179466	2026-02-24 12:39:14.179468	01KEPJV9BCJJG11H37ZMXR47CE	952	{}
urn:PASP:consent-022dbbaa-92f1-451c-ac81-4135e5dc82f6	10963900009d98	SAIB	SAIB	OPEN_BANKING	2027-02-23 12:41:09.183769	connected	2026-03-01 12:41:26.634285	d8fc8f96-2427-4134-8953-17d5d4e0d92f	\N	43f7de9c-5f9a-4d12-b733-08f3e796bbf1	2026-02-24 12:41:26.635853	2026-02-24 12:41:26.635855	01KEPJV9BCJJG11H37ZMXR47CE	953	{}
urn:PASP:consent-2e322396-e3a9-4150-afc8-c8233b4931bf	109639000011cf	SAIB	SAIB	OPEN_BANKING	2027-02-23 23:14:44.064734	connected	2026-03-01 23:15:02.073634	3020f536-dff9-4da0-9bb7-0847afb8ece7	\N	f8cc9706-7177-4258-aaaa-e472836224a9	2026-02-24 23:15:02.076006	2026-02-24 23:15:02.076008	01KDMSTVVNK6NFM417MNNG2J24	954	{}
urn:PASP:consent-3ec3a5bd-8a1e-4a5d-a438-e56b2a84dfeb	10963900001fc2	SAIB	SAIB	OPEN_BANKING	2027-02-24 00:59:30.94091	connected	2026-03-02 00:59:55.470134	b20a9437-91de-47a1-946e-5391cb537f26	\N	61164632-495e-4603-a30b-2391b39bea54	2026-02-25 00:59:55.471551	2026-02-25 00:59:55.471553	01KEPJV9BCJJG11H37ZMXR47CE	969	{}
urn:SAMA:kac-685d18b2-bce4-4f98-ba58-3bf3ca2a3ab2	120047470886	OBLAB	OBLAB	OPEN_BANKING	2027-02-24 10:05:04.048765	connected	2026-03-02 10:06:55.019089	e7b32bcc-4786-44c8-8cec-860876a5cdfe	\N	c9ea93ea-d84c-49f8-91a2-0e9cf906902c	2026-02-25 10:06:55.020418	2026-02-25 10:06:55.02042	01K920FBZBT9NE8WRP8BQSHSBQ	987	{}
urn:PASP:consent-b0e063b3-464f-49d7-9514-2343924b8e90	109639000001db	SAIB	SAIB	OPEN_BANKING	2027-02-24 22:50:35.836128	connected	2026-03-02 22:51:04.178264	0a5e96a2-1714-4acc-be35-03f13cfb7c54	\N	986e0225-c400-4f43-b170-ead984bf0736	2026-02-25 22:51:04.179793	2026-02-25 22:51:04.179796	01KDMSTVVNK6NFM417MNNG2J24	989	{}
urn:PASP:consent-c72f3b0d-aa4d-4e45-b5d1-8b38b684ff78	1096390000b765	SAIB	SAIB	OPEN_BANKING	2027-02-25 01:58:28.219077	connected	2026-03-03 01:58:52.021957	ec730676-390b-46e9-8c85-b4d03c09eae2	\N	e93d73ef-a994-48dc-abb9-abc31b89de36	2026-02-26 01:58:52.023229	2026-02-26 01:58:52.023231	01KDMSTVVNK6NFM417MNNG2J24	994	{}
urn:PASP:consent-579f4d3e-c2c9-4ee4-a3c7-d47e9cd79ab3	1096390000f938	SAIB	SAIB	OPEN_BANKING	2027-02-25 02:23:04.167156	connected	2026-03-03 02:25:40.223325	62eb3f28-15dc-4555-a3b6-b9ade0651b0a	\N	713dbd92-5450-4854-9d95-36312616e232	2026-02-26 02:25:40.224865	2026-02-26 02:25:40.224868	01KDMSTVVNK6NFM417MNNG2J24	995	{}
urn:PASP:consent-6b34796d-bc17-49e4-8ac2-90ed7c95ffab	109639000007d9	SAIB	SAIB	OPEN_BANKING	2027-02-25 02:46:41.630745	connected	2026-03-03 02:47:21.974353	1600424d-284b-43f4-b368-2bebfafdfe4b	\N	cea14cbb-6d6a-43c6-937f-edd1112b0d4f	2026-02-26 02:47:21.975879	2026-02-26 02:47:21.975882	01KDMSTVVNK6NFM417MNNG2J24	1001	{}
urn:PASP:consent-022301e2-bdc9-4806-984f-b06874743577	109639000029d3	SAIB	SAIB	OPEN_BANKING	2027-02-25 04:59:22.412825	connected	2026-03-03 04:59:55.238138	70013dc7-2884-4daa-9798-9dcb2d6511d2	\N	43891e5c-0aca-4c5d-963c-a556be8b6350	2026-02-26 04:59:55.239515	2026-02-26 04:59:55.239518	01KEPJV9BCJJG11H37ZMXR47CE	1006	{}
urn:PASP:consent-4932e124-cc22-4a5c-b6ff-983bc012dc61	1096390000f2b8	SAIB	SAIB	OPEN_BANKING	2027-03-03 06:04:09.576645	connected	2026-03-09 06:06:32.302104	2ca46e31-e08f-4ac5-8a0c-9e30d44dce4f	\N	98da7aa4-1ef8-4a80-886b-102e62f715aa	2026-03-04 06:06:32.304941	2026-03-04 06:06:32.304943	01KEPJV9BCJJG11H37ZMXR47CE	1020	{}
urn:PASP:consent-e1eb1b04-d418-4314-9a47-aafaef365a04	1096390000cbff	SAIB	SAIB	OPEN_BANKING	2027-03-03 08:02:36.528498	connected	2026-03-09 08:04:27.81326	d606d970-4f4d-4655-8c67-be4b814ecabb	\N	b6e287a0-975f-432b-885f-5c447c82ef0b	2026-03-04 08:04:27.814836	2026-03-04 08:04:27.814838	01KEPJV9BCJJG11H37ZMXR47CE	1030	{}
urn:PASP:consent-c88eb387-6c2e-493a-aad7-ef5973f06589	1096390000f071	SAIB	SAIB	OPEN_BANKING	2027-03-03 08:11:48.556927	connected	2026-03-09 08:14:28.271525	46aad87e-3982-495d-8e8d-f4f13c9af74d	\N	5d9a0cbc-7238-4ea2-b289-952f5d4bbf30	2026-03-04 08:14:28.273131	2026-03-04 08:14:28.273133	01KEPJV9BCJJG11H37ZMXR47CE	1031	{}
urn:PASP:consent-5e899bf5-b4a4-4db2-86ff-e32e323c8cea	10963900007b38	SAIB	SAIB	OPEN_BANKING	2027-03-03 15:17:00.679972	connected	2026-03-09 15:17:25.389885	cff436e4-8494-43dc-8395-1bbebd1e15be	\N	1ee2124e-a6c7-4ebd-bf5d-df6556956ae4	2026-03-04 15:17:25.392292	2026-03-04 15:17:25.392295	01KEPJV9BCJJG11H37ZMXR47CE	1035	{}
urn:PASP:consent-e3a2a794-4db4-4182-8fed-cc1b5844a680	10963900004e1b	SAIB	SAIB	OPEN_BANKING	2027-03-03 15:50:02.283603	connected	2026-03-09 15:52:03.542095	f63c1ebd-6021-4bc3-9ff7-8dc571c31273	\N	06485112-5c31-4ab4-a334-ede69fd7488a	2026-03-04 15:52:03.543528	2026-03-04 15:52:03.54353	01KEPJV9BCJJG11H37ZMXR47CE	1044	{}
urn:PASP:consent-ee696078-8b7a-43ff-864f-766c13d0db21	10963900002d24	SAIB	SAIB	OPEN_BANKING	2027-03-04 09:00:01.632097	connected	2026-03-10 09:01:02.659764	a9b45edf-3314-4b31-9480-656e799dce49	\N	f38b3bcf-3f08-4cad-a2ce-a4ffb3f26835	2026-03-05 09:01:02.661268	2026-03-05 09:01:02.661271	01KEPJV9BCJJG11H37ZMXR47CE	1051	{}
urn:PASP:consent-ab315d74-3d44-4b22-b403-df1bea05105a	10963900004944	SAIB	SAIB	OPEN_BANKING	2027-03-04 09:18:34.741163	connected	2026-03-10 09:19:25.819774	dd58da03-2faf-44ed-bc69-e9cc7f2f6fb0	\N	a6eeca12-b2d6-4397-b940-ee051ea4d17a	2026-03-05 09:19:25.821125	2026-03-05 09:19:25.821128	01KEPJV9BCJJG11H37ZMXR47CE	1052	{}
urn:PASP:consent-1c194939-4dbe-426a-b70b-dc63527a015b	1096390000a7f6	SAIB	SAIB	OPEN_BANKING	2027-03-04 10:09:00.153737	connected	2026-03-10 10:09:19.041045	62a1519e-e59d-4db3-bc97-ccbd1f2bc686	\N	1cf466bb-91fa-4990-bb99-02417601f345	2026-03-05 10:09:19.042439	2026-03-05 10:09:19.042441	01KEPJV9BCJJG11H37ZMXR47CE	1056	{}
urn:PASP:consent-f288a579-c803-42c0-aeaa-061b20dfd71b	1096390000c433	SAIB	SAIB	OPEN_BANKING	2027-03-08 08:07:09.090969	connected	2026-03-14 08:07:40.136512	758e369d-93d2-4d9a-9aa5-0d14a9c486bc	\N	7468d059-19e4-4e21-b1b4-103ff286ed4c	2026-03-09 08:07:40.137908	2026-03-09 08:07:40.13791	01KEPJV9BCJJG11H37ZMXR47CE	1071	{}
urn:PASP:consent-6a8977f9-4de3-45c2-a072-4378a34be0e6	acctest302	SAIB	SAIB	OPEN_BANKING	2027-03-09 08:20:57.050374	connected	2026-03-15 08:21:23.566808	597094cc-689d-4e89-a912-6b5c65cddc5e	\N	8fa44eb4-b316-4bd6-879b-e01f2268c6f2	2026-03-10 08:21:23.568262	2026-03-10 08:21:23.568265	01K920FBZBT9NE8WRP8BQSHSBQ	1081	{}
urn:PASP:consent-4b3e425f-86ee-4404-95d4-82dc28392f5b	10963900004ac1	SAIB	SAIB	OPEN_BANKING	2027-03-09 12:24:34.600467	connected	2026-03-15 12:24:58.155666	a7f3ee84-4d8a-43cc-8c0e-3d58ca0a7942	\N	1fe3fee3-75b3-457d-b688-9c27b9dbbb33	2026-03-10 12:24:58.156949	2026-03-10 12:24:58.156952	01KDMSTVVNK6NFM417MNNG2J24	1082	{}
urn:PASP:consent-b89bd89f-ec9d-42ce-87cc-af8d02d8b011	10963900004cd6	SAIB	SAIB	OPEN_BANKING	2027-03-09 18:02:28.77154	connected	2026-03-15 18:03:27.6702	0f64c2e4-67e2-4827-9c91-93886810b26a	\N	8130da7c-28fd-4b23-95f9-bd3c650f1f33	2026-03-10 18:03:27.671739	2026-03-10 18:03:27.671741	01KEPJV9BCJJG11H37ZMXR47CE	1083	{}
urn:PASP:consent-44e9d214-1134-4c71-8c1e-25ca67f8f388	1096390000813a	SAIB	SAIB	OPEN_BANKING	2027-03-10 11:08:54.867833	connected	2026-03-16 11:15:52.467173	b82734ef-baef-499d-b802-33c6964a0857	\N	00fbc577-38ad-45e0-bb71-ab851851cde8	2026-03-11 11:15:52.468521	2026-03-11 11:15:52.468523	01KEPJV9BCJJG11H37ZMXR47CE	1106	{}
urn:PASP:consent-334edd52-4224-4d5d-9501-9c18ad5fa833	acctest305	SAIB	SAIB	OPEN_BANKING	2027-03-10 12:04:53.764064	connected	2026-03-16 12:05:17.416321	40641f3c-9377-44af-bd1a-8de594145cf3	\N	8c3eb466-9db8-4a90-a80a-6d4351d2ea91	2026-03-11 12:05:17.417723	2026-03-11 12:05:17.417725	01K920FBZBT9NE8WRP8BQSHSBQ	1107	{}
urn:PASP:consent-216f54e0-306f-4761-9ef4-a23426818d26	acctest306	SAIB	SAIB	OPEN_BANKING	2027-03-10 12:08:13.817083	connected	2026-03-16 12:08:30.077852	c0c06bc9-2752-4873-8be6-3b93dd126f6b	\N	718a5e35-9a63-46ad-b9a8-f29d7969f166	2026-03-11 12:08:30.079087	2026-03-11 12:08:30.079089	01K920FBZBT9NE8WRP8BQSHSBQ	1108	{}
urn:PASP:consent-1e6713a0-e21f-4921-a6c8-f7c3d3be4cef	1202776975	SAIB	SAIB	OPEN_BANKING	2027-03-10 12:26:32.220184	connected	2026-03-16 12:27:09.584977	f87fb032-947e-4ad3-a0f5-f4231bd4b1cc	\N	9a60206f-7602-4b20-94c3-e2c2a7a08235	2026-03-11 12:27:09.588054	2026-03-11 12:27:09.588056	01K9PVDCNZ9FZ33PFSWJK6ASFR	1110	{}
urn:PASP:consent-310edd5e-8f40-4175-99bf-91cc379c0e30	109639000076e2	SAIB	SAIB	OPEN_BANKING	2027-03-11 08:07:25.34826	connected	2026-03-17 08:08:08.976728	8f3d57e9-cffa-4486-9669-285b951223af	\N	2cb29e25-9245-423e-9d6f-07f08de3dfce	2026-03-12 08:08:08.978182	2026-03-12 08:08:08.978185	01KEPJV9BCJJG11H37ZMXR47CE	1111	{}
urn:PASP:consent-30d0e518-d210-4cb3-8ab2-4b37af669025	acctest304	SAIB	SAIB	OPEN_BANKING	2027-03-10 10:05:05.409818	disconnected	2026-03-16 10:05:27.624405	8ed4d36c-1f27-4593-8a9e-d03087965e0e	\N	57c6553f-8a17-43ed-8091-9c1639410975	2026-03-11 10:05:27.625876	2026-03-13 10:30:00.031339	01K920FBZBT9NE8WRP8BQSHSBQ	1093	{}
urn:PASP:consent-73af7758-222f-44a7-9639-08c88a63c4ef	109639000010c5	SAIB	SAIB	OPEN_BANKING	2027-03-14 08:56:14.350855	connected	2026-03-20 08:56:48.12204	b1eee290-db12-4a8f-93d1-ce8e421a2467	\N	b9dc33ec-6409-49f9-97e9-94bca126661c	2026-03-15 08:56:48.123636	2026-03-15 08:56:48.123638	01KEPJV9BCJJG11H37ZMXR47CE	1112	{}
urn:PASP:consent-26d602ee-df65-40fb-908f-dbdb679aca4e	10963900008c69	SAIB	SAIB	OPEN_BANKING	2027-03-14 09:08:49.627216	connected	2026-03-20 09:09:28.157243	fc15dd7e-1a01-4de2-b9f5-204ad4201122	\N	61c0298d-f06a-4c94-ada6-a9aac90ba494	2026-03-15 09:09:28.158666	2026-03-15 09:09:28.158668	01KEPJV9BCJJG11H37ZMXR47CE	1114	{}
urn:PASP:consent-e0f30421-91f4-442c-b20b-8a93af06f9a3	1096390000cb79	SAIB	SAIB	OPEN_BANKING	2027-03-14 09:23:49.64227	connected	2026-03-20 09:24:29.471186	0f3856d8-83fb-49d5-8412-7b4b9c7b169e	\N	e409c418-8ba2-4ed9-8c20-d293ae92de1e	2026-03-15 09:24:29.472479	2026-03-15 09:24:29.472481	01KEPJV9BCJJG11H37ZMXR47CE	1116	{}
urn:PASP:consent-93e9b0af-1744-4516-b7f5-c90eeba625f6	109639000079e3	SAIB	SAIB	OPEN_BANKING	2027-03-21 06:15:07.425189	connected	2026-03-27 06:15:38.036495	5878bd26-03a6-494b-b1a6-7f7c9a9769e5	\N	26387121-a55b-4670-b062-7f0b66e75326	2026-03-22 06:15:38.039789	2026-03-22 06:15:38.039791	01KEPJV9BCJJG11H37ZMXR47CE	1126	{}
urn:PASP:consent-1c6c0f35-8480-4f3b-bad0-15ee1a02550d	1096390000307e	SAIB	SAIB	OPEN_BANKING	2027-03-23 05:59:53.185387	connected	2026-03-29 06:00:25.113838	51a83b9f-286b-4576-a29b-4b045b3aaf63	\N	37370d33-0aab-443b-9b6f-22e7df5400ef	2026-03-24 06:00:25.11606	2026-03-24 06:00:25.116062	01KEPJV9BCJJG11H37ZMXR47CE	1128	{}
urn:PASP:consent-fc890a11-763f-413f-a2d5-a7312fea902b	1096390000522c	SAIB	SAIB	OPEN_BANKING	2027-03-23 07:15:58.371545	connected	2026-03-29 07:16:29.033728	92b7fcba-5b09-42b2-905b-d5763b72ce7b	\N	8499b647-b843-4544-9b24-de13d1ca67f1	2026-03-24 07:16:29.035007	2026-03-24 07:16:29.035009	01KEPJV9BCJJG11H37ZMXR47CE	1130	{}
urn:PASP:consent-a14c7321-aac7-4493-ad6a-deb146848b44	109639000058b6	SAIB	SAIB	OPEN_BANKING	2027-03-23 07:21:01.387823	connected	2026-03-29 07:21:50.67184	19a107a5-3eed-495f-b59c-3eb068f46adc	\N	ffea9a83-300f-41dd-ab7f-5325c61472dd	2026-03-24 07:21:50.673903	2026-03-24 07:21:50.673905	01KEPJV9BCJJG11H37ZMXR47CE	1131	{}
urn:PASP:consent-5f70dfbb-3a68-4477-97d6-e0a182e91db8	1096390000a718	SAIB	SAIB	OPEN_BANKING	2027-03-23 07:35:37.365791	connected	2026-03-29 07:36:22.205099	569e4174-a687-46c5-8a5e-0d66cb56d9e5	\N	245c4b28-b72f-4819-9b87-cb0f68f5c0bb	2026-03-24 07:36:22.206412	2026-03-24 07:36:22.206414	01KEPJV9BCJJG11H37ZMXR47CE	1132	{}
urn:PASP:consent-27a5a62b-ba5e-48af-85cf-e3cb906c7ab7	109639000066fd	SAIB	SAIB	OPEN_BANKING	2027-03-24 06:14:58.388263	connected	2026-03-30 06:15:26.041382	925618c0-da57-462f-9baf-c53a30123c32	\N	564a85e2-535d-428c-ba8e-e97fb0e2a288	2026-03-25 06:15:26.042868	2026-03-25 06:15:26.042871	01KEPJV9BCJJG11H37ZMXR47CE	1134	{}
urn:PASP:consent-234b10d1-3f20-4dbd-8af6-0851e5055e19	1096390000d639	SAIB	SAIB	OPEN_BANKING	2027-03-25 05:09:43.374264	connected	2026-03-31 05:10:27.820875	e310fb5f-cf90-4959-8863-5aa5fd67ba86	\N	ea23048f-df78-4987-9847-f310270db8fa	2026-03-26 05:10:27.822886	2026-03-26 05:10:27.822888	01KEPJV9BCJJG11H37ZMXR47CE	1144	{}
urn:PASP:consent-66388fc9-69d9-4c67-a2d9-71aa8d046444	1096390000e814	SAIB	SAIB	OPEN_BANKING	2027-03-29 11:06:46.524654	connected	2026-04-04 11:07:22.308553	024df051-5a0b-4fa5-a81b-eec8a43312d0	\N	65d2728d-20a4-4618-9c3e-3882f17fe04f	2026-03-30 11:07:22.310068	2026-03-30 11:07:22.310071	01KEPJV9BCJJG11H37ZMXR47CE	1146	{}
urn:PASP:consent-319bd551-ceed-42e9-9e3c-ddc890e1458e	acctest311	SAIB	SAIB	OPEN_BANKING	2027-03-29 11:34:37.873028	connected	2026-04-04 11:35:14.400783	0b4c3427-5558-4ff8-9be6-8e971285a8e3	\N	946b972e-237c-495b-920e-fb347b587c71	2026-03-30 11:35:14.402436	2026-03-30 11:35:14.402439	01K920FBZBT9NE8WRP8BQSHSBQ	1149	{}
urn:PASP:consent-dbc20f23-5f7d-475a-b30a-2c314ccb4e82	acctest316	SAIB	SAIB	OPEN_BANKING	2027-03-29 11:57:51.708676	connected	2026-04-04 11:58:25.405716	54afbf72-b951-4aae-832a-a7e79c3e5b8d	\N	d2deeb84-09ab-43fa-a381-8246817b953f	2026-03-30 11:58:25.420432	2026-03-30 11:58:25.420435	01K920FBZBT9NE8WRP8BQSHSBQ	1154	{}
urn:PASP:consent-31139a7e-88b3-4db6-8a5f-95b6fe60c26e	acctest317	SAIB	SAIB	OPEN_BANKING	2027-03-29 12:00:05.853246	connected	2026-04-04 12:00:22.755376	d1296e85-59c0-49d3-a616-9f9df5e9bb98	\N	afc3a2ff-c681-47a4-b434-fd244b107c3d	2026-03-30 12:00:22.757202	2026-03-30 12:00:22.757204	01K920FBZBT9NE8WRP8BQSHSBQ	1155	{}
urn:PASP:consent-794c0990-bceb-4e27-a906-abd619f91ba3	acctest318	SAIB	SAIB	OPEN_BANKING	2027-03-29 12:08:01.991069	connected	2026-04-04 12:08:23.921987	eb3e78c0-79e1-48ce-b16f-2e6c5d674425	\N	21d6e046-d445-4a6e-8a65-ca3c68a325ad	2026-03-30 12:08:23.923363	2026-03-30 12:08:23.923365	01K920FBZBT9NE8WRP8BQSHSBQ	1156	{}
urn:PASP:consent-2888adf0-5259-4751-b205-00ef70f2c6fd	acctest319	SAIB	SAIB	OPEN_BANKING	2027-03-29 12:11:47.710285	connected	2026-04-04 12:12:07.451248	9373bbd1-26b6-43b0-8ed5-6f9d898c1ba5	\N	c7135f75-5c8c-4ba5-a11d-c535a7762256	2026-03-30 12:12:07.454172	2026-03-30 12:12:07.454174	01K920FBZBT9NE8WRP8BQSHSBQ	1157	{}
urn:PASP:consent-297c54e1-534d-493d-a028-be4a6a218426	acctest320	SAIB	SAIB	OPEN_BANKING	2027-03-29 12:27:47.358827	connected	2026-04-04 12:28:07.710509	95515efd-bed6-484a-b8e4-e5f6fba35cd9	\N	b185fe29-5078-4250-bd1a-7ebea058fd5a	2026-03-30 12:28:07.716506	2026-03-30 12:28:07.716508	01K920FBZBT9NE8WRP8BQSHSBQ	1158	{}
urn:PASP:consent-0c03ca31-0b1d-4d81-af30-d1c1cd46bf6d	acctest321	SAIB	SAIB	OPEN_BANKING	2027-03-29 12:29:46.720135	connected	2026-04-04 12:30:04.36124	b06ca09c-c90f-48df-bfb7-fdba7109db9f	\N	00ed0c13-7ddb-4f49-adc0-a381c4b161ca	2026-03-30 12:30:04.363429	2026-03-30 12:30:04.363431	01K920FBZBT9NE8WRP8BQSHSBQ	1159	{}
urn:PASP:consent-6b76e070-4725-4b98-b206-5d3b800fa672	acctest322	SAIB	SAIB	OPEN_BANKING	2027-03-29 13:11:28.136755	connected	2026-04-04 13:12:01.845977	5d34f5ad-e8d6-4df9-9ac7-3a0e322fefa6	\N	25c3c09d-61ab-4d63-88e3-1941b580d7f8	2026-03-30 13:12:01.847981	2026-03-30 13:12:01.847984	01K920FBZBT9NE8WRP8BQSHSBQ	1160	{}
urn:PASP:consent-dc27287e-7632-458f-8480-71bac736fe9c	acctest323	SAIB	SAIB	OPEN_BANKING	2027-03-30 11:10:02.646496	connected	2026-04-05 11:11:22.251811	e3666da0-c15b-4c47-84eb-0dd9bef12b53	\N	47d5f049-6ca3-4d17-9268-d0e8aecec9c1	2026-03-31 11:11:22.259488	2026-03-31 11:11:22.259491	01K920FBZBT9NE8WRP8BQSHSBQ	1161	{}
urn:PASP:consent-798e48ee-68da-4988-84fe-97604e95a19b	1096390000f16a	SAIB	SAIB	OPEN_BANKING	2027-03-30 16:15:46.451211	connected	2026-04-05 16:16:09.288595	51b54ef0-124c-425f-8519-f7cbfd37673b	\N	0a34ce2f-7950-40fd-a3a7-e6ca6babdf65	2026-03-31 16:16:09.290539	2026-03-31 16:16:09.290542	01KEPJV9BCJJG11H37ZMXR47CE	1167	{}
urn:PASP:consent-b0f3dec5-ed8e-4789-bb61-7236c13d7b57	1096390000f977	SAIB	SAIB	OPEN_BANKING	2027-03-31 06:32:55.393055	connected	2026-04-06 06:39:37.973545	70f9bea7-00cf-4346-b3a9-6bdc7915f0b0	\N	bc157b87-2d10-4fb8-96b2-37c730c52c62	2026-04-01 06:39:37.975033	2026-04-01 06:39:37.975036	01KEPJV9BCJJG11H37ZMXR47CE	1168	{}
urn:PASP:consent-416fd458-8b91-4745-98b2-e37454e27c0b	109639000029f3	SAIB	SAIB	OPEN_BANKING	2027-03-31 07:10:22.386188	connected	2026-04-06 07:11:03.723931	acec918c-7ec6-4a88-abb9-206d28ff4667	\N	58ae4d69-2615-45dd-a3dc-9ea1139c02c9	2026-04-01 07:11:03.725399	2026-04-01 07:11:03.725401	01KEPJV9BCJJG11H37ZMXR47CE	1175	{}
urn:PASP:consent-93dfcd2f-58f0-4ab6-9bc4-c5bade2adcdb	1096390000c707	SAIB	SAIB	OPEN_BANKING	2027-03-31 07:28:43.390757	connected	2026-04-06 07:29:12.094167	aaa9b5ea-cdc8-4cba-ae82-693c159af16c	\N	56e9f550-494e-44fa-abf6-140238235c9c	2026-04-01 07:29:12.095599	2026-04-01 07:29:12.095601	01KEPJV9BCJJG11H37ZMXR47CE	1176	{}
urn:PASP:consent-e0413d50-28a3-4a88-8e13-7efa51c66aee	acctest324	SAIB	SAIB	OPEN_BANKING	2027-03-31 14:55:39.088207	connected	2026-04-06 14:56:00.930105	5deccb1c-0ac9-434a-a215-d5d4ad539259	\N	7864f8c0-45a5-4fff-aed6-3ecee54526d1	2026-04-01 14:56:00.931846	2026-04-01 14:56:00.931848	01K920FBZBT9NE8WRP8BQSHSBQ	1177	{}
urn:PASP:consent-e87c8e02-2dad-4982-82da-ccbf2ef88605	acctest325	SAIB	SAIB	OPEN_BANKING	2027-04-01 07:15:37.742205	connected	2026-04-07 07:16:01.205577	dfc13e46-b256-4468-862c-8ff5b6f1d07f	\N	a82d1303-f342-4895-adb5-55d3151aca1e	2026-04-02 07:16:01.207936	2026-04-02 07:16:01.207938	01K920FBZBT9NE8WRP8BQSHSBQ	1178	{}
urn:PASP:consent-d9e26603-1f99-45be-8628-03319adf434b	acctest308	SAIB	SAIB	OPEN_BANKING	2027-04-04 10:09:58.830803	connected	2026-04-10 10:11:35.447916	a24b2606-0bb4-4a3f-bbed-d61bc878391c	\N	ca6f920e-0582-471a-9d5e-90d2dff8f010	2026-04-05 10:11:35.450259	2026-04-05 10:11:35.450261	01K920FBZBT9NE8WRP8BQSHSBQ	1183	{}
urn:PASP:consent-bb7a534b-877e-4d3e-9633-8079718bdec9	acctest309	SAIB	SAIB	OPEN_BANKING	2027-04-04 11:40:38.511379	connected	2026-04-10 11:41:57.825945	8f6e2962-3023-40ea-a73e-3e6a3e0c8ace	\N	ea8b4d9e-190a-48c1-aa73-ae5faebec7b1	2026-04-05 11:41:57.827314	2026-04-05 11:41:57.827317	01K920FBZBT9NE8WRP8BQSHSBQ	1187	{}
urn:PASP:consent-b2d84080-8cec-4ca7-8aae-2ded140c6dce	acctest000	SAIB	SAIB	OPEN_BANKING	2027-04-05 06:39:51.380856	connected	2026-04-11 06:41:07.138621	822add04-e755-4463-aad8-b5739b1ac555	\N	834fa487-06e5-437d-a83b-df0892fcbe74	2026-04-06 06:41:07.140106	2026-04-06 06:41:07.140108	01K920FBZBT9NE8WRP8BQSHSBQ	1194	{}
urn:PASP:consent-5c07bbca-9c1f-49c4-a7f1-943f7e4ea15b	acctest201	SAIB	SAIB	OPEN_BANKING	2027-04-05 09:24:30.358328	connected	2026-04-11 09:24:48.841014	33ebc4b1-9f46-4e85-b197-6dc35e069b54	\N	3f57d8dc-a288-4b28-9ade-5b1452f7ee37	2026-04-06 09:24:48.842759	2026-04-06 09:24:48.842764	01K920FBZBT9NE8WRP8BQSHSBQ	1198	{}
urn:SAMA:kac-4346b29e-4492-48f9-b512-1c7b0f0416d5	acctest00304	OBLAB	OBLAB	OPEN_BANKING	2027-04-05 12:32:00.8267	connected	2026-04-11 12:32:40.330047	70d90928-3be0-476f-ad08-66706054d929	\N	fec258f6-4d8e-4a30-a792-4d43f6871539	2026-04-06 12:32:40.331382	2026-04-06 12:32:40.331385	01K920FBZBT9NE8WRP8BQSHSBQ	1201	{}
urn:PASP:consent-af531b3a-8aee-4150-97b5-e98f5fcbb64c	acctest307	SAIB	SAIB	OPEN_BANKING	2027-04-05 20:08:14.003237	connected	2026-04-11 20:08:37.441125	3374d8bb-a77c-4518-a662-b5f3fcbc45c9	\N	a735c93b-b449-404d-989a-7023e6ef66f5	2026-04-06 20:08:37.442354	2026-04-06 20:08:37.442356	01K920FBZBT9NE8WRP8BQSHSBQ	1207	{}
urn:PASP:consent-773e9d36-366f-4cad-b5a7-187f4c0c0879	acctest00304	SAIB	SAIB	OPEN_BANKING	2027-04-06 09:05:13.401427	connected	2026-04-12 09:05:57.602721	4ee0c59a-8e98-4f0c-bcbe-1b344e2cc3a4	\N	1b8fd6a9-a1bc-469f-ab25-8ce965d98ad7	2026-04-07 09:05:57.603916	2026-04-07 09:05:57.603919	01K920FBZBT9NE8WRP8BQSHSBQ	1212	{}
urn:SAMA:kac-f4b99514-26e4-4632-a837-21a9ba5eefdc	acctest522	OBLAB	OBLAB	OPEN_BANKING	2027-04-06 12:10:24.391389	connected	2026-04-12 12:11:06.444423	90e3e886-ccdd-495b-8039-b62bd50b793a	\N	711ab314-58a7-4609-86c6-ae7c34b6ef66	2026-04-07 12:11:06.445851	2026-04-07 12:11:06.445854	01K920FBZBT9NE8WRP8BQSHSBQ	1215	{}
urn:PASP:consent-066a1577-642d-4664-88d7-ea21c7f8e96f	acctest00	SAIB	SAIB	OPEN_BANKING	2027-04-07 07:50:45.772449	connected	2026-04-13 07:51:24.200091	783b37d0-c636-4dd4-b8bf-71b9931c7cdf	\N	09902e9e-f95b-4498-81ad-b29d92280c68	2026-04-08 07:51:24.201585	2026-04-08 07:51:24.201587	01K920FBZBT9NE8WRP8BQSHSBQ	1217	{}
urn:SAMA:kac-81a2bc07-c3c9-4a4c-a332-4dc9bd70badd	1	OBLAB	OBLAB	OPEN_BANKING	2027-04-06 08:58:06.173099	connected	2026-04-19 09:25:24.426196	7442bb4a-b8b6-4288-8b7f-73daf81b107f	\N	7157c643-14e9-4752-a9fa-2d5ebfc3f052	2026-04-07 08:58:31.906241	2026-04-14 09:25:24.427245	01K920FBZBT9NE8WRP8BQSHSBQ	1211	{}
urn:SAMA:kac-2592bf97-fa3f-4cac-8855-f01b89344a6f	acctest523	OBLAB	OBLAB	OPEN_BANKING	2027-04-07 12:17:25.800802	connected	2026-04-13 12:17:52.516705	988f1df7-f385-416e-9955-a110c8065ad9	\N	0dc5a4cb-f67e-4651-8b19-fe9deedfbaca	2026-04-08 12:17:52.520101	2026-04-08 12:17:52.520105	01K920FBZBT9NE8WRP8BQSHSBQ	1219	{}
urn:PASP:consent-ef5e8827-98d5-41de-b523-49c943971f7e	acctest313	SAIB	SAIB	OPEN_BANKING	2027-04-07 13:49:48.959457	connected	2026-04-13 13:50:30.692546	db1e5eb6-f047-4599-9b3d-bd78f41e3755	\N	ac86616c-da97-43e2-8bd1-3792cd322d5e	2026-04-08 13:50:30.694904	2026-04-08 13:50:30.694907	01K920FBZBT9NE8WRP8BQSHSBQ	1221	{}
urn:PASP:consent-5c3108c3-f2ba-429c-839c-7e325e88280e	28475757646	SAIB	SAIB	OPEN_BANKING	2027-04-07 14:23:13.667954	connected	2026-04-13 14:24:03.667633	04521cb3-91f7-44a3-afab-540dfdf03643	\N	0897bec9-7dfa-4376-885a-b7f4b2860e99	2026-04-08 14:24:03.668984	2026-04-08 14:24:03.668986	01K920FBZBT9NE8WRP8BQSHSBQ	1222	{}
urn:PASP:consent-82aed94b-9bfa-42fe-81ae-e53f6f4954b3	0000000	SAIB	SAIB	OPEN_BANKING	2027-04-07 14:26:02.038889	connected	2026-04-13 14:27:10.534126	b0d2d1cb-20e6-4f59-91d9-2de63cb4f4ab	\N	f61e63f9-58c7-4176-a788-deb704f3628b	2026-04-08 14:27:10.535787	2026-04-08 14:27:10.535789	01K920FBZBT9NE8WRP8BQSHSBQ	1223	{}
urn:PASP:consent-b4a67595-8183-4fb1-a012-f12ad5c4b508	00000020	SAIB	SAIB	OPEN_BANKING	2027-04-07 14:40:58.609543	connected	2026-04-13 14:41:32.487151	2ba81521-ea10-44bd-abcb-0861b7564548	\N	36945596-356c-47bd-9648-4aa24621b52e	2026-04-08 14:41:32.48868	2026-04-08 14:41:32.488683	01K920FBZBT9NE8WRP8BQSHSBQ	1225	{}
urn:PASP:consent-5256fe2a-7b51-426b-a2f1-1732efa4b4d8	CR00025	SAIB	SAIB	OPEN_BANKING	2027-04-08 07:18:40.594507	connected	2026-04-14 07:19:14.002136	d20ffd2e-d903-41b1-ba48-8936df6b64c7	\N	8fd372e7-5824-462b-939d-cbfba274820e	2026-04-09 07:19:14.003423	2026-04-09 07:19:14.003425	01K920FBZBT9NE8WRP8BQSHSBQ	1227	{}
urn:PASP:consent-6231d488-0781-49b4-9f79-09c4c07d3538	acctest1235	SAIB	SAIB	OPEN_BANKING	2027-04-08 07:20:40.730277	connected	2026-04-14 07:21:14.32926	afd1f11c-d6df-48f4-a80f-fc54964d2906	\N	ea27f409-93d3-4b1a-aeb2-643fc098c453	2026-04-09 07:21:14.330948	2026-04-09 07:21:14.33095	01K920FBZBT9NE8WRP8BQSHSBQ	1229	{}
urn:PASP:consent-7acfc803-a8fa-4cea-ae1a-ba0a7f094bb5	acctest310	SAIB	SAIB	OPEN_BANKING	2027-04-08 07:33:00.501932	connected	2026-04-14 07:33:29.475038	9877ea28-d6e7-4280-915e-7e1b32945859	\N	3fc2acd9-c4ba-4943-a5a3-a3bb84ebde41	2026-04-09 07:33:29.476397	2026-04-09 07:33:29.476399	01K920FBZBT9NE8WRP8BQSHSBQ	1231	{}
urn:PASP:consent-adfbf429-9e33-4893-a529-9d68c539a048	acctest134	SAIB	SAIB	OPEN_BANKING	2027-04-11 08:56:08.863259	connected	2026-04-17 08:56:36.929408	4cb3e302-58a3-49fb-8095-8b6a0c78d284	\N	8e9d487f-8382-404b-a458-0d3f6cc72603	2026-04-12 08:56:36.931919	2026-04-12 08:56:36.931921	01K920FBZBT9NE8WRP8BQSHSBQ	1235	{}
urn:PASP:consent-739a66ff-eeef-4908-8e50-b362aee1ae7e	acctest136	SAIB	SAIB	OPEN_BANKING	2027-04-11 09:17:00.429505	connected	2026-04-17 09:17:43.501906	4745bf9c-c4cf-430d-8902-99ed17561170	\N	1ac12782-61c0-428a-8d8f-5849ec64a957	2026-04-12 09:17:43.504648	2026-04-12 09:17:43.50465	01K920FBZBT9NE8WRP8BQSHSBQ	1237	{}
urn:PASP:consent-70000a89-319f-4a78-81c2-339ea37b8757	92992938	SAIB	SAIB	OPEN_BANKING	2027-04-11 09:42:09.561031	connected	2026-04-17 09:43:03.327049	2efb3eb8-cf18-42ef-940b-7d373dc7eca4	\N	97adf923-22d0-4a52-9b17-25743c1ea46d	2026-04-12 09:43:03.328949	2026-04-12 09:43:03.328951	01K920FBZBT9NE8WRP8BQSHSBQ	1239	{}
urn:PASP:consent-a22a5998-166e-4896-9a6c-d407d4f8cfaa	AbrarCorporate	SAIB	SAIB	OPEN_BANKING	2027-04-11 09:42:09.347524	connected	2026-04-17 09:43:08.574228	052da6fb-5a16-41da-8c26-3fa8699e22df	\N	50bcbd23-f7f2-4546-b2f5-e1b6e8c04d32	2026-04-12 09:43:08.576407	2026-04-12 09:43:08.57641	01K920FBZBT9NE8WRP8BQSHSBQ	1238	{}
urn:PASP:consent-0f2cac2f-fba6-4ec6-b35f-79fe553f5f28	884775765	SAIB	SAIB	OPEN_BANKING	2027-04-11 09:50:00.050828	connected	2026-04-17 09:51:06.970973	3afd5052-27b2-4b20-a343-65760d431dbd	\N	57e7a2ac-0ac3-49c6-9014-469394835fee	2026-04-12 09:51:06.972687	2026-04-12 09:51:06.972689	01K920FBZBT9NE8WRP8BQSHSBQ	1240	{}
urn:PASP:consent-587a3067-017d-43a1-8d9a-d7ad4c3bc665	acctest312	SAIB	SAIB	OPEN_BANKING	2027-04-11 13:14:07.162644	connected	2026-04-17 13:15:58.987239	0a8c6357-8cc9-4ad7-a3df-225df396811c	\N	4735dd40-2050-4c62-9b66-f69f24ae172e	2026-04-12 13:15:58.988831	2026-04-12 13:15:58.988835	01K920FBZBT9NE8WRP8BQSHSBQ	1245	{}
urn:PASP:consent-a6ed3a79-7f3a-41c3-b71b-e3fa30dd77c6	acctest001	SAIB	SAIB	OPEN_BANKING	2027-04-12 10:14:20.483487	connected	2026-04-18 10:15:13.7161	6ffb2344-1c26-454c-ad33-f6b679cdb7bc	\N	7d7d885b-be65-44f2-962c-78a4679228cf	2026-04-13 10:15:13.717658	2026-04-13 10:15:13.717661	01K920FBZBT9NE8WRP8BQSHSBQ	1251	{}
urn:PASP:consent-2dbc32b2-81a0-4ac5-aed6-d828d1c4e3df	acctest314	SAIB	SAIB	OPEN_BANKING	2027-04-14 10:53:12.309347	connected	2026-04-20 10:54:05.461646	9a24cab1-f3a6-44c1-8c20-80bb139c23ca	\N	fa2d5df6-9ebd-4f52-b91a-258fe7ad3693	2026-04-15 10:54:05.46512	2026-04-15 10:54:05.465123	01K920FBZBT9NE8WRP8BQSHSBQ	1264	{}
urn:PASP:consent-7013505a-2355-4e89-9824-757e83cd6230	1majid1	SAIB	SAIB	OPEN_BANKING	2027-04-13 08:26:40.371144	disconnected	2026-04-19 08:27:16.541668	17eece3d-4763-4400-b9d0-5e4083d1cc1d	\N	cfaf2c2f-2ab5-4622-af61-9699897cd31c	2026-04-14 08:27:16.543553	2026-04-16 08:30:00.049147	01K9PVDCNZ9FZ33PFSWJK6ASFR	1257	{}
urn:PASP:consent-75d8f441-9b44-4fdc-b38f-0416105e1b4f	1majid12	SAIB	SAIB	OPEN_BANKING	2027-04-13 08:31:42.312938	disconnected	2026-04-19 08:32:31.10296	e66c2bab-f721-4f7b-86e9-059536bb8eec	\N	38bade0d-fce6-4a26-b4dc-262567e9abc1	2026-04-14 08:32:31.104477	2026-04-16 09:30:00.048226	01K9PVDCNZ9FZ33PFSWJK6ASFR	1259	{}
urn:PASP:consent-67bdb819-1573-4881-ae29-68e7bec26961	khalid123	SAIB	SAIB	OPEN_BANKING	2027-04-13 09:01:29.002008	disconnected	2026-04-19 09:02:33.666581	638a28f7-ae52-4899-9dd7-4457cc9b2b77	\N	6a503894-7d86-4e0d-b3d9-b31962e69c05	2026-04-14 09:02:33.670284	2026-04-16 09:30:00.065908	01K9PVDCNZ9FZ33PFSWJK6ASFR	1260	{}
urn:PASP:consent-020d00ab-f3b6-4fc0-8fbf-13d11d0f8c9d	acctest00309	SAIB	SAIB	OPEN_BANKING	2027-04-15 11:38:52.22186	connected	2026-04-21 11:39:20.556304	ce2c9fcb-a89c-45df-b8c8-e92f2b68448a	\N	bb33b6a1-5315-47e7-a335-ffc287076080	2026-04-16 11:39:20.571901	2026-04-16 11:39:20.571904	01K920FBZBT9NE8WRP8BQSHSBQ	1265	{}
urn:PASP:consent-ad3545d7-ebbd-46d9-82ea-f4a422f4ed99	acctest139	SAIB	SAIB	OPEN_BANKING	2027-04-15 11:54:56.574463	connected	2026-04-21 11:55:26.214962	19288bef-7fc2-43ba-897a-69c7f74055be	\N	acc9852e-f00b-4423-a46b-637bff27add5	2026-04-16 11:55:26.217629	2026-04-16 11:55:26.217632	01K920FBZBT9NE8WRP8BQSHSBQ	1267	{}
urn:SAMA:kac-5b1c9dd9-9494-425b-b08e-26c882f1e5a8	1712414695	OBLAB	OBLAB	OPEN_BANKING	2026-11-22 12:39:35.068972	connected	2026-04-24 09:52:04.944559	8b753714-076d-4365-8a47-e0af73b918fa	\N	44abfe82-195d-4bec-9497-265594c83ed9	2025-11-23 12:40:31.235408	2026-04-19 09:52:04.945515	01K9PVDCNZ9FZ33PFSWJK6ASFR	192	{"profile_accounts_link": {"PSUId": "1712414695", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "192", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-1cf14435-fbe6-4be8-8c86-493f38e16daa	1712414695	SAIB	SAIB	OPEN_BANKING	2027-04-18 09:55:13.079289	connected	2026-04-24 09:56:37.116988	724977aa-99da-4cc7-a502-0ed4c368d3a4	\N	6aed9f9d-3fd7-46ae-a75b-d54ae3a72174	2026-04-19 09:56:37.121249	2026-04-19 09:56:43.032093	01K9PVDCNZ9FZ33PFSWJK6ASFR	1268	{"profile_accounts_link": {"PSUId": "1712414695", "ProfileId": "null", "AccountsLinkInfo": {"FetchingType": "PERIODIC", "ResourceTypes": ["ACCOUNTS", "BALANCES", "TRANSACTIONS"], "AccountsLinkId": "1268", "FetchingEndDate": null, "TransactionToDate": null, "TransactionFromDate": null}}}
urn:PASP:consent-7092ba0e-9080-4b66-986b-01d619559274	1096390000	SAIB	SAIB	OPEN_BANKING	2027-04-18 11:26:24.556425	connected	2026-04-24 11:27:11.899781	bea293d7-02e3-4815-8ff9-f83734f610b7	\N	1e9066d7-4c1e-4381-a0a2-813ca9a1e910	2026-04-19 11:27:11.901132	2026-04-19 11:27:11.901134	01KEPJV9BCJJG11H37ZMXR47CE	1275	{}
urn:PASP:consent-fba17241-d8d3-4968-8484-00bb5b3441c6	acctest01309	SAIB	SAIB	OPEN_BANKING	2027-04-20 08:08:44.654142	connected	2026-04-26 08:09:12.23657	d94f369e-2884-42c5-9b8f-bc8fcbe3cae3	\N	6806202d-327c-41c9-8ae7-30153b5a3ba3	2026-04-21 08:09:12.239523	2026-04-21 08:09:12.239525	01K920FBZBT9NE8WRP8BQSHSBQ	1280	{}
urn:PASP:consent-bb18652e-153e-401d-b44a-4623efc7b9c3	BEN-1712414695	SAIB	SAIB	OPEN_BANKING	2027-04-18 10:33:31.967518	disconnected	2026-04-24 10:34:51.887714	b288d8e6-9b6b-4cd1-8d9a-51c513cb8590	\N	47ad8d4a-6e68-419e-a212-0969db5f876c	2026-04-19 10:34:51.8903	2026-04-21 11:30:00.039463	01K9PVDCNZ9FZ33PFSWJK6ASFR	1270	{}
urn:PASP:consent-9cabc5b1-798b-4a70-9bb9-5be787e83c9a	acctest527	SAIB	SAIB	OPEN_BANKING	2027-04-21 12:52:35.091761	connected	2026-04-27 12:53:09.204993	2a53e92f-7f3a-4f9f-8876-2dc322fb5048	\N	7ddbc0de-eb09-404d-8e5f-03da1b4090db	2026-04-22 12:53:09.206419	2026-04-22 12:53:09.206421	01K7EQ30WFSAY41B4PP5RR6HWF	1287	{}
urn:PASP:consent-01626596-5111-4ff5-a91b-3057ccec9257	8	SAIB	SAIB	OPEN_BANKING	2027-04-22 12:28:16.991992	connected	2026-04-28 12:28:44.305054	3403ee45-5df1-4028-8ec8-b7b2a9705c15	\N	95990e99-0dcb-4108-aa99-2cde75847a98	2026-04-23 12:28:44.306477	2026-04-23 12:28:44.306479	01K7EQ30WFSAY41B4PP5RR6HWF	1299	{}
urn:PASP:consent-66205428-e8c8-41e7-96b9-3f382306cbb8	1122233433	SAIB	SAIB	OPEN_BANKING	2027-04-22 13:40:19.211989	connected	2026-04-28 13:41:25.51766	80bc016b-de0c-4b4e-a0b3-d08adc4d0661	\N	f6746fbb-6a13-4994-a26d-299d8e2ceaab	2026-04-23 13:41:25.519028	2026-04-23 13:41:25.51903	01KPX8ZVCFED5CMZ1F38V3JC9X	1300	{}
urn:PASP:consent-24bd79bc-2ea1-40cc-8e62-279e29706bf0	32883747647	SAIB	SAIB	OPEN_BANKING	2027-04-22 13:55:21.411889	connected	2026-04-28 13:55:59.838525	c8f1d8de-453c-4b88-9a38-fe83f2b3bab2	\N	6aa7a073-2841-4a42-9dd4-be5ce725621b	2026-04-23 13:55:59.839975	2026-04-23 13:55:59.839977	01KPX9K5PA0R84ASFRA7H7741K	1301	{}
urn:PASP:consent-f73fd7c6-651e-4c18-a0ea-85ba11507ba9	88888889	SAIB	SAIB	OPEN_BANKING	2027-04-20 16:13:59.530594	disconnected	2026-04-26 16:26:26.600808	86f8414d-c46f-49e1-99ee-541ce3b99eeb	\N	dbf1ac12-77b0-4fff-be4c-7292e8844698	2026-04-21 16:26:26.602543	2026-04-23 16:30:00.038818	01K920FBZBT9NE8WRP8BQSHSBQ	1284	{}
urn:PASP:consent-ef35b7e7-9775-411f-a653-07ea8a11f98c	9xx883jjjd	SAIB	SAIB	OPEN_BANKING	2027-04-20 16:27:14.660618	disconnected	2026-04-26 16:27:39.924027	6f509b83-14e6-4fbd-8255-68a5e64a2d5c	\N	365cee66-3d3d-4f17-b571-3d235315d880	2026-04-21 16:27:39.925265	2026-04-23 16:30:00.054574	01K920FBZBT9NE8WRP8BQSHSBQ	1285	{}
urn:PASP:consent-b9e79458-f7fc-4a97-a569-97f72c7e3fee	acctest315	SAIB	SAIB	OPEN_BANKING	2027-04-25 06:37:09.922258	connected	2026-05-01 06:37:54.360695	4634a74a-a40c-449d-95da-d67d8137b529	\N	56f7567a-4af8-4908-b557-bd844b5d726d	2026-04-26 06:37:54.363626	2026-04-26 06:37:54.363629	01K920FBZBT9NE8WRP8BQSHSBQ	1304	{}
urn:PASP:consent-d9d8feed-da8d-4bb3-9fe8-280adf2a8532	38837	SAIB	SAIB	OPEN_BANKING	2027-04-25 09:30:26.800147	connected	2026-05-01 10:28:42.629141	495b1928-63de-4e86-bfb5-071579fc6018	\N	79fe070d-3faf-4be4-89c2-717d78cf47f4	2026-04-26 10:28:42.630641	2026-04-26 10:28:42.630644	01K920FBZBT9NE8WRP8BQSHSBQ	1306	{}
\.


--
-- Data for Name: verified_merchants; Type: TABLE DATA; Schema: darahim; Owner: postgres
--

COPY darahim.verified_merchants (id, verified_by, instagram_handle, description, created_at, updated_at, data, name, logo, category_id, sub_category_global_id, name_ar) FROM stdin;
\.


--
-- Data for Name: verified_merchants_suggestions; Type: TABLE DATA; Schema: darahim; Owner: postgres
--

COPY darahim.verified_merchants_suggestions (id, transaction_id, user_id, merchant_id, suggested_name, merchant_url, created_at, updated_at) FROM stdin;
\.


--
-- Name: neotek_account_link_id_seq; Type: SEQUENCE SET; Schema: darahim; Owner: postgres
--

SELECT pg_catalog.setval('darahim.neotek_account_link_id_seq', 1308, true);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: drahim_transactions drahim_transactions_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.drahim_transactions
    ADD CONSTRAINT drahim_transactions_pkey PRIMARY KEY (id);


--
-- Name: known_merchants known_merchants_name_category_id_uq; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.known_merchants
    ADD CONSTRAINT known_merchants_name_category_id_uq UNIQUE (merchant_name, category_id);


--
-- Name: known_merchants known_merchants_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.known_merchants
    ADD CONSTRAINT known_merchants_pkey PRIMARY KEY (id);


--
-- Name: neotek_account_link neotek_account_link_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.neotek_account_link
    ADD CONSTRAINT neotek_account_link_pkey PRIMARY KEY (id);


--
-- Name: raw_transactions raw_transactions_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.raw_transactions
    ADD CONSTRAINT raw_transactions_pkey PRIMARY KEY (id);


--
-- Name: sponsored_tpp sponsored_tpp_identifier_idx; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.sponsored_tpp
    ADD CONSTRAINT sponsored_tpp_identifier_idx UNIQUE (identifier, identifier_type);


--
-- Name: sponsored_tpp sponsored_tpp_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.sponsored_tpp
    ADD CONSTRAINT sponsored_tpp_pkey PRIMARY KEY (id);


--
-- Name: sub_categories sub_categories_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.sub_categories
    ADD CONSTRAINT sub_categories_pkey PRIMARY KEY (id);


--
-- Name: sub_categories unique_sub_category_name_per_user; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.sub_categories
    ADD CONSTRAINT unique_sub_category_name_per_user UNIQUE (user_id, name, category_id);


--
-- Name: users_consents users_consents_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.users_consents
    ADD CONSTRAINT users_consents_pkey PRIMARY KEY (consent_id);


--
-- Name: verified_merchants verified_merchants_name_category_id_uq; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.verified_merchants
    ADD CONSTRAINT verified_merchants_name_category_id_uq UNIQUE (name, category_id);


--
-- Name: verified_merchants verified_merchants_name_key; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.verified_merchants
    ADD CONSTRAINT verified_merchants_name_key UNIQUE (name);


--
-- Name: verified_merchants verified_merchants_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.verified_merchants
    ADD CONSTRAINT verified_merchants_pkey PRIMARY KEY (id);


--
-- Name: verified_merchants_suggestions verified_merchants_suggestions_pkey; Type: CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.verified_merchants_suggestions
    ADD CONSTRAINT verified_merchants_suggestions_pkey PRIMARY KEY (id);


--
-- Name: ix_accounts_bank_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_bank_id ON darahim.accounts USING btree (bank_id);


--
-- Name: ix_accounts_connection_status; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_connection_status ON darahim.accounts USING btree (connection_status);


--
-- Name: ix_accounts_consent_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_consent_id ON darahim.accounts USING btree (consent_id);


--
-- Name: ix_accounts_fast_sync; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_fast_sync ON darahim.accounts USING btree (fast_sync);


--
-- Name: ix_accounts_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_id ON darahim.accounts USING btree (id);


--
-- Name: ix_accounts_integrated_entity_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_integrated_entity_id ON darahim.accounts USING btree (integrated_entity_id);


--
-- Name: ix_accounts_integrated_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_integrated_id ON darahim.accounts USING btree (integrated_id);


--
-- Name: ix_accounts_is_ignored_in_budget; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_is_ignored_in_budget ON darahim.accounts USING btree (is_ignored_in_budget);


--
-- Name: ix_accounts_is_ignored_in_report; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_is_ignored_in_report ON darahim.accounts USING btree (is_ignored_in_report);


--
-- Name: ix_accounts_last_historical_sync_triggered_at; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_last_historical_sync_triggered_at ON darahim.accounts USING btree (last_historical_sync_triggered_at);


--
-- Name: ix_accounts_last_sync_triggered_at; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_last_sync_triggered_at ON darahim.accounts USING btree (last_sync_triggered_at);


--
-- Name: ix_accounts_sponsored_tpp_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_sponsored_tpp_id ON darahim.accounts USING btree (sponsored_tpp_id);


--
-- Name: ix_accounts_user_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_accounts_user_id ON darahim.accounts USING btree (user_id);


--
-- Name: ix_drahim_transactions_account_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_account_id ON darahim.drahim_transactions USING btree (account_id);


--
-- Name: ix_drahim_transactions_effective_category_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_effective_category_id ON darahim.drahim_transactions USING btree (effective_category_id);


--
-- Name: ix_drahim_transactions_is_ignored_in_budget; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_is_ignored_in_budget ON darahim.drahim_transactions USING btree (is_ignored_in_budget);


--
-- Name: ix_drahim_transactions_is_ignored_in_report; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_is_ignored_in_report ON darahim.drahim_transactions USING btree (is_ignored_in_report);


--
-- Name: ix_drahim_transactions_kind; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_kind ON darahim.drahim_transactions USING btree (kind);


--
-- Name: ix_drahim_transactions_merchant_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_merchant_id ON darahim.drahim_transactions USING btree (merchant_id);


--
-- Name: ix_drahim_transactions_raw_transaction_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_raw_transaction_id ON darahim.drahim_transactions USING btree (raw_transaction_id);


--
-- Name: ix_drahim_transactions_sponsored_tpp_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_sponsored_tpp_id ON darahim.drahim_transactions USING btree (sponsored_tpp_id);


--
-- Name: ix_drahim_transactions_sub_category_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_sub_category_id ON darahim.drahim_transactions USING btree (sub_category_id);


--
-- Name: ix_drahim_transactions_timestamp; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_timestamp ON darahim.drahim_transactions USING btree ("timestamp");


--
-- Name: ix_drahim_transactions_user_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_user_id ON darahim.drahim_transactions USING btree (user_id);


--
-- Name: ix_drahim_transactions_user_merchant_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_drahim_transactions_user_merchant_id ON darahim.drahim_transactions USING btree (user_merchant_id);


--
-- Name: ix_known_merchants_categorized_by; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_known_merchants_categorized_by ON darahim.known_merchants USING btree (categorized_by);


--
-- Name: ix_known_merchants_category_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_known_merchants_category_id ON darahim.known_merchants USING btree (category_id);


--
-- Name: ix_known_merchants_verified_merchant_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_known_merchants_verified_merchant_id ON darahim.known_merchants USING btree (verified_merchant_id);


--
-- Name: ix_neotek_account_link_bank_consent_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_neotek_account_link_bank_consent_id ON darahim.neotek_account_link USING btree (bank_consent_id);


--
-- Name: ix_raw_transactions_account_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_raw_transactions_account_id ON darahim.raw_transactions USING btree (account_id);


--
-- Name: ix_raw_transactions_created_at; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_raw_transactions_created_at ON darahim.raw_transactions USING btree (created_at);


--
-- Name: ix_raw_transactions_external_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE UNIQUE INDEX ix_raw_transactions_external_id ON darahim.raw_transactions USING btree (external_id);


--
-- Name: ix_raw_transactions_purpose; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_raw_transactions_purpose ON darahim.raw_transactions USING btree (purpose);


--
-- Name: ix_raw_transactions_sponsored_tpp_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_raw_transactions_sponsored_tpp_id ON darahim.raw_transactions USING btree (sponsored_tpp_id);


--
-- Name: ix_raw_transactions_status; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_raw_transactions_status ON darahim.raw_transactions USING btree (status);


--
-- Name: ix_raw_transactions_type; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_raw_transactions_type ON darahim.raw_transactions USING btree (type);


--
-- Name: ix_raw_transactions_user_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_raw_transactions_user_id ON darahim.raw_transactions USING btree (user_id);


--
-- Name: ix_sponsored_tpp_status; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_sponsored_tpp_status ON darahim.sponsored_tpp USING btree (status);


--
-- Name: ix_sub_categories_global_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_sub_categories_global_id ON darahim.sub_categories USING btree (global_id);


--
-- Name: ix_user_id_timestamp; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_user_id_timestamp ON darahim.drahim_transactions USING btree (user_id, "timestamp");


--
-- Name: ix_users_consents_connection_status; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_users_consents_connection_status ON darahim.users_consents USING btree (connection_status);


--
-- Name: ix_users_consents_consent_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_users_consents_consent_id ON darahim.users_consents USING btree (consent_id);


--
-- Name: ix_users_consents_neotek_accounts_link_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE UNIQUE INDEX ix_users_consents_neotek_accounts_link_id ON darahim.users_consents USING btree (neotek_accounts_link_id);


--
-- Name: ix_users_consents_sponsored_tpp_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_users_consents_sponsored_tpp_id ON darahim.users_consents USING btree (sponsored_tpp_id);


--
-- Name: ix_users_consents_user_id; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_users_consents_user_id ON darahim.users_consents USING btree (user_id);


--
-- Name: ix_verified_merchants_verified_by; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX ix_verified_merchants_verified_by ON darahim.verified_merchants USING btree (verified_by);


--
-- Name: merchant_name_trgm_idx; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX merchant_name_trgm_idx ON darahim.known_merchants USING gin (merchant_name darahim.gin_trgm_ops);


--
-- Name: user_id_account_id_index; Type: INDEX; Schema: darahim; Owner: postgres
--

CREATE INDEX user_id_account_id_index ON darahim.drahim_transactions USING btree (user_id, account_id);


--
-- Name: accounts accounts_consent_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.accounts
    ADD CONSTRAINT accounts_consent_id_fkey FOREIGN KEY (consent_id) REFERENCES darahim.users_consents(consent_id);


--
-- Name: accounts accounts_sponsored_tpp_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.accounts
    ADD CONSTRAINT accounts_sponsored_tpp_id_fkey FOREIGN KEY (sponsored_tpp_id) REFERENCES darahim.sponsored_tpp(id);


--
-- Name: drahim_transactions drahim_transactions_account_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.drahim_transactions
    ADD CONSTRAINT drahim_transactions_account_id_fkey FOREIGN KEY (account_id) REFERENCES darahim.accounts(id);


--
-- Name: drahim_transactions drahim_transactions_merchant_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.drahim_transactions
    ADD CONSTRAINT drahim_transactions_merchant_id_fkey FOREIGN KEY (merchant_id) REFERENCES darahim.known_merchants(id);


--
-- Name: drahim_transactions drahim_transactions_raw_transaction_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.drahim_transactions
    ADD CONSTRAINT drahim_transactions_raw_transaction_id_fkey FOREIGN KEY (raw_transaction_id) REFERENCES darahim.raw_transactions(id);


--
-- Name: drahim_transactions drahim_transactions_sub_category_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.drahim_transactions
    ADD CONSTRAINT drahim_transactions_sub_category_id_fkey FOREIGN KEY (sub_category_id) REFERENCES darahim.sub_categories(id);


--
-- Name: drahim_transactions drahim_transactions_user_merchant_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.drahim_transactions
    ADD CONSTRAINT drahim_transactions_user_merchant_id_fkey FOREIGN KEY (user_merchant_id) REFERENCES darahim.known_merchants(id);


--
-- Name: drahim_transactions fk_drahim_transactions_sponsored_tpp_id; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.drahim_transactions
    ADD CONSTRAINT fk_drahim_transactions_sponsored_tpp_id FOREIGN KEY (sponsored_tpp_id) REFERENCES darahim.sponsored_tpp(id);


--
-- Name: known_merchants known_merchants_verified_merchant_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.known_merchants
    ADD CONSTRAINT known_merchants_verified_merchant_id_fkey FOREIGN KEY (verified_merchant_id) REFERENCES darahim.verified_merchants(id);


--
-- Name: raw_transactions raw_transactions_account_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.raw_transactions
    ADD CONSTRAINT raw_transactions_account_id_fkey FOREIGN KEY (account_id) REFERENCES darahim.accounts(id);


--
-- Name: raw_transactions raw_transactions_sponsored_tpp_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.raw_transactions
    ADD CONSTRAINT raw_transactions_sponsored_tpp_id_fkey FOREIGN KEY (sponsored_tpp_id) REFERENCES darahim.sponsored_tpp(id);


--
-- Name: users_consents users_consents_neotek_account_link_idx; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.users_consents
    ADD CONSTRAINT users_consents_neotek_account_link_idx FOREIGN KEY (neotek_accounts_link_id) REFERENCES darahim.neotek_account_link(id);


--
-- Name: users_consents users_consents_sponsored_tpp_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.users_consents
    ADD CONSTRAINT users_consents_sponsored_tpp_id_fkey FOREIGN KEY (sponsored_tpp_id) REFERENCES darahim.sponsored_tpp(id);


--
-- Name: verified_merchants_suggestions verified_merchants_suggestions_merchant_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.verified_merchants_suggestions
    ADD CONSTRAINT verified_merchants_suggestions_merchant_id_fkey FOREIGN KEY (merchant_id) REFERENCES darahim.known_merchants(id);


--
-- Name: verified_merchants_suggestions verified_merchants_suggestions_transaction_id_fkey; Type: FK CONSTRAINT; Schema: darahim; Owner: postgres
--

ALTER TABLE ONLY darahim.verified_merchants_suggestions
    ADD CONSTRAINT verified_merchants_suggestions_transaction_id_fkey FOREIGN KEY (transaction_id) REFERENCES darahim.drahim_transactions(id);


--
-- PostgreSQL database dump complete
--

\unrestrict dvOP1Hl48blfiuELXveaRoAnlTbteEBNmfbC7NuTCJfR8yEJsUBkBBVRf7hn8Jw



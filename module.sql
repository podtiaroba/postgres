--
-- PostgreSQL database dump
--

-- Dumped from database version 10.11
-- Dumped by pg_dump version 10.11

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id integer NOT NULL,
    title text
);


ALTER TABLE public.city OWNER TO postgres;

--
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_id_seq OWNER TO postgres;

--
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    gender character varying(1),
    name text,
    email text,
    city_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: city id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city (id, title) FROM stdin;
1	Kyev
2	Kharkiv
3	Dnepr
4	Odessa
5	Poltava
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, gender, name, email, city_id) FROM stdin;
1	m	Dima	dima@gmail.com	5
2	m	Adam	adam@gmail.com	4
3	m	Alexander	alexander@gmail.com	3
4	m	Arnold	arnold@gmail.com	2
5	m	Carl	carl@gmail.com	1
6	m	David	david@gmail.com	2
7	m	Franklin	franklin@gmail.com	3
8	m	Henry	henry@gmail.com	3
9	m	Jack	jack@gmail.com	3
10	m	Joseph	joseph@gmail.com	3
11	m	Lucas	lucas@gmail.com	4
12	m	Martin	martin@gmail.com	2
13	m	Oliver	oliver@gmail.com	1
14	m	Patrick	patrick@gmail.com	5
15	m	Victor	victor@gmail.com	2
16	m	Tyler	tyler@gmail.com	1
17	m	Albert	albert@gmail.com	2
18	f	Adriana	adriana@gmail.com	3
19	f	Angela	angela@gmail.com	4
20	f	Camille	camille@gmail.com	4
21	f	Diana	diana@gmail.com	4
22	f	Ellen	ellen@gmail.com	3
23	f	Erika	erika@gmail.com	4
24	f	Grace	grace@gmail.com	3
25	f	Tina	tina@gmail.com	4
26	f	Jenna	jenna@gmail.com	3
27	f	Vanessa	vanessa@gmail.com	4
28	f	Sharon	sharon@gmail.com	3
29	f	Regina	regina@gmail.com	4
30	f	Nikki	nikki@gmail.com	3
31	f	Mary	mary@gmail.com	4
32	f	Katie	katie@gmail.com	4
33	f	Julia	julia@gmail.com	3
\.


--
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_id_seq', 5, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump 23
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
-- Name: child; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.child (
    id integer NOT NULL,
    child_name text NOT NULL,
    phone text NOT NULL,
    adress text NOT NULL
);


ALTER TABLE public.child OWNER TO postgres;

--
-- Name: child_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.child_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.child_id_seq OWNER TO postgres;

--
-- Name: child_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.child_id_seq OWNED BY public.child.id;


--
-- Name: health_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_status (
    id integer NOT NULL,
    overall_score text,
    quality_of_vision text,
    respiratory_volume_of_lungs text,
    heart_rate text
);


ALTER TABLE public.health_status OWNER TO postgres;

--
-- Name: health_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.health_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.health_status_id_seq OWNER TO postgres;

--
-- Name: health_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.health_status_id_seq OWNED BY public.health_status.id;


--
-- Name: party; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.party (
    id integer NOT NULL,
    child_id integer DEFAULT 0 NOT NULL,
    teacher_id integer DEFAULT 0 NOT NULL,
    workshop_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.party OWNER TO postgres;

--
-- Name: party_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.party_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.party_id_seq OWNER TO postgres;

--
-- Name: party_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.party_id_seq OWNED BY public.party.id;


--
-- Name: teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher (
    id integer NOT NULL,
    teacher_name text NOT NULL,
    phone text NOT NULL,
    adress text NOT NULL,
    health_status_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.teacher OWNER TO postgres;

--
-- Name: teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teacher_id_seq OWNER TO postgres;

--
-- Name: teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teacher_id_seq OWNED BY public.teacher.id;


--
-- Name: workshop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workshop (
    id integer NOT NULL,
    name text NOT NULL,
    description text
);


ALTER TABLE public.workshop OWNER TO postgres;

--
-- Name: workshop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workshop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workshop_id_seq OWNER TO postgres;

--
-- Name: workshop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workshop_id_seq OWNED BY public.workshop.id;


--
-- Name: child id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.child ALTER COLUMN id SET DEFAULT nextval('public.child_id_seq'::regclass);


--
-- Name: health_status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_status ALTER COLUMN id SET DEFAULT nextval('public.health_status_id_seq'::regclass);


--
-- Name: party id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.party ALTER COLUMN id SET DEFAULT nextval('public.party_id_seq'::regclass);


--
-- Name: teacher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher ALTER COLUMN id SET DEFAULT nextval('public.teacher_id_seq'::regclass);


--
-- Name: workshop id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workshop ALTER COLUMN id SET DEFAULT nextval('public.workshop_id_seq'::regclass);


--
-- Data for Name: child; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.child (id, child_name, phone, adress) FROM stdin;
1	Denisov Denis	095-95-95-959	st. Kutuzova 33/2
2	Kabanova Nelli	093-38-97-876	st. Drujbi 4
3	Voronin Egor	063-12-12-123	st. Odesskaia 85b
4	Linkin Dmitriy	095-99-99-999	st. Vatutina 36/423
5	Rudneva Ekaterina	093-38-88-888	st. Lomonosova 124a/12
6	Fedorin Oleg	063-12-33-333	st. Gagarina 12
\.


--
-- Data for Name: health_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.health_status (id, overall_score, quality_of_vision, respiratory_volume_of_lungs, heart_rate) FROM stdin;
1	normal	normal	normal	normal
2	below normal	below normal	below normal	below normal
3	above normal	above normal	above normal	above normal
4	below normal	below normal	below normal	below normal
5	normal	below normal	normal	normal
6	normal	normal	below normal	normal
7	normal	above normal	below normal	normal
\.


--
-- Data for Name: party; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.party (id, child_id, teacher_id, workshop_id) FROM stdin;
1	1	2	3
2	2	3	4
3	3	1	5
4	1	2	1
5	2	3	2
8	1	1	2
10	3	6	1
\.


--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher (id, teacher_name, phone, adress, health_status_id) FROM stdin;
1	Geron Olga	095-65-65-654	st. Mira 89/2	1
2	Antonov Sergey	093-98-87-452	st. Lenina 49	2
3	Kizim Irina	063-89-32-123	st. Kirova 87/2	3
4	Vedenev Sergey	095-55-55-655	st. Molodejnaya 12/1	5
5	Skliarova Alina	093-44-44-444	st. Sedova 45b/98	6
6	Butko Alex	063-89-32-222	st. Internacionalnaya 87/24	7
\.


--
-- Data for Name: workshop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workshop (id, name, description) FROM stdin;
1	orienteering	\N
2	rock climbing	\N
3	alpinism	\N
4	tourizm	\N
5	cucling	\N
9	multisport	\N
10	sports tourism	\N
11	sailing	\N
\.


--
-- Name: child_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.child_id_seq', 6, true);


--
-- Name: health_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.health_status_id_seq', 7, true);


--
-- Name: party_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.party_id_seq', 10, true);


--
-- Name: teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_id_seq', 10, true);


--
-- Name: workshop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workshop_id_seq', 11, true);


--
-- PostgreSQL database dump complete
--


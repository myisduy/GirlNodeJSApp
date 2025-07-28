--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-29 01:36:49

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16389)
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    "ID" integer NOT NULL,
    name character varying(250) NOT NULL,
    provinces_id integer NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16392)
-- Name: districts_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."districts_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."districts_ID_seq" OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 218
-- Name: districts_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."districts_ID_seq" OWNED BY public.districts."ID";


--
-- TOC entry 219 (class 1259 OID 16393)
-- Name: overnight_option; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.overnight_option (
    "ID" integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.overnight_option OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16396)
-- Name: overnight_option_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."overnight_option_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."overnight_option_ID_seq" OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 220
-- Name: overnight_option_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."overnight_option_ID_seq" OWNED BY public.overnight_option."ID";


--
-- TOC entry 221 (class 1259 OID 16397)
-- Name: peoples; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peoples (
    "ID" integer NOT NULL,
    full_name character varying(255) NOT NULL,
    district_id integer NOT NULL,
    phone_number character varying(12) NOT NULL,
    price integer,
    hotel_price smallint NOT NULL,
    year_of_birth smallint NOT NULL,
    hight smallint NOT NULL,
    weight smallint NOT NULL,
    "V1" smallint NOT NULL,
    "V1_describe" character varying(500),
    "V2" smallint NOT NULL,
    v2_describe character varying(500),
    "V3" smallint NOT NULL,
    "V3_describe" character varying(500),
    genital character varying(500),
    overnight integer
);


ALTER TABLE public.peoples OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16402)
-- Name: people_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."people_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."people_ID_seq" OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 222
-- Name: people_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."people_ID_seq" OWNED BY public.peoples."ID";


--
-- TOC entry 223 (class 1259 OID 16403)
-- Name: people_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people_services (
    people_id integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.people_services OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16406)
-- Name: people_subdivisions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people_subdivisions (
    person_id integer NOT NULL,
    subdivision_id integer NOT NULL
);


ALTER TABLE public.people_subdivisions OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16409)
-- Name: prices_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prices_list (
    "ID" integer NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.prices_list OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16412)
-- Name: prices_list_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."prices_list_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."prices_list_ID_seq" OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 226
-- Name: prices_list_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."prices_list_ID_seq" OWNED BY public.prices_list."ID";


--
-- TOC entry 227 (class 1259 OID 16413)
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinces (
    "ID" integer NOT NULL,
    name character varying(100) NOT NULL,
    region_id integer NOT NULL
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16416)
-- Name: provinces_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."provinces_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."provinces_ID_seq" OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 228
-- Name: provinces_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."provinces_ID_seq" OWNED BY public.provinces."ID";


--
-- TOC entry 229 (class 1259 OID 16417)
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions (
    "ID" integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.regions OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16420)
-- Name: regions_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."regions_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."regions_ID_seq" OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 230
-- Name: regions_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."regions_ID_seq" OWNED BY public.regions."ID";


--
-- TOC entry 231 (class 1259 OID 16421)
-- Name: services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.services (
    "ID" integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.services OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16424)
-- Name: services_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."services_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."services_ID_seq" OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 232
-- Name: services_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."services_ID_seq" OWNED BY public.services."ID";


--
-- TOC entry 233 (class 1259 OID 16425)
-- Name: subdivisions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subdivisions (
    "ID" integer NOT NULL,
    name character varying(1000) NOT NULL,
    district_id integer NOT NULL,
    map_link character varying(1500)
);


ALTER TABLE public.subdivisions OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16430)
-- Name: subdivisions_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."subdivisions_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."subdivisions_ID_seq" OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 234
-- Name: subdivisions_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."subdivisions_ID_seq" OWNED BY public.subdivisions."ID";


--
-- TOC entry 235 (class 1259 OID 16431)
-- Name: work_shifts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_shifts (
    people_id integer NOT NULL,
    is_24h boolean DEFAULT false NOT NULL,
    start_time time without time zone,
    end_time time without time zone
);


ALTER TABLE public.work_shifts OWNER TO postgres;

--
-- TOC entry 4688 (class 2604 OID 16436)
-- Name: districts ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts ALTER COLUMN "ID" SET DEFAULT nextval('public."districts_ID_seq"'::regclass);


--
-- TOC entry 4689 (class 2604 OID 16437)
-- Name: overnight_option ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.overnight_option ALTER COLUMN "ID" SET DEFAULT nextval('public."overnight_option_ID_seq"'::regclass);


--
-- TOC entry 4690 (class 2604 OID 16438)
-- Name: peoples ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peoples ALTER COLUMN "ID" SET DEFAULT nextval('public."people_ID_seq"'::regclass);


--
-- TOC entry 4691 (class 2604 OID 16439)
-- Name: prices_list ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prices_list ALTER COLUMN "ID" SET DEFAULT nextval('public."prices_list_ID_seq"'::regclass);


--
-- TOC entry 4692 (class 2604 OID 16440)
-- Name: provinces ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces ALTER COLUMN "ID" SET DEFAULT nextval('public."provinces_ID_seq"'::regclass);


--
-- TOC entry 4693 (class 2604 OID 16441)
-- Name: regions ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions ALTER COLUMN "ID" SET DEFAULT nextval('public."regions_ID_seq"'::regclass);


--
-- TOC entry 4694 (class 2604 OID 16442)
-- Name: services ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services ALTER COLUMN "ID" SET DEFAULT nextval('public."services_ID_seq"'::regclass);


--
-- TOC entry 4695 (class 2604 OID 16443)
-- Name: subdivisions ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subdivisions ALTER COLUMN "ID" SET DEFAULT nextval('public."subdivisions_ID_seq"'::regclass);


--
-- TOC entry 4885 (class 0 OID 16389)
-- Dependencies: 217
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.districts ("ID", name, provinces_id) FROM stdin;
1	Ba Đình	1
2	Cầu Giấy	1
3	Đống Đa	1
4	Hai Bà Trưng	1
5	Hoàn Kiếm	1
6	Thanh Xuân	1
7	Hoàng Mai	1
8	Long Biên	1
9	Hà Đông	1
10	Tây Hồ	1
11	Nam Từ Liêm	1
12	Bắc Từ Liêm	1
13	Thanh Trì	1
14	Ba Vì	1
15	Đan Phượng	1
16	Gia Lâm	1
17	Đông Anh	1
18	Thường Tín	1
19	Thanh Oai	1
20	Chương Mỹ	1
21	Hoài Đức	1
22	Mỹ Đức	1
23	Phúc Thọ	1
24	Thạch Thất	1
25	Quốc Oai	1
26	Phú Xuyên	1
27	Ứng Hòa	1
28	Mê Linh	1
29	Sóc Sơn	1
30	Sơn Tây	1
31	Thủ Đức	2
32	Quận 1	2
33	Quận 3	2
34	Quận 4	2
35	Quận 5	2
36	Quận 6	2
37	Quận 7	2
38	Quận 8	2
39	Quận 10	2
40	Quận 11	2
41	Quận 12	2
42	Bình Tân	2
43	Tân Bình	2
44	Gò Vấp	2
45	Phú Nhuận	2
46	Tân Phú	2
47	Bình Thạnh	2
48	Bình Chánh	2
49	Củ Chi	2
50	Hóc Môn	2
51	Cần Giờ	2
52	Nhà Bè	2
\.


--
-- TOC entry 4887 (class 0 OID 16393)
-- Dependencies: 219
-- Data for Name: overnight_option; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.overnight_option ("ID", name) FROM stdin;
1	Yes
2	No
3	Agree
4	500
5	1000
6	1500
7	2000
8	2500
9	3000
10	5000
11	10000
\.


--
-- TOC entry 4891 (class 0 OID 16403)
-- Dependencies: 223
-- Data for Name: people_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people_services (people_id, service_id) FROM stdin;
\.


--
-- TOC entry 4892 (class 0 OID 16406)
-- Dependencies: 224
-- Data for Name: people_subdivisions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people_subdivisions (person_id, subdivision_id) FROM stdin;
\.


--
-- TOC entry 4889 (class 0 OID 16397)
-- Dependencies: 221
-- Data for Name: peoples; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peoples ("ID", full_name, district_id, phone_number, price, hotel_price, year_of_birth, hight, weight, "V1", "V1_describe", "V2", v2_describe, "V3", "V3_describe", genital, overnight) FROM stdin;
\.


--
-- TOC entry 4893 (class 0 OID 16409)
-- Dependencies: 225
-- Data for Name: prices_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prices_list ("ID", price) FROM stdin;
1	100
2	200
3	300
4	400
5	500
6	600
7	700
8	800
9	900
10	1000
11	1100
12	1200
13	1300
14	1400
15	1500
16	1600
17	1700
18	1800
19	1900
20	2000
\.


--
-- TOC entry 4895 (class 0 OID 16413)
-- Dependencies: 227
-- Data for Name: provinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provinces ("ID", name, region_id) FROM stdin;
1	Hà Nội	1
3	Đà Nẵng	2
2	Sài Gòn	3
\.


--
-- TOC entry 4897 (class 0 OID 16417)
-- Dependencies: 229
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regions ("ID", name) FROM stdin;
1	Miền Bắc
2	Miền Trung
3	Miền Nam
\.


--
-- TOC entry 4899 (class 0 OID 16421)
-- Dependencies: 231
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.services ("ID", name) FROM stdin;
1	Dịch vụ 1
2	Dịch vụ 2
3	Dịch vụ 3
\.


--
-- TOC entry 4901 (class 0 OID 16425)
-- Dependencies: 233
-- Data for Name: subdivisions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subdivisions ("ID", name, district_id, map_link) FROM stdin;
1	Trần Duy Hưng	2	\N
2	Kim Liên	3	\N
\.


--
-- TOC entry 4903 (class 0 OID 16431)
-- Dependencies: 235
-- Data for Name: work_shifts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_shifts (people_id, is_24h, start_time, end_time) FROM stdin;
\.


--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 218
-- Name: districts_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."districts_ID_seq"', 52, true);


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 220
-- Name: overnight_option_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."overnight_option_ID_seq"', 11, true);


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 222
-- Name: people_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."people_ID_seq"', 1, true);


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 226
-- Name: prices_list_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."prices_list_ID_seq"', 20, true);


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 228
-- Name: provinces_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."provinces_ID_seq"', 3, true);


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 230
-- Name: regions_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."regions_ID_seq"', 3, true);


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 232
-- Name: services_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."services_ID_seq"', 3, true);


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 234
-- Name: subdivisions_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."subdivisions_ID_seq"', 2, true);


--
-- TOC entry 4698 (class 2606 OID 16446)
-- Name: districts districts_name_provinces_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_name_provinces_id UNIQUE (name, provinces_id);


--
-- TOC entry 4700 (class 2606 OID 16448)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY ("ID");


--
-- TOC entry 4702 (class 2606 OID 16450)
-- Name: overnight_option overnight_option_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.overnight_option
    ADD CONSTRAINT overnight_option_pkey PRIMARY KEY ("ID");


--
-- TOC entry 4704 (class 2606 OID 16452)
-- Name: peoples people_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peoples
    ADD CONSTRAINT people_pkey PRIMARY KEY ("ID");


--
-- TOC entry 4706 (class 2606 OID 16528)
-- Name: people_services people_services_person_id_service_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_services
    ADD CONSTRAINT people_services_person_id_service_id PRIMARY KEY (people_id, service_id);


--
-- TOC entry 4708 (class 2606 OID 16456)
-- Name: people_subdivisions people_subdivisions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_subdivisions
    ADD CONSTRAINT people_subdivisions_pkey PRIMARY KEY (person_id, subdivision_id);


--
-- TOC entry 4710 (class 2606 OID 16458)
-- Name: prices_list prices_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prices_list
    ADD CONSTRAINT prices_list_pkey PRIMARY KEY ("ID");


--
-- TOC entry 4712 (class 2606 OID 16460)
-- Name: provinces provinces_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_name UNIQUE (name);


--
-- TOC entry 4714 (class 2606 OID 16462)
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY ("ID");


--
-- TOC entry 4716 (class 2606 OID 16464)
-- Name: regions regions_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_name UNIQUE (name);


--
-- TOC entry 4718 (class 2606 OID 16466)
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY ("ID");


--
-- TOC entry 4720 (class 2606 OID 16468)
-- Name: services services_ID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT "services_ID" PRIMARY KEY ("ID");


--
-- TOC entry 4722 (class 2606 OID 16470)
-- Name: services services_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_name UNIQUE (name);


--
-- TOC entry 4724 (class 2606 OID 16472)
-- Name: subdivisions subdivisions_name_district_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subdivisions
    ADD CONSTRAINT subdivisions_name_district_id UNIQUE (name, district_id);


--
-- TOC entry 4726 (class 2606 OID 16474)
-- Name: subdivisions subdivisions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subdivisions
    ADD CONSTRAINT subdivisions_pkey PRIMARY KEY ("ID");


--
-- TOC entry 4728 (class 2606 OID 16546)
-- Name: work_shifts work_shifts_people_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_shifts
    ADD CONSTRAINT work_shifts_people_id PRIMARY KEY (people_id);


--
-- TOC entry 4729 (class 2606 OID 16477)
-- Name: districts districts_provinces_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_provinces_id_fkey FOREIGN KEY (provinces_id) REFERENCES public.provinces("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4730 (class 2606 OID 16482)
-- Name: peoples people_district_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peoples
    ADD CONSTRAINT people_district_id_fkey FOREIGN KEY (district_id) REFERENCES public.districts("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4733 (class 2606 OID 16540)
-- Name: people_services people_services_people_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_services
    ADD CONSTRAINT people_services_people_id_fkey FOREIGN KEY (people_id) REFERENCES public.peoples("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4734 (class 2606 OID 16492)
-- Name: people_services people_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_services
    ADD CONSTRAINT people_services_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4735 (class 2606 OID 16497)
-- Name: people_subdivisions people_subdivisions_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_subdivisions
    ADD CONSTRAINT people_subdivisions_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.peoples("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4736 (class 2606 OID 16502)
-- Name: people_subdivisions people_subdivisions_subdivision_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_subdivisions
    ADD CONSTRAINT people_subdivisions_subdivision_id_fkey FOREIGN KEY (subdivision_id) REFERENCES public.subdivisions("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4731 (class 2606 OID 16573)
-- Name: peoples peoples_overnight_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peoples
    ADD CONSTRAINT peoples_overnight_fkey FOREIGN KEY (overnight) REFERENCES public.overnight_option("ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4732 (class 2606 OID 16568)
-- Name: peoples peoples_price_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peoples
    ADD CONSTRAINT peoples_price_fkey FOREIGN KEY (price) REFERENCES public.prices_list("ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4737 (class 2606 OID 16512)
-- Name: provinces provinces_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.regions("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4738 (class 2606 OID 16517)
-- Name: subdivisions subdivisions_district_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subdivisions
    ADD CONSTRAINT subdivisions_district_id_fkey FOREIGN KEY (district_id) REFERENCES public.districts("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4739 (class 2606 OID 16522)
-- Name: work_shifts work_shifts_people_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_shifts
    ADD CONSTRAINT work_shifts_people_id_fkey FOREIGN KEY (people_id) REFERENCES public.peoples("ID") ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-07-29 01:36:49

--
-- PostgreSQL database dump complete
--


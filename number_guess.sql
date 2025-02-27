--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    g_id integer NOT NULL,
    u_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_g_id_seq OWNER TO freecodecamp;

--
-- Name: games_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_g_id_seq OWNED BY public.games.g_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games g_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN g_id SET DEFAULT nextval('public.games_g_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.games (g_id, u_id, guesses) FROM stdin;
1	1	7
2	2	30
3	2	534
4	3	298
5	3	22
6	2	850
7	2	61
8	2	220
9	4	387
10	4	335
11	5	790
12	5	782
13	4	867
14	4	391
15	4	358
16	6	855
17	6	280
18	7	176
19	7	609
20	6	598
21	6	253
22	6	618
23	8	610
24	8	16
25	9	262
26	9	342
27	8	982
28	8	154
29	8	434
30	10	307
31	10	978
32	11	458
33	11	953
34	10	101
35	10	181
36	10	563
37	12	896
38	12	150
39	13	45
40	13	110
41	12	301
42	12	219
43	12	456
44	14	697
45	14	420
46	15	260
47	15	227
48	14	882
49	14	195
50	14	688
51	16	994
52	16	289
53	17	326
54	17	836
55	16	462
56	16	448
57	16	409
58	18	621
59	18	852
60	19	877
61	19	699
62	18	918
63	18	965
64	18	752
65	1	8
66	20	159
67	20	297
68	21	851
69	21	258
70	20	710
71	20	59
72	20	676
73	22	749
74	22	758
75	23	592
76	23	354
77	22	100
78	22	906
79	22	524
80	24	897
81	24	329
82	25	623
83	25	483
84	24	623
85	24	94
86	24	393
87	26	253
88	26	267
89	27	512
90	27	831
91	26	72
92	26	998
93	26	763
94	28	20
95	28	619
96	29	223
97	29	42
98	28	279
99	28	738
100	28	64
101	30	671
102	30	444
103	31	517
104	31	206
105	30	586
106	30	778
107	30	548
108	32	208
109	32	293
110	33	819
111	33	43
112	32	981
113	32	827
114	32	10
115	1	12
116	34	975
117	34	705
118	35	518
119	35	583
120	34	74
121	34	931
122	34	623
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.users (u_id, name) FROM stdin;
1	z
2	user_1740675148404
3	user_1740675148403
4	user_1740675232873
5	user_1740675232872
6	user_1740675306226
7	user_1740675306225
8	user_1740675323394
9	user_1740675323393
10	user_1740675423355
11	user_1740675423354
12	user_1740675715962
13	user_1740675715961
14	user_1740675844964
15	user_1740675844963
16	user_1740675848561
17	user_1740675848560
18	user_1740675907670
19	user_1740675907669
20	user_1740675951237
21	user_1740675951236
22	user_1740676097143
23	user_1740676097142
24	user_1740676115059
25	user_1740676115058
26	user_1740676197599
27	user_1740676197598
28	user_1740676669468
29	user_1740676669467
30	user_1740676750705
31	user_1740676750704
32	user_1740676793837
33	user_1740676793836
34	user_1740676850977
35	user_1740676850976
\.


--
-- Name: games_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_g_id_seq', 122, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (g_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--


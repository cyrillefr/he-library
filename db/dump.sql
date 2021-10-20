--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Ubuntu 12.7-0ubuntu0.20.10.1)
-- Dumped by pg_dump version 12.7 (Ubuntu 12.7-0ubuntu0.20.10.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: martian
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO martian;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: martian
--

CREATE TABLE public.authors (
    id bigint NOT NULL,
    name character varying,
    year_of_birth character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.authors OWNER TO martian;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: martian
--

CREATE SEQUENCE public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO martian;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martian
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: martian
--

CREATE TABLE public.books (
    id bigint NOT NULL,
    title character varying,
    year_of_writing character varying,
    author_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.books OWNER TO martian;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: martian
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO martian;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martian
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: martian
--

CREATE TABLE public.items (
    id bigint NOT NULL,
    title character varying,
    description text,
    image_url character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.items OWNER TO martian;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: martian
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO martian;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martian
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: media_files; Type: TABLE; Schema: public; Owner: martian
--

CREATE TABLE public.media_files (
    id bigint NOT NULL,
    title character varying NOT NULL,
    category integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.media_files OWNER TO martian;

--
-- Name: media_files_id_seq; Type: SEQUENCE; Schema: public; Owner: martian
--

CREATE SEQUENCE public.media_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_files_id_seq OWNER TO martian;

--
-- Name: media_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martian
--

ALTER SEQUENCE public.media_files_id_seq OWNED BY public.media_files.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: martian
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO martian;

--
-- Name: users; Type: TABLE; Schema: public; Owner: martian
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO martian;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: martian
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO martian;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martian
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: media_files id; Type: DEFAULT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.media_files ALTER COLUMN id SET DEFAULT nextval('public.media_files_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: martian
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-01-13 13:13:00.916346	2021-01-13 13:13:00.916346
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: martian
--

COPY public.authors (id, name, year_of_birth, created_at, updated_at) FROM stdin;
1	Philip K Dick	1928	2021-03-03 17:33:37.353619	2021-03-03 17:33:37.353619
2	James Ellroy	1948	2021-03-03 17:33:43.143908	2021-03-03 17:33:43.143908
3	RJ Ellory	1965	2021-03-03 18:56:55.946999	2021-03-03 18:56:55.946999
12	George Orwell	1903	2021-10-03 20:36:12.603524	2021-10-03 20:36:12.603524
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: martian
--

COPY public.books (id, title, year_of_writing, author_id, created_at, updated_at) FROM stdin;
1	The black Dahlia	1987	2	2021-03-03 17:34:53.27628	2021-03-03 17:34:53.27628
2	American Tabloid	1995	2	2021-03-05 14:23:22.652721	2021-03-05 14:23:22.652721
3	Ubik	1969	1	2021-03-05 14:35:37.585463	2021-03-05 14:35:37.585463
4	The big Nowhere	1988	2	2021-03-05 14:53:40.060209	2021-03-05 14:53:40.060209
5	The man in the highcastle	1961	1	2021-03-08 11:44:17.899456	2021-03-08 11:44:17.899456
6	Do androids dream of electric sheep?	1966	1	2021-03-08 11:45:35.610291	2021-03-08 11:45:35.610291
7	Flow my tears, the policeman said	1970	1	2021-03-08 11:47:55.647557	2021-03-08 11:47:55.647557
8	A scanner darkly	1973	1	2021-03-08 11:48:50.074471	2021-03-08 11:48:50.074471
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: martian
--

COPY public.items (id, title, description, image_url, user_id, created_at, updated_at) FROM stdin;
1	Martian Chronicles	Cult book by Ray Bradbury	https://upload.wikimedia.org/wikipedia/en/4/45/The-Martian-Chronicles.jpg	1	2021-01-13 13:13:01.069672	2021-01-13 13:13:01.069672
2	The Martian	Novel by Andy Weir about an astronaut stranded on Mars trying to survive	https://upload.wikimedia.org/wikipedia/en/c/c3/The_Martian_2014.jpg	1	2021-01-13 13:13:01.080334	2021-01-13 13:13:01.080334
3	Doom	A group of Marines is sent to the red planet via an ancient Martian portal called the Ark to deal with an outbreak of a mutagenic virus	https://upload.wikimedia.org/wikipedia/en/5/57/Doom_cover_art.jpg	2	2021-01-13 13:13:01.090969	2021-01-13 13:13:01.090969
4	Mars Attacks!	Earth is invaded by Martians with unbeatable weapons and a cruel sense of humor	https://upload.wikimedia.org/wikipedia/en/b/bd/Mars_attacks_ver1.jpg	2	2021-01-13 13:13:01.098535	2021-01-13 13:13:01.098535
\.


--
-- Data for Name: media_files; Type: TABLE DATA; Schema: public; Owner: martian
--

COPY public.media_files (id, title, category, created_at, updated_at) FROM stdin;
1	totor.jpg	1	2021-03-10 17:43:00.97707	2021-03-10 17:43:00.97707
2	my_life.doc	3	2021-03-10 17:45:40.191298	2021-03-10 17:45:40.191298
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: martian
--

COPY public.schema_migrations (version) FROM stdin;
20210113125738
20210113125754
20210303153030
20210303153129
20210310172855
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: martian
--

COPY public.users (id, first_name, last_name, email, created_at, updated_at) FROM stdin;
1	John	Doe	john.doe@example.com	2021-01-13 13:13:01.035966	2021-01-13 13:13:01.035966
2	Jane	Doe	jane.doe@example.com	2021-01-13 13:13:01.04477	2021-01-13 13:13:01.04477
3	John	Paul	\N	2021-01-13 21:18:59.050216	2021-01-13 21:18:59.050216
5	J	McKoo	\N	2021-01-13 22:44:43.776742	2021-01-13 22:44:43.776742
6	T	DDA	\N	2021-01-13 22:53:10.638788	2021-01-13 22:53:10.638788
7	T	DDA	\N	2021-01-14 10:37:56.425617	2021-01-14 10:37:56.425617
8	Scrooge	McDuck	\N	2021-01-14 10:55:26.811616	2021-01-14 10:55:26.811616
9	Donald	Duck	\N	2021-02-09 14:38:31.067473	2021-02-09 14:38:31.067473
4	John	Chopin	\N	2021-01-13 22:42:44.110048	2021-02-09 15:17:54.567601
10	John	McLane	\N	2021-02-09 16:00:00.173124	2021-02-09 16:00:00.173124
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martian
--

SELECT pg_catalog.setval('public.authors_id_seq', 34, true);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martian
--

SELECT pg_catalog.setval('public.books_id_seq', 8, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martian
--

SELECT pg_catalog.setval('public.items_id_seq', 4, true);


--
-- Name: media_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martian
--

SELECT pg_catalog.setval('public.media_files_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martian
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: authors authors_name_key; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_name_key UNIQUE (name);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: media_files media_files_pkey; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.media_files
    ADD CONSTRAINT media_files_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_books_on_author_id; Type: INDEX; Schema: public; Owner: martian
--

CREATE INDEX index_books_on_author_id ON public.books USING btree (author_id);


--
-- Name: index_items_on_user_id; Type: INDEX; Schema: public; Owner: martian
--

CREATE INDEX index_items_on_user_id ON public.items USING btree (user_id);


--
-- Name: books fk_rails_53d51ce16a; Type: FK CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT fk_rails_53d51ce16a FOREIGN KEY (author_id) REFERENCES public.authors(id);


--
-- Name: items fk_rails_d4b6334db2; Type: FK CONSTRAINT; Schema: public; Owner: martian
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk_rails_d4b6334db2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--


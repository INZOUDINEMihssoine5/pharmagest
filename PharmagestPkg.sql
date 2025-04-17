--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-17 13:40:54

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
-- TOC entry 217 (class 1259 OID 25079)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    client_id integer NOT NULL,
    nom character varying(255),
    prenom character varying(255),
    civilite character varying(50),
    ddn date
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25084)
-- Name: client_client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.client_client_id_seq OWNER TO postgres;

--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 218
-- Name: client_client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client.client_id;


--
-- TOC entry 219 (class 1259 OID 25085)
-- Name: commande_livraison; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande_livraison (
    num_commande integer NOT NULL,
    date_commande date,
    date_livraison date,
    nobondelivraisonfrn character varying(255)
);


ALTER TABLE public.commande_livraison OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25088)
-- Name: commande_livraison_num_commande_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commande_livraison_num_commande_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.commande_livraison_num_commande_seq OWNER TO postgres;

--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 220
-- Name: commande_livraison_num_commande_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commande_livraison_num_commande_seq OWNED BY public.commande_livraison.num_commande;


--
-- TOC entry 221 (class 1259 OID 25089)
-- Name: famille; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.famille (
    num_famille integer NOT NULL,
    nom_famille character varying(255)
);


ALTER TABLE public.famille OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25092)
-- Name: famille_num_famille_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.famille_num_famille_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.famille_num_famille_seq OWNER TO postgres;

--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 222
-- Name: famille_num_famille_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.famille_num_famille_seq OWNED BY public.famille.num_famille;


--
-- TOC entry 223 (class 1259 OID 25093)
-- Name: forme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forme (
    nom_forme character varying(255) NOT NULL
);


ALTER TABLE public.forme OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 25096)
-- Name: fournisseur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fournisseur (
    fournisseur_id integer NOT NULL,
    nom character varying(255),
    adresse character varying(255),
    telephone character varying(20),
    email character varying(255),
    pays character varying(100)
);


ALTER TABLE public.fournisseur OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25101)
-- Name: fournisseur_fournisseur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fournisseur_fournisseur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fournisseur_fournisseur_id_seq OWNER TO postgres;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 225
-- Name: fournisseur_fournisseur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fournisseur_fournisseur_id_seq OWNED BY public.fournisseur.fournisseur_id;


--
-- TOC entry 226 (class 1259 OID 25102)
-- Name: ligne_cmd_livraison; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ligne_cmd_livraison (
    ligne_cmd_id integer NOT NULL,
    qte_cmd integer,
    qte_livree integer,
    num_commande integer,
    medicament_dci character varying(255)
);


ALTER TABLE public.ligne_cmd_livraison OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25105)
-- Name: ligne_cmd_livraison_ligne_cmd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ligne_cmd_livraison_ligne_cmd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ligne_cmd_livraison_ligne_cmd_id_seq OWNER TO postgres;

--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 227
-- Name: ligne_cmd_livraison_ligne_cmd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ligne_cmd_livraison_ligne_cmd_id_seq OWNED BY public.ligne_cmd_livraison.ligne_cmd_id;


--
-- TOC entry 228 (class 1259 OID 25106)
-- Name: ligne_vendu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ligne_vendu (
    ligne_vendu_id integer NOT NULL,
    qte_vendue integer,
    num_vente integer,
    medicament_dci character varying(255),
    prixunit_vente numeric(10,2)
);


ALTER TABLE public.ligne_vendu OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 25109)
-- Name: ligne_vendu_ligne_vendu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ligne_vendu_ligne_vendu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ligne_vendu_ligne_vendu_id_seq OWNER TO postgres;

--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 229
-- Name: ligne_vendu_ligne_vendu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ligne_vendu_ligne_vendu_id_seq OWNED BY public.ligne_vendu.ligne_vendu_id;


--
-- TOC entry 230 (class 1259 OID 25110)
-- Name: medicament; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicament (
    dci character varying(255) NOT NULL,
    dosage character varying(255),
    prixunit_vente numeric(10,2),
    prixunit_achat numeric(10,2),
    qte_stock integer,
    forme_nom_forme character varying(255),
    famille_num_famille integer
);


ALTER TABLE public.medicament OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 25115)
-- Name: ordonnance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordonnance (
    num_ord integer NOT NULL,
    date_ord date,
    nom_medecin character varying(255),
    client_id integer
);


ALTER TABLE public.ordonnance OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 25118)
-- Name: ordonnance_num_ord_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ordonnance_num_ord_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ordonnance_num_ord_seq OWNER TO postgres;

--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 232
-- Name: ordonnance_num_ord_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ordonnance_num_ord_seq OWNED BY public.ordonnance.num_ord;


--
-- TOC entry 233 (class 1259 OID 25119)
-- Name: permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permission (
    permission_id integer NOT NULL,
    nom_permission character varying(255)
);


ALTER TABLE public.permission OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 25122)
-- Name: permission_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permission_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permission_permission_id_seq OWNER TO postgres;

--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 234
-- Name: permission_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permission_permission_id_seq OWNED BY public.permission.permission_id;


--
-- TOC entry 235 (class 1259 OID 25123)
-- Name: utilisateur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateur (
    utilisateur_id integer NOT NULL,
    prenom character varying(255),
    nom character varying(255),
    date_naissance date,
    telephone character varying(20),
    email character varying(255),
    adresse character varying(255),
    identifiant character varying(255),
    mot_de_passe character varying(255),
    status character varying(50),
    est_superadmin boolean DEFAULT false,
    dernier_login timestamp without time zone
);


ALTER TABLE public.utilisateur OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 25129)
-- Name: utilisateur_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateur_permission (
    utilisateur_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.utilisateur_permission OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 25132)
-- Name: utilisateur_utilisateur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.utilisateur_utilisateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.utilisateur_utilisateur_id_seq OWNER TO postgres;

--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 237
-- Name: utilisateur_utilisateur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utilisateur_utilisateur_id_seq OWNED BY public.utilisateur.utilisateur_id;


--
-- TOC entry 238 (class 1259 OID 25133)
-- Name: vente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vente (
    num_vente integer NOT NULL,
    date_vente date,
    status character varying(50),
    montant numeric(10,2),
    utilisateur_id integer
);


ALTER TABLE public.vente OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 25136)
-- Name: vente_num_vente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vente_num_vente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vente_num_vente_seq OWNER TO postgres;

--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 239
-- Name: vente_num_vente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vente_num_vente_seq OWNED BY public.vente.num_vente;


--
-- TOC entry 4752 (class 2604 OID 25137)
-- Name: client client_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN client_id SET DEFAULT nextval('public.client_client_id_seq'::regclass);


--
-- TOC entry 4753 (class 2604 OID 25138)
-- Name: commande_livraison num_commande; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_livraison ALTER COLUMN num_commande SET DEFAULT nextval('public.commande_livraison_num_commande_seq'::regclass);


--
-- TOC entry 4754 (class 2604 OID 25139)
-- Name: famille num_famille; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.famille ALTER COLUMN num_famille SET DEFAULT nextval('public.famille_num_famille_seq'::regclass);


--
-- TOC entry 4755 (class 2604 OID 25140)
-- Name: fournisseur fournisseur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur ALTER COLUMN fournisseur_id SET DEFAULT nextval('public.fournisseur_fournisseur_id_seq'::regclass);


--
-- TOC entry 4756 (class 2604 OID 25141)
-- Name: ligne_cmd_livraison ligne_cmd_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_cmd_livraison ALTER COLUMN ligne_cmd_id SET DEFAULT nextval('public.ligne_cmd_livraison_ligne_cmd_id_seq'::regclass);


--
-- TOC entry 4757 (class 2604 OID 25142)
-- Name: ligne_vendu ligne_vendu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_vendu ALTER COLUMN ligne_vendu_id SET DEFAULT nextval('public.ligne_vendu_ligne_vendu_id_seq'::regclass);


--
-- TOC entry 4758 (class 2604 OID 25143)
-- Name: ordonnance num_ord; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordonnance ALTER COLUMN num_ord SET DEFAULT nextval('public.ordonnance_num_ord_seq'::regclass);


--
-- TOC entry 4759 (class 2604 OID 25144)
-- Name: permission permission_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission ALTER COLUMN permission_id SET DEFAULT nextval('public.permission_permission_id_seq'::regclass);


--
-- TOC entry 4760 (class 2604 OID 25225)
-- Name: utilisateur utilisateur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur ALTER COLUMN utilisateur_id SET DEFAULT nextval('public.utilisateur_utilisateur_id_seq'::regclass);


--
-- TOC entry 4762 (class 2604 OID 25146)
-- Name: vente num_vente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vente ALTER COLUMN num_vente SET DEFAULT nextval('public.vente_num_vente_seq'::regclass);


--
-- TOC entry 4946 (class 0 OID 25079)
-- Dependencies: 217
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (client_id, nom, prenom, civilite, ddn) FROM stdin;
\.


--
-- TOC entry 4948 (class 0 OID 25085)
-- Dependencies: 219
-- Data for Name: commande_livraison; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commande_livraison (num_commande, date_commande, date_livraison, nobondelivraisonfrn) FROM stdin;
\.


--
-- TOC entry 4950 (class 0 OID 25089)
-- Dependencies: 221
-- Data for Name: famille; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.famille (num_famille, nom_famille) FROM stdin;
1	Analgésique
2	Antibiotique
\.


--
-- TOC entry 4952 (class 0 OID 25093)
-- Dependencies: 223
-- Data for Name: forme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forme (nom_forme) FROM stdin;
Comprimé
Suppositoire
\.


--
-- TOC entry 4953 (class 0 OID 25096)
-- Dependencies: 224
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fournisseur (fournisseur_id, nom, adresse, telephone, email, pays) FROM stdin;
\.


--
-- TOC entry 4955 (class 0 OID 25102)
-- Dependencies: 226
-- Data for Name: ligne_cmd_livraison; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ligne_cmd_livraison (ligne_cmd_id, qte_cmd, qte_livree, num_commande, medicament_dci) FROM stdin;
\.


--
-- TOC entry 4957 (class 0 OID 25106)
-- Dependencies: 228
-- Data for Name: ligne_vendu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ligne_vendu (ligne_vendu_id, qte_vendue, num_vente, medicament_dci, prixunit_vente) FROM stdin;
1	41	7	SPASFON	70.00
2	4	8	DOLIPRANE	12.50
3	1	9	DOLIPRANE	12.50
4	5	10	DOLIPRANE	12.50
5	4	11	DOLIPRANE	12.50
6	5	12	DOLIPRANE	12.50
\.


--
-- TOC entry 4959 (class 0 OID 25110)
-- Dependencies: 230
-- Data for Name: medicament; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicament (dci, dosage, prixunit_vente, prixunit_achat, qte_stock, forme_nom_forme, famille_num_famille) FROM stdin;
AUGMENTIN	2g/100ml	150.00	120.00	25	Comprimé	2
DOLIPRANE	1000mg	12.50	10.00	5	Comprimé	1
FORXIGA	10mg	41.50	33.20	55	Comprimé	1
SERESTA	5mg	45.00	36.00	544	Suppositoire	2
SPASFON	10ml	70.00	56.00	188	Comprimé	1
\.


--
-- TOC entry 4960 (class 0 OID 25115)
-- Dependencies: 231
-- Data for Name: ordonnance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordonnance (num_ord, date_ord, nom_medecin, client_id) FROM stdin;
\.


--
-- TOC entry 4962 (class 0 OID 25119)
-- Dependencies: 233
-- Data for Name: permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permission (permission_id, nom_permission) FROM stdin;
\.


--
-- TOC entry 4964 (class 0 OID 25123)
-- Dependencies: 235
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateur (utilisateur_id, prenom, nom, date_naissance, telephone, email, adresse, identifiant, mot_de_passe, status, est_superadmin, dernier_login) FROM stdin;
1	\N	\N	\N	\N	\N	\N	iznogood	iznogood976	\N	f	\N
3	admin	admin	2025-04-09	0000000	admin@admin.fr	10 d 	admin	123456	cadre	t	\N
\.


--
-- TOC entry 4965 (class 0 OID 25129)
-- Dependencies: 236
-- Data for Name: utilisateur_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateur_permission (utilisateur_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4967 (class 0 OID 25133)
-- Dependencies: 238
-- Data for Name: vente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vente (num_vente, date_vente, status, montant, utilisateur_id) FROM stdin;
7	2025-03-21	\N	2870.00	\N
8	2025-03-21	\N	50.00	\N
9	2025-04-14	\N	12.50	\N
10	2025-04-16	\N	62.50	\N
11	2025-04-16	\N	50.00	\N
12	2025-04-17	\N	62.50	\N
\.


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 218
-- Name: client_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_client_id_seq', 1, false);


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 220
-- Name: commande_livraison_num_commande_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_livraison_num_commande_seq', 1, false);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 222
-- Name: famille_num_famille_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.famille_num_famille_seq', 2, true);


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 225
-- Name: fournisseur_fournisseur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fournisseur_fournisseur_id_seq', 1, false);


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 227
-- Name: ligne_cmd_livraison_ligne_cmd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ligne_cmd_livraison_ligne_cmd_id_seq', 1, false);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 229
-- Name: ligne_vendu_ligne_vendu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ligne_vendu_ligne_vendu_id_seq', 6, true);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 232
-- Name: ordonnance_num_ord_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ordonnance_num_ord_seq', 1, false);


--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 234
-- Name: permission_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permission_permission_id_seq', 1, false);


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 237
-- Name: utilisateur_utilisateur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateur_utilisateur_id_seq', 7, true);


--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 239
-- Name: vente_num_vente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vente_num_vente_seq', 12, true);


--
-- TOC entry 4764 (class 2606 OID 25148)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (client_id);


--
-- TOC entry 4766 (class 2606 OID 25150)
-- Name: commande_livraison commande_livraison_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_livraison
    ADD CONSTRAINT commande_livraison_pkey PRIMARY KEY (num_commande);


--
-- TOC entry 4768 (class 2606 OID 25152)
-- Name: famille famille_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.famille
    ADD CONSTRAINT famille_pkey PRIMARY KEY (num_famille);


--
-- TOC entry 4770 (class 2606 OID 25154)
-- Name: forme forme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forme
    ADD CONSTRAINT forme_pkey PRIMARY KEY (nom_forme);


--
-- TOC entry 4772 (class 2606 OID 25156)
-- Name: fournisseur fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pkey PRIMARY KEY (fournisseur_id);


--
-- TOC entry 4774 (class 2606 OID 25158)
-- Name: ligne_cmd_livraison ligne_cmd_livraison_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_cmd_livraison
    ADD CONSTRAINT ligne_cmd_livraison_pkey PRIMARY KEY (ligne_cmd_id);


--
-- TOC entry 4776 (class 2606 OID 25160)
-- Name: ligne_vendu ligne_vendu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_vendu
    ADD CONSTRAINT ligne_vendu_pkey PRIMARY KEY (ligne_vendu_id);


--
-- TOC entry 4778 (class 2606 OID 25162)
-- Name: medicament medicament_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicament
    ADD CONSTRAINT medicament_pkey PRIMARY KEY (dci);


--
-- TOC entry 4780 (class 2606 OID 25164)
-- Name: ordonnance ordonnance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordonnance
    ADD CONSTRAINT ordonnance_pkey PRIMARY KEY (num_ord);


--
-- TOC entry 4782 (class 2606 OID 25166)
-- Name: permission permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (permission_id);


--
-- TOC entry 4784 (class 2606 OID 25168)
-- Name: utilisateur utilisateur_identifiant_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_identifiant_key UNIQUE (identifiant);


--
-- TOC entry 4788 (class 2606 OID 25170)
-- Name: utilisateur_permission utilisateur_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur_permission
    ADD CONSTRAINT utilisateur_permission_pkey PRIMARY KEY (utilisateur_id, permission_id);


--
-- TOC entry 4786 (class 2606 OID 25172)
-- Name: utilisateur utilisateur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (utilisateur_id);


--
-- TOC entry 4790 (class 2606 OID 25174)
-- Name: vente vente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vente
    ADD CONSTRAINT vente_pkey PRIMARY KEY (num_vente);


--
-- TOC entry 4791 (class 2606 OID 25175)
-- Name: ligne_cmd_livraison ligne_cmd_livraison_medicament_dci_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_cmd_livraison
    ADD CONSTRAINT ligne_cmd_livraison_medicament_dci_fkey FOREIGN KEY (medicament_dci) REFERENCES public.medicament(dci);


--
-- TOC entry 4792 (class 2606 OID 25180)
-- Name: ligne_cmd_livraison ligne_cmd_livraison_num_commande_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_cmd_livraison
    ADD CONSTRAINT ligne_cmd_livraison_num_commande_fkey FOREIGN KEY (num_commande) REFERENCES public.commande_livraison(num_commande);


--
-- TOC entry 4793 (class 2606 OID 25185)
-- Name: ligne_vendu ligne_vendu_medicament_dci_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_vendu
    ADD CONSTRAINT ligne_vendu_medicament_dci_fkey FOREIGN KEY (medicament_dci) REFERENCES public.medicament(dci);


--
-- TOC entry 4794 (class 2606 OID 25190)
-- Name: ligne_vendu ligne_vendu_num_vente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_vendu
    ADD CONSTRAINT ligne_vendu_num_vente_fkey FOREIGN KEY (num_vente) REFERENCES public.vente(num_vente);


--
-- TOC entry 4795 (class 2606 OID 25195)
-- Name: medicament medicament_famille_num_famille_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicament
    ADD CONSTRAINT medicament_famille_num_famille_fkey FOREIGN KEY (famille_num_famille) REFERENCES public.famille(num_famille);


--
-- TOC entry 4796 (class 2606 OID 25200)
-- Name: medicament medicament_forme_nom_forme_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicament
    ADD CONSTRAINT medicament_forme_nom_forme_fkey FOREIGN KEY (forme_nom_forme) REFERENCES public.forme(nom_forme);


--
-- TOC entry 4797 (class 2606 OID 25205)
-- Name: ordonnance ordonnance_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordonnance
    ADD CONSTRAINT ordonnance_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.client(client_id);


--
-- TOC entry 4798 (class 2606 OID 25210)
-- Name: utilisateur_permission utilisateur_permission_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur_permission
    ADD CONSTRAINT utilisateur_permission_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.permission(permission_id);


--
-- TOC entry 4799 (class 2606 OID 25215)
-- Name: utilisateur_permission utilisateur_permission_utilisateur_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur_permission
    ADD CONSTRAINT utilisateur_permission_utilisateur_id_fkey FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateur(utilisateur_id);


--
-- TOC entry 4800 (class 2606 OID 25220)
-- Name: vente vente_utilisateur_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vente
    ADD CONSTRAINT vente_utilisateur_id_fkey FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateur(utilisateur_id);


-- Completed on 2025-04-17 13:40:54

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

--
-- Name: sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sector (
    sector_id integer NOT NULL PRIMARY KEY,
    name_en character varying(500) NOT NULL,
    name_de character varying(500) NOT NULL
);


ALTER TABLE public.sector OWNER TO postgres;

--
-- Name: sector_sector_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sector_sector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sector_sector_id_seq OWNER TO postgres;

--
-- Name: sector_sector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sector_sector_id_seq OWNED BY public.sector.sector_id;


--
-- Name: sector sector_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sector ALTER COLUMN sector_id SET DEFAULT nextval('public.sector_sector_id_seq'::regclass);


CREATE TABLE public.subsector (
    subsector_id integer NOT NULL PRIMARY KEY,
    sector_id integer NOT NULL,
    name_en character varying(500) NOT NULL,
    name_de character varying(500) NOT NULL,
    FOREIGN KEY (sector_id) REFERENCES public.sector (sector_id)
);

ALTER TABLE public.subsector OWNER TO postgres;


--
-- Data for Name: sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sector (sector_id, name_en, name_de) FROM stdin;
1	Energy	Energie
2	Transport	Verkehr
3	Banking	Bankwesen
4	Financial market infrastructures	Finanzmarktinfrastrukturen 
5	Health sector	Gesundheitswesen
6	Drinking water supply and distribution	Trinkwasserlieferung und -versorgung
7	Digital Infrastructure	Digitale Infrastruktur
8	Public administration	Öffentliche Verwaltung
9	Other	Sonstige
10	Unknown	Unbekannt
\.

COMMIT;

COPY public.subsector (subsector_id, sector_id, name_en, name_de) FROM stdin;
1	1	Electricity	Elektrizität
2	1	Oil	Erdöl
3	1	Gas	Erdgas
4	2	Air transport	Luftverkehr
5	2	Rail transport	Schienenverkehr
6	2	Water transport	Schifffahrt
7	2	Road transport	Straßenverkehr
8	3	Banking	Bankwesen
9	4	Financial market infrastructures	Finanzmarktinfrastrukturen
10	5	Health care settings (including hospitals and private clinics)	Einrichtungen der medizinischen Versorgung (einschließlich Krankenhäuser und Privatkliniken)
11	6	Drinking water supply and distribution	Trinkwasserlieferung und -versorgung
12	7	IXPs	IXPs
13	7	DNS service providers	DNS-Diensteanbieter
14	7	TLD name registries	DNS-Name-Registries
15	8	Public administration	Öffentliche Verwaltung
16	9	Other	Sonstige
17	10	Unknown	Unbekannt
\.

--
-- Name: sector sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sector
    ADD CONSTRAINT sector_pkey PRIMARY KEY (sector_id);


--
-- PostgreSQL database dump complete
--


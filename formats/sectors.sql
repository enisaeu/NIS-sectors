--
-- PostgreSQL database dump
--

--
-- Name: sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sector (
    sector_id integer NOT NULL,
    name character varying(100) NOT NULL
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


--
-- Data for Name: sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sector (sector_id, name) FROM stdin;
1	Energy
2	Transport
3	Banking
4	Financial market infrastructures
5	Health sector
6	Drinking water supply and distribution
7	Digital Infrastructure
8	Government
9	Other
10	Unknown
\.



--
-- Name: sector sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sector
    ADD CONSTRAINT sector_pkey PRIMARY KEY (sector_id);


--
-- PostgreSQL database dump complete
--


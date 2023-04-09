--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fifthtable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifthtable (
    fifthtable_id integer NOT NULL,
    name character varying,
    new_col boolean,
    new_col2 integer NOT NULL
);


ALTER TABLE public.fifthtable OWNER TO freecodecamp;

--
-- Name: fifthtable_id_5th_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifthtable_id_5th_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifthtable_id_5th_seq OWNER TO freecodecamp;

--
-- Name: fifthtable_id_5th_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifthtable_id_5th_seq OWNED BY public.fifthtable.fifthtable_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    disacross numeric,
    briefdisc text,
    haslife boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    sizekm numeric,
    planet_id integer,
    haslife boolean,
    circlesplanet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    sizekm numeric,
    star_id integer,
    haslife boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    sizekm numeric,
    galaxy_id integer,
    temp integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifthtable fifthtable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable ALTER COLUMN fifthtable_id SET DEFAULT nextval('public.fifthtable_id_5th_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: fifthtable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifthtable VALUES (1, '1', true, 1);
INSERT INTO public.fifthtable VALUES (4, '2', false, 1);
INSERT INTO public.fifthtable VALUES (7, '3', NULL, 21);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', 100000, 'ourhome', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 100001, 'not home', false);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 100002, 'not home', false);
INSERT INTO public.galaxy VALUES (4, 'Messier82', 100003, 'not home', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 100004, 'not home', false);
INSERT INTO public.galaxy VALUES (6, 'Blackeye', 100004, 'not home', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (3, 'moon3', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (4, 'moon4', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (5, 'moon5', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (6, 'moon6', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (7, 'moon7', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (8, 'moon8', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (9, 'moon9', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (10, 'moon10', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (12, 'moon11', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (13, 'moon12', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (14, 'moon13', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (15, 'moon14', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (16, 'moon15', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (17, 'moon16', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (18, 'moon17', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (19, 'moon18', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (20, 'moon19', 45634, 1, false, 1);
INSERT INTO public.moon VALUES (21, 'moon20', 45634, 1, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 45634, 1, true);
INSERT INTO public.planet VALUES (2, 'planet2', 45634, 1, true);
INSERT INTO public.planet VALUES (3, 'planet3', 45634, 1, false);
INSERT INTO public.planet VALUES (4, 'planet4', 45634, 2, false);
INSERT INTO public.planet VALUES (5, 'planet5', 45634, 2, false);
INSERT INTO public.planet VALUES (6, 'planet6', 45634, 2, false);
INSERT INTO public.planet VALUES (7, 'planet7', 45634, 3, false);
INSERT INTO public.planet VALUES (8, 'planet8', 45634, 3, false);
INSERT INTO public.planet VALUES (9, 'planet9', 45634, 4, false);
INSERT INTO public.planet VALUES (10, 'planet10', 45634, 5, false);
INSERT INTO public.planet VALUES (11, 'planet11', 45634, 5, false);
INSERT INTO public.planet VALUES (12, 'planet12', 45634, 6, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'oursun', 1400000, 1, 5500);
INSERT INTO public.star VALUES (2, 'androsun', 1423400, 2, 5500);
INSERT INTO public.star VALUES (3, 'whirlpoolsun', 142234, 3, 1230);
INSERT INTO public.star VALUES (4, 'othersun', 123234, 4, 1245);
INSERT INTO public.star VALUES (5, 'anothersun', 9876567, 5, 76456);
INSERT INTO public.star VALUES (6, 'sixsun', 345634, 6, 3456346);


--
-- Name: fifthtable_id_5th_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifthtable_id_5th_seq', 7, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: fifthtable fifthtable_new_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT fifthtable_new_col_key UNIQUE (new_col);


--
-- Name: fifthtable fifthtable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT fifthtable_pkey PRIMARY KEY (fifthtable_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


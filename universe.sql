--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    description text,
    galaxy_types text NOT NULL,
    has_life integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: gott; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gott (
    gott_id integer NOT NULL,
    name character varying(255),
    has_life boolean,
    description text NOT NULL
);


ALTER TABLE public.gott OWNER TO freecodecamp;

--
-- Name: gott_gott_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gott_gott_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gott_gott_id_seq OWNER TO freecodecamp;

--
-- Name: gott_gott_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gott_gott_id_seq OWNED BY public.gott.gott_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(255),
    description text,
    age_in_millions_of_years numeric,
    has_life boolean,
    distance_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(255),
    description text,
    age_in_millions_of_years numeric,
    has_life boolean,
    distance_from_earth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(255),
    description text,
    age_in_millions_of_years numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: gott gott_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gott ALTER COLUMN gott_id SET DEFAULT nextval('public.gott_gott_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ab', 'big Galaxy', 'big', 0);
INSERT INTO public.galaxy VALUES (2, 'ab', 'big Galaxy', 'big', 0);
INSERT INTO public.galaxy VALUES (3, 'ab', 'big Galaxy', 'big', 0);
INSERT INTO public.galaxy VALUES (4, 'ab', 'big Galaxy', 'big', 0);
INSERT INTO public.galaxy VALUES (5, 'ab', 'big Galaxy', 'big', 0);
INSERT INTO public.galaxy VALUES (6, 'ab', 'big Galaxy', 'big', 0);


--
-- Data for Name: gott; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gott VALUES (1, NULL, NULL, 'HI');
INSERT INTO public.gott VALUES (2, NULL, NULL, 'HI');
INSERT INTO public.gott VALUES (3, NULL, NULL, 'HI');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (2, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (3, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (4, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (5, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (6, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (7, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (8, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (9, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (10, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (11, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (12, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (13, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (14, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (15, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (16, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (17, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (18, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (19, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (20, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (21, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.moon VALUES (22, 1, 'ab', 'abasdsad', 1000, true, 1000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (2, 2, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (3, 3, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (4, 4, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (5, 5, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (6, 6, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (8, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (9, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (10, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (11, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (12, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (13, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (14, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (15, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (16, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (17, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (18, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (19, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (20, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (21, 1, 'ab', 'abasdsad', 1000, true, 1000);
INSERT INTO public.planet VALUES (22, 1, 'ab', 'abasdsad', 1000, true, 1000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'ab', 'ashdahdha', 1000);
INSERT INTO public.star VALUES (2, 2, 'ab', 'ashdahdha', 1000);
INSERT INTO public.star VALUES (3, 3, 'ab', 'ashdahdha', 1000);
INSERT INTO public.star VALUES (4, 4, 'ab', 'ashdahdha', 1000);
INSERT INTO public.star VALUES (5, 5, 'ab', 'ashdahdha', 1000);
INSERT INTO public.star VALUES (6, 6, 'ab', 'ashdahdha', 1000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: gott_gott_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gott_gott_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: gott gott_gott_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gott
    ADD CONSTRAINT gott_gott_id_key UNIQUE (gott_id);


--
-- Name: gott gott_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gott
    ADD CONSTRAINT gott_pkey PRIMARY KEY (gott_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


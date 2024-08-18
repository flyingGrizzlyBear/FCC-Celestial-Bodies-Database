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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_year integer,
    informations text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(10,1),
    has_water boolean,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_million_of_years integer,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    is_spherical boolean
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
-- Name: whatever; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.whatever (
    whatever_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_true boolean
);


ALTER TABLE public.whatever OWNER TO freecodecamp;

--
-- Name: whatever_whatever_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.whatever_whatever_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.whatever_whatever_id_seq OWNER TO freecodecamp;

--
-- Name: whatever_whatever_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.whatever_whatever_id_seq OWNED BY public.whatever.whatever_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Name: whatever whatever_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whatever ALTER COLUMN whatever_id SET DEFAULT nextval('public.whatever_whatever_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1st galaxy', 'pla bla bla', 50, NULL);
INSERT INTO public.galaxy VALUES (2, '2st galaxy', 'pla sdfsf bla bla', 58, NULL);
INSERT INTO public.galaxy VALUES (3, '3st galaxy', 'pla sdfa', 24, NULL);
INSERT INTO public.galaxy VALUES (4, '4st galaxy', 'pla sdgggfa', 15, NULL);
INSERT INTO public.galaxy VALUES (5, '5st galaxy', 'la sdgfxhfghgfa', 11, NULL);
INSERT INTO public.galaxy VALUES (6, '6st galaxy', 'pklmxhfghgfa', 9, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 1000410.0, true, 1);
INSERT INTO public.moon VALUES (2, 'moon 2', 1045410.0, true, 2);
INSERT INTO public.moon VALUES (3, 'moon 3', 1045410.0, true, 3);
INSERT INTO public.moon VALUES (4, 'moon 4', 1045410.0, true, 5);
INSERT INTO public.moon VALUES (5, 'moon 5', 1045410.0, true, 4);
INSERT INTO public.moon VALUES (6, 'moon 6', 1045410.0, true, 6);
INSERT INTO public.moon VALUES (7, 'moon 7', 3445410.0, false, 7);
INSERT INTO public.moon VALUES (8, 'moon 8', 3445410.0, false, 8);
INSERT INTO public.moon VALUES (9, 'moon 9', 3445410.0, false, 9);
INSERT INTO public.moon VALUES (10, 'moon 10', 3445410.0, false, 10);
INSERT INTO public.moon VALUES (11, 'moon 11', 3445410.0, false, 16);
INSERT INTO public.moon VALUES (12, 'moon 12', 3445410.0, false, 14);
INSERT INTO public.moon VALUES (14, 'moon 13', 3445410.0, false, 14);
INSERT INTO public.moon VALUES (15, 'moon 14', 3445410.0, false, 13);
INSERT INTO public.moon VALUES (16, 'moon 15', 3445410.0, false, 12);
INSERT INTO public.moon VALUES (17, 'moon 16', 3445410.0, false, 11);
INSERT INTO public.moon VALUES (18, 'moon 17', 3445410.0, false, 10);
INSERT INTO public.moon VALUES (19, 'moon 18', 3445410.0, false, 9);
INSERT INTO public.moon VALUES (20, 'moon 19', 3445410.0, false, 3);
INSERT INTO public.moon VALUES (21, 'moon 20', 3445410.0, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', true, 50, 1);
INSERT INTO public.planet VALUES (2, 'planet 2', true, 49, 1);
INSERT INTO public.planet VALUES (3, 'planet 3', false, 48, 2);
INSERT INTO public.planet VALUES (4, 'planet 4', false, 48, 4);
INSERT INTO public.planet VALUES (5, 'planet 5', true, 17, 6);
INSERT INTO public.planet VALUES (6, 'planet 6', false, 29, 3);
INSERT INTO public.planet VALUES (7, 'planet 7', false, 29, 5);
INSERT INTO public.planet VALUES (8, 'planet 8', false, 29, 5);
INSERT INTO public.planet VALUES (9, 'planet 9', false, 29, 6);
INSERT INTO public.planet VALUES (10, 'planet 10', false, 29, 2);
INSERT INTO public.planet VALUES (11, 'planet 11', true, 29, 1);
INSERT INTO public.planet VALUES (12, 'planet 12', true, 29, 1);
INSERT INTO public.planet VALUES (13, 'planet 13', true, 43, 3);
INSERT INTO public.planet VALUES (14, 'planet 14', false, 43, 5);
INSERT INTO public.planet VALUES (16, 'planet 15', false, 43, 1);
INSERT INTO public.planet VALUES (17, 'planet 16', false, 43, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1st star', 1, 'asfdjlkasdfj', true);
INSERT INTO public.star VALUES (2, '2st star', 3, 'asfasdfj', true);
INSERT INTO public.star VALUES (3, '3st star', 6, 'asfassdfdfj', true);
INSERT INTO public.star VALUES (4, '4st star', 5, 'rtzrtzfj', true);
INSERT INTO public.star VALUES (5, '5st star', 1, 'opözrtzfj', true);
INSERT INTO public.star VALUES (6, '6st star', 1, 'asdfdsffj', false);


--
-- Data for Name: whatever; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.whatever VALUES (1, 'a name', NULL);
INSERT INTO public.whatever VALUES (2, 'a name 2', NULL);
INSERT INTO public.whatever VALUES (3, 'a name 3', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: whatever_whatever_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.whatever_whatever_id_seq', 3, true);


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
-- Name: whatever whatever_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whatever
    ADD CONSTRAINT whatever_name_key UNIQUE (name);


--
-- Name: whatever whatever_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whatever
    ADD CONSTRAINT whatever_pkey PRIMARY KEY (whatever_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


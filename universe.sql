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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text,
    age integer NOT NULL,
    is_active boolean,
    "position" integer
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
    name character varying(32) NOT NULL,
    planet_id integer,
    diameter integer,
    is_spherical boolean,
    has_atmosphere boolean,
    "position" integer
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
    name character varying(32) NOT NULL,
    star_id integer,
    distance_from_star numeric,
    has_atmosphere boolean,
    is_habitable boolean,
    "position" integer
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
-- Name: satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellites (
    satellites_id integer NOT NULL,
    name character varying(32) NOT NULL,
    planet_id integer,
    is_active boolean,
    launch_year integer,
    purpose text,
    "position" integer
);


ALTER TABLE public.satellites OWNER TO freecodecamp;

--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellites_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellites_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellites_satellite_id_seq OWNED BY public.satellites.satellites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(32) NOT NULL,
    galaxy_id integer,
    mass numeric NOT NULL,
    temperature integer,
    is_visible boolean,
    "position" integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellites satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites ALTER COLUMN satellites_id SET DEFAULT nextval('public.satellites_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 10000, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to the milky way', 9000, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third largest galaxy in the Local group', 8000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A grand-design spiral galaxy', 7000, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'A galaxy with a distinctive sombrero-like shape', 6000, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 'A galaxy with a cigar-shape like', 5000, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3474, true, false, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 22, true, false, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 12, true, false, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4, 5268, true, false, NULL);
INSERT INTO public.moon VALUES (5, 'Titan', 5, 5150, true, true, NULL);
INSERT INTO public.moon VALUES (6, 'Enceladus', 5, 504, true, true, NULL);
INSERT INTO public.moon VALUES (7, 'Miranda', 6, 471, true, false, NULL);
INSERT INTO public.moon VALUES (8, 'Triton', 7, 2707, true, true, NULL);
INSERT INTO public.moon VALUES (9, 'Europa', 4, 3122, true, false, NULL);
INSERT INTO public.moon VALUES (10, 'Callisto', 4, 4800, true, false, NULL);
INSERT INTO public.moon VALUES (11, 'Io', 4, 3637, true, false, NULL);
INSERT INTO public.moon VALUES (12, 'Hyperion', 5, 270, false, false, NULL);
INSERT INTO public.moon VALUES (13, 'Iapetus', 5, 1469, true, false, NULL);
INSERT INTO public.moon VALUES (14, 'Rhea', 5, 1528, true, false, NULL);
INSERT INTO public.moon VALUES (15, 'Dione', 5, 1122, true, false, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 5, 1062, true, false, NULL);
INSERT INTO public.moon VALUES (17, 'Oberon', 6, 1523, true, false, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 6, 1578, true, false, NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', 6, 1169, true, false, NULL);
INSERT INTO public.moon VALUES (20, 'Ariel', 6, 1157, true, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1, true, true, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 1.524, true, false, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 0.723, true, false, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', 2, 5.203, true, false, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 2, 9.582, true, false, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', 2, 19.18, true, false, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', 2, 30.07, true, false, NULL);
INSERT INTO public.planet VALUES (8, 'Mercury', 1, 0.39, false, false, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 39.48, false, false, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 3, 1.05, true, true, NULL);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 4, 0.047, true, false, NULL);
INSERT INTO public.planet VALUES (12, 'Trappist-1e', 5, 0.029, true, true, NULL);


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellites VALUES (1, 'Hubble space telescope', 1, true, 1990, 'Astronomical observations', NULL);
INSERT INTO public.satellites VALUES (2, 'Mars rover', 2, true, 2012, 'Exploration of Mars', NULL);
INSERT INTO public.satellites VALUES (3, 'Cassini', 5, false, 1997, 'Study of Saturn and its moon', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1989000000000000000000000000000, 5778, true, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 2020000000000000000000000000000, 9940, true, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 2, 1100000000000000000000000000000, 5790, true, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 15000000000000000000000000000000, 3500, true, NULL);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 2, 123000000000000000000000000000, 3042, true, NULL);
INSERT INTO public.star VALUES (6, 'Vega', 1, 2135000000000000000000000000000, 9602, true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellites_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_position_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_position_key UNIQUE ("position");


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_position_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_position_key UNIQUE ("position");


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_position_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_position_key UNIQUE ("position");


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (satellites_id);


--
-- Name: satellites satellites_position_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_position_key UNIQUE ("position");


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_position_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_position_key UNIQUE ("position");


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
-- Name: satellites satellites_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


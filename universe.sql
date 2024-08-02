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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    viewable boolean,
    distance integer,
    color character varying(30)
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    distance_from_planet integer NOT NULL,
    size integer NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    size_tons numeric(50,2),
    description text,
    gaseous boolean
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    distance_from_planet integer,
    color character varying(30)
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
-- Name: testing_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.testing_table (
    name character varying(30),
    null1 integer,
    null2 integer,
    testing_table_id integer NOT NULL,
    notnull1 integer NOT NULL
);


ALTER TABLE public.testing_table OWNER TO freecodecamp;

--
-- Name: testing_table_testing_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.testing_table_testing_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testing_table_testing_table_id_seq OWNER TO freecodecamp;

--
-- Name: testing_table_testing_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.testing_table_testing_table_id_seq OWNED BY public.testing_table.testing_table_id;


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
-- Name: testing_table testing_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.testing_table ALTER COLUMN testing_table_id SET DEFAULT nextval('public.testing_table_testing_table_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, false, 1000, 'blue');
INSERT INTO public.galaxy VALUES ('galaxy2', 2, true, 2000, 'blue');
INSERT INTO public.galaxy VALUES ('galaxy3', 3, true, 3000, 'orange');
INSERT INTO public.galaxy VALUES ('galaxy4', 4, false, 4000, 'orange');
INSERT INTO public.galaxy VALUES ('galaxy5', 5, false, 4000, 'orange');
INSERT INTO public.galaxy VALUES ('galaxy6', 6, false, 4000, 'orange');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon2', 2, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon3', 3, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon4', 4, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon5', 5, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon6', 6, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon7', 7, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon8', 8, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon9', 9, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon10', 10, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon11', 11, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon12', 12, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon13', 13, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon14', 14, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon15', 15, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon16', 16, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon17', 17, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon18', 18, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon19', 19, 1, 1000, 2000);
INSERT INTO public.moon VALUES ('moon20', 20, 1, 1000, 2000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet2', 2, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet3', 3, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet4', 4, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet5', 5, 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet6', 6, 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet7', 7, 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet8', 8, 5, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet9', 9, 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet10', 10, 5, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet11', 11, 6, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet12', 12, 6, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, 1, 1000, 'blue');
INSERT INTO public.star VALUES ('star2', 2, 2, 2000, 'blue');
INSERT INTO public.star VALUES ('star3', 3, 3, 2000, 'blue');
INSERT INTO public.star VALUES ('star4', 4, 4, 2000, 'blue');
INSERT INTO public.star VALUES ('star5', 5, 5, 2000, 'blue');
INSERT INTO public.star VALUES ('star6', 6, 6, 2000, 'blue');


--
-- Data for Name: testing_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.testing_table VALUES (NULL, NULL, NULL, 1, 1);
INSERT INTO public.testing_table VALUES (NULL, NULL, NULL, 2, 2);
INSERT INTO public.testing_table VALUES (NULL, NULL, NULL, 3, 3);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: testing_table_testing_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.testing_table_testing_table_id_seq', 3, true);


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
-- Name: testing_table testing_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.testing_table
    ADD CONSTRAINT testing_table_name_key UNIQUE (name);


--
-- Name: testing_table testing_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.testing_table
    ADD CONSTRAINT testing_table_pkey PRIMARY KEY (testing_table_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
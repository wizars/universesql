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
-- Name: cometas; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cometas (
    cometas_id integer NOT NULL,
    name character varying(50) NOT NULL,
    tipo integer
);


ALTER TABLE public.cometas OWNER TO freecodecamp;

--
-- Name: cometas_cometa_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cometas_cometa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cometas_cometa_id_seq OWNER TO freecodecamp;

--
-- Name: cometas_cometa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cometas_cometa_id_seq OWNED BY public.cometas.cometas_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    visible boolean,
    comentarios text
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
    planet_id integer NOT NULL,
    color integer,
    yyoqse character varying(30)
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
    habitable boolean,
    clase integer,
    star_id integer
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
    size numeric,
    galaxy_id integer,
    color integer
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
-- Name: cometas cometas_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometas ALTER COLUMN cometas_id SET DEFAULT nextval('public.cometas_cometa_id_seq'::regclass);


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
-- Data for Name: cometas; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cometas VALUES (1, 'kakis', 1);
INSERT INTO public.cometas VALUES (3, 'kakidasds', 2);
INSERT INTO public.cometas VALUES (4, 'haly', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', NULL, true, 'la nuestra');
INSERT INTO public.galaxy VALUES (2, 'via otara', NULL, false, 'ladsdsg');
INSERT INTO public.galaxy VALUES (3, 'galaxy 2ra', NULL, false, 'kakas g');
INSERT INTO public.galaxy VALUES (4, 'andromeda', NULL, false, 'otra');
INSERT INTO public.galaxy VALUES (5, 'gato', NULL, false, 'yo q sea');
INSERT INTO public.galaxy VALUES (6, 'perro', NULL, false, 'yo q se dasdasa');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Metis', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Adrastea', 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'amaltea', 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Tebe', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Europa', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Ganimides', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Calisto', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Temisto', 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Leda', 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Himalia', 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Ersa', 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Ortosia', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Eufeme', 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Valetudo', 3, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Euporia', 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Carpo', 3, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Dia', 3, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Elara', 3, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Lisitea', 3, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Panda', 3, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', true, 1, 1);
INSERT INTO public.planet VALUES (2, 'marte', false, 1, 1);
INSERT INTO public.planet VALUES (3, 'jupiter', false, 2, 1);
INSERT INTO public.planet VALUES (4, 'dune', false, 2, 2);
INSERT INTO public.planet VALUES (5, 'dplutoon', false, 2, 1);
INSERT INTO public.planet VALUES (6, 'saturnon', false, 2, 1);
INSERT INTO public.planet VALUES (7, 'venus', false, 2, 1);
INSERT INTO public.planet VALUES (8, 'neptuno', false, 2, 1);
INSERT INTO public.planet VALUES (9, 'urano', false, 2, 1);
INSERT INTO public.planet VALUES (10, 'mercurio', false, 2, 1);
INSERT INTO public.planet VALUES (11, 'ceres', false, 2, 1);
INSERT INTO public.planet VALUES (12, 'eris', false, 2, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'ekaka', 9, NULL, NULL);
INSERT INTO public.star VALUES (1, 'sol', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'gorda', 24, 1, NULL);
INSERT INTO public.star VALUES (5, 'estrellitaa', 70, 1, NULL);
INSERT INTO public.star VALUES (4, 'blancaa', 600, 2, NULL);
INSERT INTO public.star VALUES (3, 'enanna', 4, 3, NULL);


--
-- Name: cometas_cometa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cometas_cometa_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cometas cometas_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometas
    ADD CONSTRAINT cometas_pkey PRIMARY KEY (cometas_id);


--
-- Name: cometas cometas_tipo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometas
    ADD CONSTRAINT cometas_tipo_key UNIQUE (tipo);


--
-- Name: moon ds; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT ds UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: planet kk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT kk UNIQUE (name);


--
-- Name: galaxy kks; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT kks UNIQUE (name);


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
-- Name: star star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_key UNIQUE (color);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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


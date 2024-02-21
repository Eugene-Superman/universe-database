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
    name character varying NOT NULL,
    size integer,
    coordinates text,
    with_black_holes boolean NOT NULL
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
    name character varying NOT NULL,
    description text,
    size integer NOT NULL,
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
-- Name: moon_surface; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_surface (
    moon_surface_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.moon_surface OWNER TO freecodecamp;

--
-- Name: moon_surface_moon_surface_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_surface_moon_surface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_surface_moon_surface_id_seq OWNER TO freecodecamp;

--
-- Name: moon_surface_moon_surface_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_surface_moon_surface_id_seq OWNED BY public.moon_surface.moon_surface_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    position_as_for_sun numeric NOT NULL,
    with_life boolean NOT NULL,
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
    name character varying NOT NULL,
    size integer,
    is_dead boolean,
    galaxy_id integer NOT NULL
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
-- Name: moon_surface moon_surface_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_surface ALTER COLUMN moon_surface_id SET DEFAULT nextval('public.moon_surface_moon_surface_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'solar', 2131232, '2232.23', false);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 32232, '121121.23', true);
INSERT INTO public.galaxy VALUES (3, 'Buyaka', 3242343, '32434.324.324', false);
INSERT INTO public.galaxy VALUES (4, 'Gigimon', 23123123, '2132.323.23.23', true);
INSERT INTO public.galaxy VALUES (5, '8 mile', 3234234, '231232.232.213', true);
INSERT INTO public.galaxy VALUES (6, 'Breaking Bad', 23324234, '32434.343', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ciciron', 'Nice moon', 213123, 9);
INSERT INTO public.moon VALUES (2, 'Penis', 'Looks like penis', 6, 7);
INSERT INTO public.moon VALUES (3, 'Lambo', 'Italian moon', 12321, 5);
INSERT INTO public.moon VALUES (4, 'Angola', 'Best market', 228, 1);
INSERT INTO public.moon VALUES (5, 'Earth moon', 'Our native', 32323, 3);
INSERT INTO public.moon VALUES (6, 'Mars moon', 'I dont remember name', 323232, 4);
INSERT INTO public.moon VALUES (7, 'WWE', 'for teenagers', 3333, 5);
INSERT INTO public.moon VALUES (8, 'Lord of the rings', 'Top content', 100, 10);
INSERT INTO public.moon VALUES (9, 'Last of us', 'Also top content', 32323, 10);
INSERT INTO public.moon VALUES (10, 'Quotes', 'I don''t like to test quotes', 1, 11);
INSERT INTO public.moon VALUES (27, 'Gngsta', 'Gang rap', 889899, 12);
INSERT INTO public.moon VALUES (28, 'Gang Bang', 'Funny moon', 10, 5);
INSERT INTO public.moon VALUES (29, 'Apple', 'mothofucker', 100000, 3);
INSERT INTO public.moon VALUES (30, 'Alibaba', '40 gangs', 212112, 9);
INSERT INTO public.moon VALUES (31, 'Witcher', 'series', 17, 9);
INSERT INTO public.moon VALUES (32, 'Rabbit', 'Old', 780087, 9);
INSERT INTO public.moon VALUES (33, 'Swag', 'rap', 787878, 9);
INSERT INTO public.moon VALUES (34, 'PGT13', 'C3M, bessuka-bit', 1212, 12);
INSERT INTO public.moon VALUES (35, 'Disco', 'You''re my heart, you''re my soule', 228, 11);
INSERT INTO public.moon VALUES (36, 'Poland', 'Near Ukraine planet', 121221, 3);


--
-- Data for Name: moon_surface; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_surface VALUES (1, 'pop', 'hueta');
INSERT INTO public.moon_surface VALUES (2, 'ferra', 'expensive hueta');
INSERT INTO public.moon_surface VALUES (3, 'Samsung', 'Norm');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Snoop Dogg', 3, false, 4);
INSERT INTO public.planet VALUES (2, 'Rocky', 2, true, 5);
INSERT INTO public.planet VALUES (3, 'Earth', 7, true, 3);
INSERT INTO public.planet VALUES (4, 'Saturn', 3, false, 3);
INSERT INTO public.planet VALUES (5, 'Gcchi Mucchi', 9, true, 1);
INSERT INTO public.planet VALUES (6, 'Trapp', 1, true, 2);
INSERT INTO public.planet VALUES (7, 'Glad', 2, true, 5);
INSERT INTO public.planet VALUES (8, 'Venera', 8, false, 3);
INSERT INTO public.planet VALUES (9, 'GTA', 228, true, 2);
INSERT INTO public.planet VALUES (10, 'PS', 1, true, 4);
INSERT INTO public.planet VALUES (11, 'Xbox', 4, false, 5);
INSERT INTO public.planet VALUES (12, 'Daril', 4, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'F1', 2312323, true, 6);
INSERT INTO public.star VALUES (2, 'Hulk', 332323, false, 3);
INSERT INTO public.star VALUES (3, 'Sun', 32323, false, 1);
INSERT INTO public.star VALUES (4, 'Siamon', 233223, true, 5);
INSERT INTO public.star VALUES (5, 'BBC', 21323, false, 5);
INSERT INTO public.star VALUES (6, 'Audi', 2132132, true, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: moon_surface_moon_surface_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_surface_moon_surface_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: moon_surface moon_surface_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_surface
    ADD CONSTRAINT moon_surface_pkey PRIMARY KEY (moon_surface_id);


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
-- Name: moon_surface unique_moon_surface_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_surface
    ADD CONSTRAINT unique_moon_surface_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30),
    date_discovered date,
    radius numeric NOT NULL,
    composition text,
    asteroid_orbit_peroid integer,
    asteroid_speed integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    mass numeric NOT NULL,
    type text,
    radius numeric,
    date_discovered date,
    galaxy_age integer,
    galaxy_number_of_stars integer
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
    name character varying(30),
    mass numeric NOT NULL,
    temperature numeric,
    radius numeric NOT NULL,
    is_habitable boolean,
    planet_id integer,
    date_discovered date,
    moon_orbit_period integer
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
    name character varying(30),
    mass numeric NOT NULL,
    temperature numeric,
    radius numeric NOT NULL,
    is_habitable boolean,
    star_id integer,
    date_discovered date,
    planet_orbital_period integer
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
    name character varying(30),
    mass numeric NOT NULL,
    luminosity numeric NOT NULL,
    galaxy_id integer,
    date_discovered date,
    age text,
    star_number_of_planets integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', '2000-01-01', 469.7, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (2, 'Vesta', '2000-01-02', 262.7, 'Silicaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (3, 'Pallas', '2000-01-03', 256.2, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', '2000-01-04', 215.2, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (5, 'Interamnia', '2000-01-05', 208.9, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (6, 'Europa', '2000-01-06', 156.6, 'Silicaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (7, 'Davida', '2000-01-07', 158.0, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (8, 'Sylvia', '2000-01-08', 135.5, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (9, 'Cybele', '2000-01-09', 125.5, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (10, 'Eunomia', '2000-01-10', 127.6, 'Silicaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (11, 'Juno', '2000-01-11', 119.1, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (12, 'Hektor', '2000-01-12', 121.5, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (13, 'Daphne', '2000-01-13', 116.5, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (14, 'Ernestina', '2000-01-14', 113.2, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (15, 'Nysa', '2000-01-15', 114.5, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (16, 'Antiope', '2000-01-16', 107.6, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (17, 'Doris', '2000-01-17', 105.8, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (18, 'Gustav', '2000-01-18', 102.5, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (19, 'Amphitrite', '2000-01-19', 101.6, 'Carbonaceous', NULL, NULL);
INSERT INTO public.asteroid VALUES (20, 'Camilla', '2000-01-20', 99.5, 'Carbonaceous', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 600000000000, 'Spiral', 100000, '2000-01-01', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 700000000000, 'Spiral', 110000, '2001-03-15', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2000000000, 'Spiral', 50000, '2002-05-20', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 6400000000000, 'Elliptical', 120000, '2003-07-10', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'IC 1101', 20000000000000, 'Lenticular', 150000, '2004-09-05', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 1200000000000, 'Elliptical', 90000, '2005-11-18', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'NGC 1300', 180000000000, 'Spiral', 80000, '2006-12-25', NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Sombrero', 420000000000, 'Lenticular', 85000, '2007-04-30', NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Whirlpool', 360000000000, 'Spiral', 70000, '2008-06-07', NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Cartwheel', 90000000000, 'Ring', 45000, '2009-08-11', NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'NGC 1232', 72000000000, 'Spiral', 40000, '2010-10-14', NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'Messier 106', 360000000000, 'Spiral', 60000, '2011-12-20', NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'NGC 4414', 64000000000, 'Spiral', 35000, '2012-02-28', NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'NGC 3190', 88000000000, 'Spiral', 38000, '2013-04-05', NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'Leo I', 1200000000, 'Dwarf Elliptical', 20000, '2014-06-19', NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'Hoag''s Object', 100000000000, 'Ring', 55000, '2015-08-22', NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'NGC 5128', 200000000000, 'Lenticular', 80000, '2016-10-30', NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'UGC 2885', 360000000000, 'Spiral', 75000, '2017-12-12', NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'IC 342', 72000000000, 'Spiral', 40000, '2018-02-15', NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'NGC 1365', 90000000000, 'Barred Spiral', 65000, '2019-04-01', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 73500000000000000000000, 197, 1737.5, false, 3, '2000-01-01', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 10659000000000000, 233, 11.1, false, 4, '2000-01-02', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 1476200000000000, 233, 6.2, false, 4, '2000-01-03', NULL);
INSERT INTO public.moon VALUES (4, 'Io', 89300000000000000000000, 110, 1821.6, false, 5, '2000-01-04', NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 48000000000000000000000, 103, 1560.8, false, 5, '2000-01-05', NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 148000000000000000000000, 70, 2634.1, false, 5, '2000-01-06', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 108000000000000000000000, 134, 2410.3, false, 5, '2000-01-07', NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 135000000000000000000000, 94, 2574.7, false, 6, '2000-01-08', NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 2310000000000000000000, 53, 764.3, false, 7, '2000-01-09', NULL);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1800000000000000000000, 130, 735.6, false, 7, '2000-01-10', NULL);
INSERT INTO public.moon VALUES (11, 'Miranda', 65900000000000000000, 60, 235.8, false, 8, '2000-01-11', NULL);
INSERT INTO public.moon VALUES (12, 'Titania', 3530000000000000000000, 79, 788.4, false, 9, '2000-01-12', NULL);
INSERT INTO public.moon VALUES (13, 'Oberon', 3010000000000000000000, 71, 761.4, false, 9, '2000-01-13', NULL);
INSERT INTO public.moon VALUES (14, 'Triton', 21400000000000000000000, 38, 1353.4, false, 10, '2000-01-14', NULL);
INSERT INTO public.moon VALUES (15, 'Nereid', 30800000000000000000, 48, 170.0, false, 11, '2000-01-15', NULL);
INSERT INTO public.moon VALUES (16, 'Charon', 1586000000000000000000, 53, 606, false, 12, '2000-01-16', NULL);
INSERT INTO public.moon VALUES (17, 'Dione', 1100000000000000000000, 87, 561.4, false, 7, '2000-01-17', NULL);
INSERT INTO public.moon VALUES (18, 'Tethys', 622000000000000000000, 86, 531.1, false, 7, '2000-01-18', NULL);
INSERT INTO public.moon VALUES (19, 'Enceladus', 108000000000000000000, 75, 252.1, false, 7, '2000-01-19', NULL);
INSERT INTO public.moon VALUES (20, 'Mimas', 37500000000000000000, 64, 198.2, false, 7, '2000-01-20', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 330000000000000000000000, 440, 2439.7, false, 1, '2000-01-01', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 4870000000000000000000000, 735, 6051.8, false, 2, '2000-01-02', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 5970000000000000000000000, 288, 6371, true, 2, '2000-01-03', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 642000000000000000000000, 210, 3389.5, false, 3, '2000-01-04', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1900000000000000000000000000, 165, 69911, false, 4, '2000-01-05', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 568000000000000000000000000, 134, 58232, false, 5, '2000-01-06', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 86800000000000000000000000, 76, 25362, false, 6, '2000-01-07', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 102000000000000000000000000, 72, 24622, false, 7, '2000-01-08', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 13100000000000000000000, 44, 1188.3, false, 8, '2000-01-09', NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 64000000000000000000000000, 302, 13000, true, 9, '2000-01-10', NULL);
INSERT INTO public.planet VALUES (11, 'Gliese 667 Cc', 42000000000000000000000000, 277, 11500, true, 10, '2000-01-11', NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 13000000000000000000000000, 234, 8000, true, 11, '2000-01-12', NULL);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1e', 29000000000000000000000000, 251, 9200, true, 12, '2000-01-13', NULL);
INSERT INTO public.planet VALUES (14, 'LHS 1140 b', 5200000000000000000000000, 230, 8000, true, 13, '2000-01-14', NULL);
INSERT INTO public.planet VALUES (15, 'Wolf 1061 c', 34000000000000000000000000, 217, 8900, true, 14, '2000-01-15', NULL);
INSERT INTO public.planet VALUES (16, 'K2-18b', 8600000000000000000000000, 265, 9400, true, 15, '2000-01-16', NULL);
INSERT INTO public.planet VALUES (17, 'TOI 700 d', 4700000000000000000000000, 298, 8400, true, 16, '2000-01-17', NULL);
INSERT INTO public.planet VALUES (18, 'HD 40307 g', 9100000000000000000000000, 291, 9900, true, 17, '2000-01-18', NULL);
INSERT INTO public.planet VALUES (19, 'Kepler-442b', 31000000000000000000000000, 245, 8500, true, 18, '2000-01-19', NULL);
INSERT INTO public.planet VALUES (20, 'GJ 357 d', 6100000000000000000000000, 260, 8900, true, 19, '2000-01-20', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 2170000000000000000000000000000, 1.519, 1, '1997-01-01', '6 billion years', NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1990000000000000000000000000000, 25.4, 2, '1997-02-15', '225 million years', NULL);
INSERT INTO public.star VALUES (3, 'Vega', 2360000000000000000000000000000, 40.12, 3, '1997-03-20', '455 million years', NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 15200000000000000000000000000000, 13600, 4, '1997-04-25', '8.5 million years', NULL);
INSERT INTO public.star VALUES (5, 'Rigel', 36000000000000000000000000000000, 120000, 5, '1997-05-30', '8 million years', NULL);
INSERT INTO public.star VALUES (6, 'Arcturus', 10800000000000000000000000000000, 170, 6, '1997-06-05', '7.1 billion years', NULL);
INSERT INTO public.star VALUES (7, 'Procyon', 1980000000000000000000000000000, 7.5, 7, '1997-07-10', '1.7 billion years', NULL);
INSERT INTO public.star VALUES (8, 'Pollux', 2010000000000000000000000000000, 32, 8, '1997-08-15', '724 million years', NULL);
INSERT INTO public.star VALUES (9, 'Aldebaran', 3300000000000000000000000000000, 439, 9, '1997-09-20', '6.8 billion years', NULL);
INSERT INTO public.star VALUES (10, 'Antares', 24000000000000000000000000000000, 12000, 10, '1997-10-25', '12 million years', NULL);
INSERT INTO public.star VALUES (11, 'Altair', 1800000000000000000000000000000, 10.6, 11, '1997-11-30', '1.2 billion years', NULL);
INSERT INTO public.star VALUES (12, 'Deneb', 27000000000000000000000000000000, 196000, 12, '1998-01-01', '6.5 million years', NULL);
INSERT INTO public.star VALUES (13, 'Fomalhaut', 1920000000000000000000000000000, 16.63, 13, '1998-02-15', '440 million years', NULL);
INSERT INTO public.star VALUES (14, 'Regulus', 3700000000000000000000000000000, 288, 14, '1998-03-20', '1.5 billion years', NULL);
INSERT INTO public.star VALUES (15, 'Achernar', 6500000000000000000000000000000, 3150, 15, '1998-04-25', '56 million years', NULL);
INSERT INTO public.star VALUES (16, 'Acrux', 4120000000000000000000000000000, 25000, 16, '1998-05-30', '10 million years', NULL);
INSERT INTO public.star VALUES (17, 'Betelgeuse', 14000000000000000000000000000000, 126000, 17, '1998-06-05', '7.6 million years', NULL);
INSERT INTO public.star VALUES (18, 'Hadar', 41000000000000000000000000000000, 95000, 18, '1998-07-10', '7 million years', NULL);
INSERT INTO public.star VALUES (19, 'Capella', 1900000000000000000000000000000, 79, 19, '1998-08-15', '540 million years', NULL);
INSERT INTO public.star VALUES (20, 'Bellatrix', 3200000000000000000000000000000, 5900, 20, '1998-09-20', '25 million years', NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 20, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 20, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 20, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 20, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid unique_asteroid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_id UNIQUE (asteroid_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


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


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
    name character varying(30),
    location integer,
    description text NOT NULL,
    type character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    location integer,
    planet_id integer NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    "real" boolean NOT NULL,
    name character varying(30),
    star_id integer,
    near_sun text NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: relation_between_p_and_m; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.relation_between_p_and_m (
    relation_between_p_and_m_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.relation_between_p_and_m OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 3, 'it is the constellation of Andromeda', 'Real');
INSERT INTO public.galaxy VALUES (2, 'Cartwheel', 500, 'Looks similar to a spoked cartwheel', 'Real');
INSERT INTO public.galaxy VALUES (3, 'DOG GALAXY', 5000, 'Many planets full of dogs', 'False');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 0, 'Where Earth is', 'Real');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 21, 'Looks like a pinwheel toy', 'Real');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 31, 'This gravitationally disturbed galaxy exhibits', 'Real');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0, 1, 'Only planet that belongs to Earth', true);
INSERT INTO public.moon VALUES (2, 'Carpo', 4, 6, 'One out of 79 moons for Jupiter', true);
INSERT INTO public.moon VALUES (3, 'Elara', 5, 6, 'One out of of 79 moons for Jupiter', true);
INSERT INTO public.moon VALUES (4, 'Arche', 5, 6, 'One out of 79 moons for Jupiter', true);
INSERT INTO public.moon VALUES (5, 'Larissa', 80, 7, 'One of the 14 moons of Neptune', true);
INSERT INTO public.moon VALUES (6, 'Triton', 81, 7, 'One of the 14 moons of Neptune', true);
INSERT INTO public.moon VALUES (7, 'Sao', 82, 7, 'One of the 14 moons of Neptune', true);
INSERT INTO public.moon VALUES (8, 'Nereid', 83, 7, 'One of the 14 moons of Neptune', true);
INSERT INTO public.moon VALUES (9, 'Psamathe', 84, 7, 'One of the 14 moons of Neptune', true);
INSERT INTO public.moon VALUES (10, 'Thalassa', 85, 7, 'One of the 14 moons of Neptune', true);
INSERT INTO public.moon VALUES (11, 'Mab', 93, 4, 'One of the 27 moons of Uranus', true);
INSERT INTO public.moon VALUES (12, 'Bianca', 94, 4, 'One of the 27 moons of Uranus', true);
INSERT INTO public.moon VALUES (13, 'Ariel', 95, 4, 'One of the 27 moons of Uranus', true);
INSERT INTO public.moon VALUES (14, 'Juliet', 96, 4, 'One of the 27 moons of Uranus', true);
INSERT INTO public.moon VALUES (15, 'Oberon', 97, 4, 'One of the 27 moons of Uranus', true);
INSERT INTO public.moon VALUES (16, 'Puck', 98, 4, 'One of the 27 moons of Uranus', true);
INSERT INTO public.moon VALUES (17, 'Miranda', 99, 4, ' One of the 27 moons of Uranus', true);
INSERT INTO public.moon VALUES (18, 'La la', 1001, 9, 'One of the many moons of the DOGGY WORLD', false);
INSERT INTO public.moon VALUES (19, 'Grr', 1002, 9, 'One of the many moons of DOGGY WORLD', false);
INSERT INTO public.moon VALUES (20, 'Bark', 1003, 9, 'One of the many moons of DOGGY WORLD', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, 'Earth', 1, 'close');
INSERT INTO public.planet VALUES (2, true, 'Venus', 2, 'very close');
INSERT INTO public.planet VALUES (3, true, 'Mercury', 4, 'super close');
INSERT INTO public.planet VALUES (4, true, 'Uranus', 4, 'far');
INSERT INTO public.planet VALUES (5, true, 'Pluto', 5, 'super far');
INSERT INTO public.planet VALUES (6, true, 'Jupiter', 3, 'MIDDLE');
INSERT INTO public.planet VALUES (7, true, 'Neptune', 2, 'UNKNOWN');
INSERT INTO public.planet VALUES (8, true, 'Planet NINE', 6, 'UNKNOWN');
INSERT INTO public.planet VALUES (9, false, 'DOGGY WORLD', 2, 'UNKNOWN');
INSERT INTO public.planet VALUES (10, false, 'CAT WORLD', 3, 'UNKNOWN');
INSERT INTO public.planet VALUES (11, false, 'X', 4, 'UNKNOWN');
INSERT INTO public.planet VALUES (12, false, 'Minecraft World', 5, 'In different galaxy');


--
-- Data for Name: relation_between_p_and_m; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.relation_between_p_and_m VALUES (3, 'luna and mars', 0);
INSERT INTO public.relation_between_p_and_m VALUES (2, 'Doggy world and luna', 2);
INSERT INTO public.relation_between_p_and_m VALUES (1, ' Doggy world and bark', 74);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 550, 4, '10th largest star in the galaxy');
INSERT INTO public.star VALUES (2, 'Betelgeuse', 643, 4, '9th largest star in the galaxy');
INSERT INTO public.star VALUES (3, 'KW Sagittarii', 7800, 4, '8th largest star in the galaxy');
INSERT INTO public.star VALUES (4, 'VV Cephei A', 4900, 4, '7th largest star in the galaxy');
INSERT INTO public.star VALUES (5, 'Mu Cephei', 6000, 4, '6th largest star in the galaxy');
INSERT INTO public.star VALUES (6, 'KY Cygni', 5000, 4, '5th largest star in the galaxy');


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
-- Name: galaxy name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_galaxy UNIQUE (name);


--
-- Name: relation_between_p_and_m name_is_special; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_between_p_and_m
    ADD CONSTRAINT name_is_special UNIQUE (name);


--
-- Name: moon name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon UNIQUE (name);


--
-- Name: planet name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_planet UNIQUE (name);


--
-- Name: star name_special; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_special UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: relation_between_p_and_m relation_between_p_and_m_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_between_p_and_m
    ADD CONSTRAINT relation_between_p_and_m_pkey PRIMARY KEY (relation_between_p_and_m_id);


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


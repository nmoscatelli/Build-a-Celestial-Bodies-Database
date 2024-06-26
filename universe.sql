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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(4,1)
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    length integer,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    weight integer,
    distance numeric(4,1),
    "exists" boolean,
    birthday text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    length integer,
    weight integer,
    distance numeric(4,1),
    "exists" boolean,
    birthday text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    length integer,
    weight integer,
    distance numeric(4,1),
    "exists" boolean,
    birthday text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    length integer,
    weight integer,
    distance numeric(4,1),
    "exists" boolean,
    birthday text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Europe', NULL);
INSERT INTO public.continent VALUES (2, 'America', NULL);
INSERT INTO public.continent VALUES (3, 'Asia', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 'g1', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 'g2', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 'g3', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 'g4', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 'g5', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 'g6', 6, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('m1', 1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('m2', 2, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('m3', 3, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('m4', 4, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('m5', 5, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('m6', 6, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('m7', 7, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('m8', 8, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('m9', 9, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('m10', 10, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('m11', 11, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('m12', 12, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('m13', 13, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('m14', 14, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('m15', 15, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('m16', 16, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('m17', 17, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('m18', 18, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('m19', 19, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('m20', 20, NULL, NULL, NULL, NULL, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('p1', 1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('p2', 2, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('p3', 3, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('p4', 4, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('p5', 5, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('p6', 6, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('p7', 7, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('p8', 8, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('p9', 9, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('p10', 10, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('p11', 11, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('p12', 12, NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('s1', 1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('s2', 2, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('s3', 3, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('s4', 4, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('s5', 5, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('s6', 6, NULL, NULL, NULL, NULL, NULL, 6);


--
-- Name: continent continent_continent_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_continent_id_key UNIQUE (continent_id);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_in_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_in_galaxy_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


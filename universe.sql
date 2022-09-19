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
    name character varying NOT NULL,
    galaxy_id numeric NOT NULL,
    number_of_stars integer,
    has_life boolean,
    age numeric,
    body_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    body_id integer,
    age integer,
    spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    alternate_name text,
    has_water boolean,
    age integer,
    body_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    has_life boolean NOT NULL,
    name character varying,
    body_id integer
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id integer NOT NULL,
    number_of_planets integer,
    body_id integer,
    age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Crater 2', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Leo 1', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Antlia 2', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Virgo 1', 6, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Triangulum', 7, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 8, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Centaurus A', 9, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Bodes Galaxy', 10, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Sculptor Galaxy', 11, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Seyfert Galaxy', 12, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cigar Galaxy', 13, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Malin 1', 14, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Canis Major Dwarf', 15, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Circinus', 16, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 17, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Mice Galaxies', 18, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Mayalls Object', 19, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Southern Pinwheel Galaxy', 20, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Deimos', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Luna', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Metis', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Adrastea', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Amalthea', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Thebe', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Pan', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Pandora', 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Atlas', 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Janus', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Methone', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Anthe', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Helene', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhea', 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Hyperion', 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 18, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Skrymir', 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Polydeuces', 20, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Mercury', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', 7, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', 8, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Taphao', 9, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Bellerophon', 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Galileo', 11, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Tadmor', 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Eiger', 13, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Beirut', 14, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Osiris', 15, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Draugr', 16, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Poltergeist', 17, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Phobetor', 18, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Methuselah', 19, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Saffar', 20, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, true, NULL, NULL);
INSERT INTO public.planet_type VALUES (2, false, NULL, NULL);
INSERT INTO public.planet_type VALUES (3, false, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Alpha Centauri', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Banards Star', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Wolf 359', 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Luhman 16', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Ross 154', 6, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Acrav', 7, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Ain', 8, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Antares', 9, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Betelgeuse', 10, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Bellatrix', 11, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Canopus', 12, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Capella', 13, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Deneb', 14, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Diphda', 15, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Electra', 16, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Elnath', 17, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Fulu', 18, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Keid', 19, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Libertas', 20, NULL, NULL, NULL);


--
-- Name: planet_type fifth_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT fifth_constraint UNIQUE (body_id);


--
-- Name: galaxy first_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT first_constraint UNIQUE (body_id);


--
-- Name: moon fourth_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fourth_constraint UNIQUE (body_id);


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
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star second_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT second_constraint UNIQUE (body_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet third_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT third_constraint UNIQUE (body_id);


--
-- Name: moon moon_body_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_body_id_fkey FOREIGN KEY (body_id) REFERENCES public.planet(body_id);


--
-- Name: planet planet_body_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_body_id_fkey FOREIGN KEY (body_id) REFERENCES public.star(body_id);


--
-- Name: planet_type planet_type_body_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_body_id_fkey FOREIGN KEY (body_id) REFERENCES public.planet(body_id);


--
-- Name: star star_body_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_body_id_fkey FOREIGN KEY (body_id) REFERENCES public.galaxy(body_id);


--
-- PostgreSQL database dump complete
--


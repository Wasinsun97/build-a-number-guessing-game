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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    attempt integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(255)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 267);
INSERT INTO public.games VALUES (2, 1, 4);
INSERT INTO public.games VALUES (3, 2, 887);
INSERT INTO public.games VALUES (4, 2, 208);
INSERT INTO public.games VALUES (5, 1, 315);
INSERT INTO public.games VALUES (6, 1, 167);
INSERT INTO public.games VALUES (7, 1, 653);
INSERT INTO public.games VALUES (8, 3, 12);
INSERT INTO public.games VALUES (9, 4, 784);
INSERT INTO public.games VALUES (10, 4, 410);
INSERT INTO public.games VALUES (11, 5, 522);
INSERT INTO public.games VALUES (12, 5, 819);
INSERT INTO public.games VALUES (13, 4, 685);
INSERT INTO public.games VALUES (14, 4, 669);
INSERT INTO public.games VALUES (15, 4, 732);
INSERT INTO public.games VALUES (16, 6, 371);
INSERT INTO public.games VALUES (17, 6, 753);
INSERT INTO public.games VALUES (18, 7, 797);
INSERT INTO public.games VALUES (19, 7, 948);
INSERT INTO public.games VALUES (20, 6, 889);
INSERT INTO public.games VALUES (21, 6, 397);
INSERT INTO public.games VALUES (22, 6, 313);
INSERT INTO public.games VALUES (23, 3, 11);
INSERT INTO public.games VALUES (24, 3, 10);
INSERT INTO public.games VALUES (25, 8, 486);
INSERT INTO public.games VALUES (26, 8, 255);
INSERT INTO public.games VALUES (27, 9, 631);
INSERT INTO public.games VALUES (28, 9, 664);
INSERT INTO public.games VALUES (29, 8, 854);
INSERT INTO public.games VALUES (30, 8, 420);
INSERT INTO public.games VALUES (31, 8, 436);
INSERT INTO public.games VALUES (32, 10, 493);
INSERT INTO public.games VALUES (33, 10, 132);
INSERT INTO public.games VALUES (34, 11, 471);
INSERT INTO public.games VALUES (35, 11, 708);
INSERT INTO public.games VALUES (36, 10, 1000);
INSERT INTO public.games VALUES (37, 10, 430);
INSERT INTO public.games VALUES (38, 10, 844);
INSERT INTO public.games VALUES (39, 12, 26);
INSERT INTO public.games VALUES (40, 12, 766);
INSERT INTO public.games VALUES (41, 13, 650);
INSERT INTO public.games VALUES (42, 13, 990);
INSERT INTO public.games VALUES (43, 12, 14);
INSERT INTO public.games VALUES (44, 12, 536);
INSERT INTO public.games VALUES (45, 12, 473);
INSERT INTO public.games VALUES (46, 14, 163);
INSERT INTO public.games VALUES (47, 14, 443);
INSERT INTO public.games VALUES (48, 15, 15);
INSERT INTO public.games VALUES (49, 15, 917);
INSERT INTO public.games VALUES (50, 14, 136);
INSERT INTO public.games VALUES (51, 14, 310);
INSERT INTO public.games VALUES (52, 14, 90);
INSERT INTO public.games VALUES (53, 16, 431);
INSERT INTO public.games VALUES (54, 16, 186);
INSERT INTO public.games VALUES (55, 17, 291);
INSERT INTO public.games VALUES (56, 17, 165);
INSERT INTO public.games VALUES (57, 16, 926);
INSERT INTO public.games VALUES (58, 16, 213);
INSERT INTO public.games VALUES (59, 16, 997);
INSERT INTO public.games VALUES (60, 18, 851);
INSERT INTO public.games VALUES (61, 18, 497);
INSERT INTO public.games VALUES (62, 19, 369);
INSERT INTO public.games VALUES (63, 19, 883);
INSERT INTO public.games VALUES (64, 18, 447);
INSERT INTO public.games VALUES (65, 18, 181);
INSERT INTO public.games VALUES (66, 18, 573);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1676982419365');
INSERT INTO public.users VALUES (2, 'user_1676982419364');
INSERT INTO public.users VALUES (3, 'Sun');
INSERT INTO public.users VALUES (4, 'user_1676982538458');
INSERT INTO public.users VALUES (5, 'user_1676982538457');
INSERT INTO public.users VALUES (6, 'user_1676982614843');
INSERT INTO public.users VALUES (7, 'user_1676982614842');
INSERT INTO public.users VALUES (8, 'user_1676982959942');
INSERT INTO public.users VALUES (9, 'user_1676982959941');
INSERT INTO public.users VALUES (10, 'user_1676983308209');
INSERT INTO public.users VALUES (11, 'user_1676983308208');
INSERT INTO public.users VALUES (12, 'user_1676983314545');
INSERT INTO public.users VALUES (13, 'user_1676983314544');
INSERT INTO public.users VALUES (14, 'user_1676983360623');
INSERT INTO public.users VALUES (15, 'user_1676983360622');
INSERT INTO public.users VALUES (16, 'user_1676983365955');
INSERT INTO public.users VALUES (17, 'user_1676983365954');
INSERT INTO public.users VALUES (18, 'user_1676983714880');
INSERT INTO public.users VALUES (19, 'user_1676983714879');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 66, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


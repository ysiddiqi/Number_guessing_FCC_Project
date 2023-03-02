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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 561, 2);
INSERT INTO public.games VALUES (2, 41, 2);
INSERT INTO public.games VALUES (3, 683, 3);
INSERT INTO public.games VALUES (4, 172, 3);
INSERT INTO public.games VALUES (5, 561, 2);
INSERT INTO public.games VALUES (6, 418, 2);
INSERT INTO public.games VALUES (7, 460, 2);
INSERT INTO public.games VALUES (8, 1, 4);
INSERT INTO public.games VALUES (9, 282, 4);
INSERT INTO public.games VALUES (10, 846, 5);
INSERT INTO public.games VALUES (11, 364, 5);
INSERT INTO public.games VALUES (12, 294, 4);
INSERT INTO public.games VALUES (13, 267, 4);
INSERT INTO public.games VALUES (14, 474, 4);
INSERT INTO public.games VALUES (15, 123, 6);
INSERT INTO public.games VALUES (16, 977, 6);
INSERT INTO public.games VALUES (17, 700, 7);
INSERT INTO public.games VALUES (18, 522, 7);
INSERT INTO public.games VALUES (19, 246, 6);
INSERT INTO public.games VALUES (20, 373, 6);
INSERT INTO public.games VALUES (21, 290, 6);
INSERT INTO public.games VALUES (22, 907, 8);
INSERT INTO public.games VALUES (23, 177, 8);
INSERT INTO public.games VALUES (24, 515, 9);
INSERT INTO public.games VALUES (25, 392, 9);
INSERT INTO public.games VALUES (26, 278, 8);
INSERT INTO public.games VALUES (27, 298, 8);
INSERT INTO public.games VALUES (28, 773, 8);
INSERT INTO public.games VALUES (29, 293, 10);
INSERT INTO public.games VALUES (30, 563, 10);
INSERT INTO public.games VALUES (31, 353, 11);
INSERT INTO public.games VALUES (32, 128, 11);
INSERT INTO public.games VALUES (33, 781, 10);
INSERT INTO public.games VALUES (34, 320, 10);
INSERT INTO public.games VALUES (35, 565, 10);
INSERT INTO public.games VALUES (36, 339, 12);
INSERT INTO public.games VALUES (37, 355, 12);
INSERT INTO public.games VALUES (38, 155, 13);
INSERT INTO public.games VALUES (39, 66, 13);
INSERT INTO public.games VALUES (40, 878, 12);
INSERT INTO public.games VALUES (41, 883, 12);
INSERT INTO public.games VALUES (42, 27, 12);
INSERT INTO public.games VALUES (43, 977, 14);
INSERT INTO public.games VALUES (44, 949, 14);
INSERT INTO public.games VALUES (45, 869, 15);
INSERT INTO public.games VALUES (46, 745, 15);
INSERT INTO public.games VALUES (47, 365, 14);
INSERT INTO public.games VALUES (48, 684, 14);
INSERT INTO public.games VALUES (49, 684, 14);
INSERT INTO public.games VALUES (50, 790, 16);
INSERT INTO public.games VALUES (51, 888, 16);
INSERT INTO public.games VALUES (52, 876, 17);
INSERT INTO public.games VALUES (53, 184, 17);
INSERT INTO public.games VALUES (54, 442, 16);
INSERT INTO public.games VALUES (55, 279, 16);
INSERT INTO public.games VALUES (56, 983, 16);
INSERT INTO public.games VALUES (83, 239, 49);
INSERT INTO public.games VALUES (84, 318, 49);
INSERT INTO public.games VALUES (85, 676, 50);
INSERT INTO public.games VALUES (86, 326, 50);
INSERT INTO public.games VALUES (87, 893, 49);
INSERT INTO public.games VALUES (88, 920, 49);
INSERT INTO public.games VALUES (89, 906, 49);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'yas');
INSERT INTO public.users VALUES (2, 'user_1677721345377');
INSERT INTO public.users VALUES (3, 'user_1677721345376');
INSERT INTO public.users VALUES (4, 'user_1677722208440');
INSERT INTO public.users VALUES (5, 'user_1677722208439');
INSERT INTO public.users VALUES (6, 'user_1677722454441');
INSERT INTO public.users VALUES (7, 'user_1677722454440');
INSERT INTO public.users VALUES (8, 'user_1677722542470');
INSERT INTO public.users VALUES (9, 'user_1677722542469');
INSERT INTO public.users VALUES (10, 'user_1677722774478');
INSERT INTO public.users VALUES (11, 'user_1677722774477');
INSERT INTO public.users VALUES (12, 'user_1677722841066');
INSERT INTO public.users VALUES (13, 'user_1677722841065');
INSERT INTO public.users VALUES (14, 'user_1677724030094');
INSERT INTO public.users VALUES (15, 'user_1677724030093');
INSERT INTO public.users VALUES (16, 'user_1677725015281');
INSERT INTO public.users VALUES (17, 'user_1677725015280');
INSERT INTO public.users VALUES (49, 'user_1677725580093');
INSERT INTO public.users VALUES (50, 'user_1677725580092');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 89, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 50, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


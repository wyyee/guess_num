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
    number_of_guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 5, 94, 93);
INSERT INTO public.games VALUES (2, 5, 478, 477);
INSERT INTO public.games VALUES (3, 6, 45, 44);
INSERT INTO public.games VALUES (4, 6, 76, 75);
INSERT INTO public.games VALUES (5, 5, 831, 828);
INSERT INTO public.games VALUES (6, 5, 245, 243);
INSERT INTO public.games VALUES (7, 5, 277, 276);
INSERT INTO public.games VALUES (8, 7, 545, 544);
INSERT INTO public.games VALUES (9, 7, 692, 691);
INSERT INTO public.games VALUES (10, 8, 690, 689);
INSERT INTO public.games VALUES (11, 8, 24, 23);
INSERT INTO public.games VALUES (12, 7, 464, 461);
INSERT INTO public.games VALUES (13, 7, 474, 472);
INSERT INTO public.games VALUES (14, 7, 421, 420);
INSERT INTO public.games VALUES (15, 9, 528, 527);
INSERT INTO public.games VALUES (16, 9, 880, 879);
INSERT INTO public.games VALUES (17, 10, 658, 657);
INSERT INTO public.games VALUES (18, 10, 72, 71);
INSERT INTO public.games VALUES (19, 9, 764, 761);
INSERT INTO public.games VALUES (20, 9, 86, 84);
INSERT INTO public.games VALUES (21, 9, 828, 827);
INSERT INTO public.games VALUES (22, 11, 812, 811);
INSERT INTO public.games VALUES (23, 11, 3, 2);
INSERT INTO public.games VALUES (24, 12, 449, 448);
INSERT INTO public.games VALUES (25, 12, 628, 627);
INSERT INTO public.games VALUES (26, 11, 526, 523);
INSERT INTO public.games VALUES (27, 11, 387, 385);
INSERT INTO public.games VALUES (28, 11, 737, 736);
INSERT INTO public.games VALUES (29, 13, 290, 289);
INSERT INTO public.games VALUES (30, 13, 918, 917);
INSERT INTO public.games VALUES (31, 14, 803, 802);
INSERT INTO public.games VALUES (32, 14, 797, 796);
INSERT INTO public.games VALUES (33, 13, 742, 739);
INSERT INTO public.games VALUES (34, 13, 926, 924);
INSERT INTO public.games VALUES (35, 13, 905, 904);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1740316193919');
INSERT INTO public.players VALUES (2, 'user_1740316193918');
INSERT INTO public.players VALUES (3, 'user_1740316295464');
INSERT INTO public.players VALUES (4, 'user_1740316295463');
INSERT INTO public.players VALUES (5, 'user_1740316326253');
INSERT INTO public.players VALUES (6, 'user_1740316326252');
INSERT INTO public.players VALUES (7, 'user_1740316409921');
INSERT INTO public.players VALUES (8, 'user_1740316409920');
INSERT INTO public.players VALUES (9, 'user_1740316493428');
INSERT INTO public.players VALUES (10, 'user_1740316493427');
INSERT INTO public.players VALUES (11, 'user_1740316566132');
INSERT INTO public.players VALUES (12, 'user_1740316566131');
INSERT INTO public.players VALUES (13, 'user_1740316616271');
INSERT INTO public.players VALUES (14, 'user_1740316616270');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--


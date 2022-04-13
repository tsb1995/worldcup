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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (5, 2018, 'Final', 111, 112, 4, 2);
INSERT INTO public.games VALUES (6, 2018, 'Third Place', 113, 114, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Semi-Final', 112, 114, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Semi-Final', 111, 113, 1, 0);
INSERT INTO public.games VALUES (9, 2018, 'Quarter-Final', 112, 115, 3, 2);
INSERT INTO public.games VALUES (10, 2018, 'Quarter-Final', 114, 116, 2, 0);
INSERT INTO public.games VALUES (11, 2018, 'Quarter-Final', 113, 117, 2, 1);
INSERT INTO public.games VALUES (12, 2018, 'Quarter-Final', 111, 118, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 114, 119, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 116, 120, 1, 0);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 113, 121, 3, 2);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 117, 122, 2, 0);
INSERT INTO public.games VALUES (17, 2018, 'Eighth-Final', 112, 123, 2, 1);
INSERT INTO public.games VALUES (18, 2018, 'Eighth-Final', 115, 124, 2, 1);
INSERT INTO public.games VALUES (19, 2018, 'Eighth-Final', 118, 125, 2, 1);
INSERT INTO public.games VALUES (20, 2018, 'Eighth-Final', 111, 126, 4, 3);
INSERT INTO public.games VALUES (21, 2014, 'Final', 127, 126, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Third Place', 128, 117, 3, 0);
INSERT INTO public.games VALUES (23, 2014, 'Semi-Final', 126, 128, 1, 0);
INSERT INTO public.games VALUES (24, 2014, 'Semi-Final', 127, 117, 7, 1);
INSERT INTO public.games VALUES (25, 2014, 'Quarter-Final', 128, 129, 1, 0);
INSERT INTO public.games VALUES (26, 2014, 'Quarter-Final', 126, 113, 1, 0);
INSERT INTO public.games VALUES (27, 2014, 'Quarter-Final', 117, 119, 2, 1);
INSERT INTO public.games VALUES (28, 2014, 'Quarter-Final', 127, 111, 1, 0);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 117, 130, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 119, 118, 2, 0);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 111, 131, 2, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 127, 132, 2, 1);
INSERT INTO public.games VALUES (33, 2014, 'Eighth-Final', 128, 122, 2, 1);
INSERT INTO public.games VALUES (34, 2014, 'Eighth-Final', 129, 133, 2, 1);
INSERT INTO public.games VALUES (35, 2014, 'Eighth-Final', 126, 120, 1, 0);
INSERT INTO public.games VALUES (36, 2014, 'Eighth-Final', 113, 134, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (111, 'France');
INSERT INTO public.teams VALUES (112, 'Croatia');
INSERT INTO public.teams VALUES (113, 'Belgium');
INSERT INTO public.teams VALUES (114, 'England');
INSERT INTO public.teams VALUES (115, 'Russia');
INSERT INTO public.teams VALUES (116, 'Sweden');
INSERT INTO public.teams VALUES (117, 'Brazil');
INSERT INTO public.teams VALUES (118, 'Uruguay');
INSERT INTO public.teams VALUES (119, 'Colombia');
INSERT INTO public.teams VALUES (120, 'Switzerland');
INSERT INTO public.teams VALUES (121, 'Japan');
INSERT INTO public.teams VALUES (122, 'Mexico');
INSERT INTO public.teams VALUES (123, 'Denmark');
INSERT INTO public.teams VALUES (124, 'Spain');
INSERT INTO public.teams VALUES (125, 'Portugal');
INSERT INTO public.teams VALUES (126, 'Argentina');
INSERT INTO public.teams VALUES (127, 'Germany');
INSERT INTO public.teams VALUES (128, 'Netherlands');
INSERT INTO public.teams VALUES (129, 'Costa Rica');
INSERT INTO public.teams VALUES (130, 'Chile');
INSERT INTO public.teams VALUES (131, 'Nigeria');
INSERT INTO public.teams VALUES (132, 'Algeria');
INSERT INTO public.teams VALUES (133, 'Greece');
INSERT INTO public.teams VALUES (134, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 134, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


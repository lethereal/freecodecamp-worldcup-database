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
    round character varying(60) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (388, 2018, 'Final', 4, 2, 241, 242);
INSERT INTO public.games VALUES (389, 2018, 'Third Place', 2, 0, 243, 244);
INSERT INTO public.games VALUES (390, 2018, 'Semi-Final', 2, 1, 242, 244);
INSERT INTO public.games VALUES (391, 2018, 'Semi-Final', 1, 0, 241, 243);
INSERT INTO public.games VALUES (392, 2018, 'Quarter-Final', 3, 2, 242, 245);
INSERT INTO public.games VALUES (393, 2018, 'Quarter-Final', 2, 0, 244, 246);
INSERT INTO public.games VALUES (394, 2018, 'Quarter-Final', 2, 1, 243, 247);
INSERT INTO public.games VALUES (395, 2018, 'Quarter-Final', 2, 0, 241, 248);
INSERT INTO public.games VALUES (396, 2018, 'Eighth-Final', 2, 1, 244, 249);
INSERT INTO public.games VALUES (397, 2018, 'Eighth-Final', 1, 0, 246, 250);
INSERT INTO public.games VALUES (398, 2018, 'Eighth-Final', 3, 2, 243, 251);
INSERT INTO public.games VALUES (399, 2018, 'Eighth-Final', 2, 0, 247, 252);
INSERT INTO public.games VALUES (400, 2018, 'Eighth-Final', 2, 1, 242, 253);
INSERT INTO public.games VALUES (401, 2018, 'Eighth-Final', 2, 1, 245, 254);
INSERT INTO public.games VALUES (402, 2018, 'Eighth-Final', 2, 1, 248, 255);
INSERT INTO public.games VALUES (403, 2018, 'Eighth-Final', 4, 3, 241, 256);
INSERT INTO public.games VALUES (404, 2014, 'Final', 1, 0, 257, 256);
INSERT INTO public.games VALUES (405, 2014, 'Third Place', 3, 0, 258, 247);
INSERT INTO public.games VALUES (406, 2014, 'Semi-Final', 1, 0, 256, 258);
INSERT INTO public.games VALUES (407, 2014, 'Semi-Final', 7, 1, 257, 247);
INSERT INTO public.games VALUES (408, 2014, 'Quarter-Final', 1, 0, 258, 259);
INSERT INTO public.games VALUES (409, 2014, 'Quarter-Final', 1, 0, 256, 243);
INSERT INTO public.games VALUES (410, 2014, 'Quarter-Final', 2, 1, 247, 249);
INSERT INTO public.games VALUES (411, 2014, 'Quarter-Final', 1, 0, 257, 241);
INSERT INTO public.games VALUES (412, 2014, 'Eighth-Final', 2, 1, 247, 260);
INSERT INTO public.games VALUES (413, 2014, 'Eighth-Final', 2, 0, 249, 248);
INSERT INTO public.games VALUES (414, 2014, 'Eighth-Final', 2, 0, 241, 261);
INSERT INTO public.games VALUES (415, 2014, 'Eighth-Final', 2, 1, 257, 262);
INSERT INTO public.games VALUES (416, 2014, 'Eighth-Final', 2, 1, 258, 252);
INSERT INTO public.games VALUES (417, 2014, 'Eighth-Final', 2, 1, 259, 263);
INSERT INTO public.games VALUES (418, 2014, 'Eighth-Final', 1, 0, 256, 250);
INSERT INTO public.games VALUES (419, 2014, 'Eighth-Final', 2, 1, 243, 264);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (241, 'France');
INSERT INTO public.teams VALUES (242, 'Croatia');
INSERT INTO public.teams VALUES (243, 'Belgium');
INSERT INTO public.teams VALUES (244, 'England');
INSERT INTO public.teams VALUES (245, 'Russia');
INSERT INTO public.teams VALUES (246, 'Sweden');
INSERT INTO public.teams VALUES (247, 'Brazil');
INSERT INTO public.teams VALUES (248, 'Uruguay');
INSERT INTO public.teams VALUES (249, 'Colombia');
INSERT INTO public.teams VALUES (250, 'Switzerland');
INSERT INTO public.teams VALUES (251, 'Japan');
INSERT INTO public.teams VALUES (252, 'Mexico');
INSERT INTO public.teams VALUES (253, 'Denmark');
INSERT INTO public.teams VALUES (254, 'Spain');
INSERT INTO public.teams VALUES (255, 'Portugal');
INSERT INTO public.teams VALUES (256, 'Argentina');
INSERT INTO public.teams VALUES (257, 'Germany');
INSERT INTO public.teams VALUES (258, 'Netherlands');
INSERT INTO public.teams VALUES (259, 'Costa Rica');
INSERT INTO public.teams VALUES (260, 'Chile');
INSERT INTO public.teams VALUES (261, 'Nigeria');
INSERT INTO public.teams VALUES (262, 'Algeria');
INSERT INTO public.teams VALUES (263, 'Greece');
INSERT INTO public.teams VALUES (264, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 419, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 264, true);


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


--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ir_model_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ir_model_data (
    name character varying(20),
    model character varying(20),
    res_id integer,
    module character varying(20)
);


ALTER TABLE ir_model_data OWNER TO postgres;

--
-- Name: ir_model_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ir_model_fields (
    model character varying(60),
    name character varying(60),
    ttype character varying(60),
    field_description character varying(60),
    id integer
);


ALTER TABLE ir_model_fields OWNER TO postgres;

--
-- Name: ir_translation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ir_translation (
    value text,
    id integer,
    name character varying(20),
    module character varying(20)
);


ALTER TABLE ir_translation OWNER TO postgres;

--
-- Name: ir_ui_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ir_ui_menu (
    name character varying(20),
    id integer,
    parent_id integer
);


ALTER TABLE ir_ui_menu OWNER TO postgres;

--
-- Name: ir_ui_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ir_ui_view (
    arch text,
    id integer
);


ALTER TABLE ir_ui_view OWNER TO postgres;

--
-- Data for Name: ir_model_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ir_model_data (name, model, res_id, module) FROM stdin;
test_model_1	ir.ui.menu	1	test_module
test_model_2	ir.ui.menu	2	test_module
test_model_3	ir.ui.menu	3	test_module
test_model_4	ir.ui.menu	4	test_module
test_model_5	ir.ui.view	5	test_module
test_model_6	ir.ui.view	6	test_module
test_model_7	ir.ui.view	7	test_module
\.


--
-- Data for Name: ir_model_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ir_model_fields (model, name, ttype, field_description, id) FROM stdin;
test_module1	test_field_1	char	description test_field_1	1
test_module1	test_field_2	char	description test_field_2	2
test_module2	test_field_3	char	description test_field_3	3
test_module2	test_field_4	char	description test_field_4	4
\.


--
-- Data for Name: ir_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ir_translation (value, id, name, module) FROM stdin;
translation number one	1	name	test_module
translation number two	2	surname	test_module
\.


--
-- Data for Name: ir_ui_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ir_ui_menu (name, id, parent_id) FROM stdin;
test_menu_1	1	2
test_menu_2	2	\N
test_menu_3	3	2
\.


--
-- Data for Name: ir_ui_view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ir_ui_view (arch, id) FROM stdin;
<tree><field name="name"/><field name="surname"/><field name="age"/></tree>	5
<tree><field name="task"/><field name="customer"/><field name="description"/></tree>	6
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


/* simple_am/simple_am--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION simple_am" to load this file. \quit

CREATE FUNCTION simple_am_handler(internal)
RETURNS table_am_handler
AS 'MODULE_PATHNAME'
LANGUAGE C;

-- Access method
CREATE ACCESS METHOD simple_am TYPE TABLE HANDLER simple_am_handler;
COMMENT ON ACCESS METHOD simple_am IS 'simple AM for persisting data and teaching newbies';

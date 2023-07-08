MODULES = simple_am

EXTENSION = simple_am
DATA = simple_am--1.0.sql
PGFILEDESC = "simple_am - a simple AM for persisting data and teaching newbies"

REGRESS = simple_am

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

FROM postgres

COPY test_dump.sql /docker-entrypoint-initdb.d/
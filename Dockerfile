FROM postgres
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB course_management
COPY coursemanagement.sql /docker-entrypoint-initdb.d/
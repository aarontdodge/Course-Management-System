FROM postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=postgres
COPY ./coursemanagement.sql /docker-entrypoint-initdb.d
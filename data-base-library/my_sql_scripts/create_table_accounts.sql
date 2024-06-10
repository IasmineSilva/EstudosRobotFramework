CREATE TABLE account{
    iser_id serial PRIMARY KEY,
    usename VARCHAR (50) UNIQUE NOT NULLL,
    password VARCHAR (50) NOT NULL,
    email VARCHAR(355) UNIQUE NOT NULL
};
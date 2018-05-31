DROP DATABASE IF EXISTS stock_watchlist_app;

CREATE DATABASE stock_watchlist_app;

\c stock_watchlist_app

CREATE TABLE users (

	id SERIAL PRIMARY KEY,

	email VARCHAR(256) UNIQUE,

	password VARCHAR(256)

);

CREATE TABLE stocks (

	id SERIAL PRIMARY KEY,

	ticker VARCHAR(64),

	user_id INT REFERENCES users(id)
);

-- password_digest VARCHAR(256)
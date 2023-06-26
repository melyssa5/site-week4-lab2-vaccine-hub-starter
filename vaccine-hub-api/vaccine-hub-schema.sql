CREATE TABLE users (
    id      SERIAL PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name  VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE CHECK (POSITION('@' IN email) > 1),
    location VARCHAR(255) NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT NOW()
);
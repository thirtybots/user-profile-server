CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    auth0_id TEXT NOT NULL
);

CREATE TABLE machines (
    id SERIAL PRIMARY KEY,

    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),

    public_key TEXT NOT NULL,
    name TEXT NOT NULL,
    slug TEXT NOT NULL

);

CREATE TABLE users (
  username VARCHAR(25) PRIMARY KEY,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL CHECK (position('@' IN email) > 1),
  address TEXT NOT NULL
);

CREATE TABLE listings (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  price INTEGER NOT NULL,
  image_url TEXT,
  available BOOLEAN NOT NULL,
  shared_by_username VARCHAR(25) NOT NULL
    REFERENCES users(username) ON DELETE CASCADE
);


CREATE TABLE liked_listings (
  id SERIAL PRIMARY KEY,
  listing_id INTEGER NOT NULL
        REFERENCES listings(id) ON DELETE CASCADE,
  username VARCHAR(25) NOT NULL
        REFERENCES users(username) ON DELETE CASCADE
);


CREATE TABLE toy_exchanges (
  id SERIAL PRIMARY KEY,
  listing_id INTEGER NOT NULL
    REFERENCES listings(id) ON DELETE CASCADE,
  shared_by_username VARCHAR(25) NOT NULL
    REFERENCES users(username) ON DELETE CASCADE,
  shared_to_username VARCHAR(25) NOT NULL
    REFERENCES users(username) ON DELETE CASCADE,
  exchange_date DATE NOT NULL
);

CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  reviewer_username VARCHAR(25) NOT NULL
    REFERENCES users(username) ON DELETE CASCADE,
  reviewed_username VARCHAR(25) NOT NULL
    REFERENCES users(username) ON DELETE CASCADE,
  review_text TEXT NOT NULL,
  review_date DATE NOT NULL
);
















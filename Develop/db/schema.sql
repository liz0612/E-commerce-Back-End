-- Drop Database if it exists
DROP DATABASE IF EXISTS ecommerce_db;

-- Create Database
CREATE DATABASE ecommerce_db;

-- Connect to the newly created database
\c ecommerce_db;

-- Create Categories Table
CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Create Products Table
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  category_id INTEGER REFERENCES categories(id),
  price DECIMAL NOT NULL
);

-- Create Tags Table
CREATE TABLE tags (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Create Product-Tags (Many-to-Many relationship between Products and Tags)
CREATE TABLE product_tags (
  product_id INTEGER REFERENCES products(id),
  tag_id INTEGER REFERENCES tags(id),
  PRIMARY KEY (product_id, tag_id)
);
create database World;

Create table capitals (
    id serial primary key ,
    country varchar(45),
    capital varchar(45)
);

-- import the data from the capitals.csv file
-- Criar o schema, se não existir
CREATE SCHEMA IF NOT EXISTS cabi;

-- Criar a tabela "BIKES" no schema
CREATE TABLE IF NOT EXISTS cabi.tb_bikes(
    "Duration" INT DEFAULT NULL,
	"Start date" TEXT,
	"End date" TEXT,
	"Start station number" INT DEFAULT NULL,
	"Start station" TEXT,
	"End station number" INT DEFAULT NULL,
	"End station" TEXT,
	"Bike number" TEXT,
	"Member type" TEXT
);	

-- Importar dados do CSV para a tabela "BIKES" usando o comando COPY
COPY cabi.tb_bikes ("Duration", "Start date", "End date", "Start station number", "Start station", "End station number", "End station", "Bike number", "Member type")
FROM './DATA/2012-capitalbikeshare-tripdata/2012Q1-capitalbikeshare-tripdata.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');
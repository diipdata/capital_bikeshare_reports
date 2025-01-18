-- Criar o schema, se não existir
CREATE SCHEMA IF NOT EXISTS cabi;

-- Criar a tabela "BIKES" no schema
CREATE TABLE IF NOT EXISTS cabi.tb_bikes(
    duration_seconds INT DEFAULT NULL,
    start_date TEXT,
    end_date TEXT,
    start_station_number INT DEFAULT NULL,
    start_station TEXT,
    end_station_number INT DEFAULT NULL,
    end_station TEXT,
    bike_number TEXT,
    member_type TEXT
);


-- Importar dados do CSV para a tabela "BIKES" usando o comando COPY
COPY cabi.tb_bikes ("duration_seconds","start_date","end_date","start_station_number","start_station","end_station_number","end_station","bike_number","member_type")
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/capital_bikeshare_reports/DATA/2012-capitalbikeshare-tripdata/2012Q1-capitalbikeshare-tripdata.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');
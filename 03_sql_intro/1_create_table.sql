-- SQL kommandon = stora bokstäver
CREATE TABLE IF NOT EXISTS system.jokes (
	-- joke_id = kolumn
	-- NUMBER(2) = tvåsiffrigt
	-- Generated... = SERIAL i postgres, automatiskt tickar upp
	-- Primary key = PK = Unik nyckel
	joke_id NUMBER(2) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	-- VARCHAR2 = recommended instead of VARCHAR (legacy)
	-- (20) = Limit på 20 bokst.
	-- NOT NULL = Får ej vara tom
	category VARCHAR2(20) NOT NULL,
	joke VARCHAR(200) NOT NULL,
	-- CHECK = Limiterar siffrorna till 1 genom 10
	rating NUMBER(2) CHECK (rating BETWEEN 1 AND 10)
);

-- Avslutar koden istället för att hänga kvar i SQL
EXIT

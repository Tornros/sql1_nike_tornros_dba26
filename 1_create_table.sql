CREATE TABLE IF NOT EXISTS jokes (
	joke_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
	-- varchar2 = recommended in oracle. varchar is normally standard.
	category VARCHAR2(20) NOT NULL,
	joke VARCHAR2(200) NOT NULL,
	-- NUMBER(2) = rating with up to 2 numbers, -99 to 99
	-- CHECK = forces between numbers
	rating NUMBER(2) CHECK (rating BETWEEN 1 AND 10)

);



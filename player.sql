DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba;

\c prueba;

/*CREATE TABLE player (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  surname VARCHAR,
  dob DATE
);*/




CREATE TABLE TB_PAIS
 ( PAIS_ID VARCHAR(15),
   DESCRIPCION VARCHAR(20),
   CONSTRAINT  PK_PAIS_ID PRIMARY KEY (PAIS_ID));



INSERT INTO TB_PAIS (PAIS_ID, DESCRIPCION) VALUES ( 1,'ENGLAND'  );
INSERT INTO TB_PAIS (PAIS_ID, DESCRIPCION) VALUES ( 2,'SPAIN' );
INSERT INTO TB_PAIS (PAIS_ID, DESCRIPCION) VALUES ( 3,'GERMANY' );
INSERT INTO TB_PAIS (PAIS_ID, DESCRIPCION) VALUES ( 4,'ARGENTINA');

CREATE TABLE TB_EQUIPO(
ID_EQUIPO SERIAL NOT NULL,
PAIS_ID VARCHAR(15), 
EQUIPO VARCHAR(50)NOT NULL,
 PRIMARY KEY (ID_EQUIPO,PAIS_ID),
 FOREIGN KEY (PAIS_ID) REFERENCES TB_PAIS (PAIS_ID));



  	Insert into TB_EQUIPO (ID_EQUIPO,PAIS_ID, EQUIPO) Values ( 39,1,'iverpool'); 
		begin
		Insert into TB_EQUIPO (ID_EQUIPO,PAIS_ID, EQUIPO) Values ( 40,1,'rsenal');   
		Insert into TB_EQUIPO (ID_EQUIPO,PAIS_ID, EQUIPO) Values ( 41,1,'. United'); 
		Insert into TB_EQUIPO (ID_EQUIPO,PAIS_ID, EQUIPO) Values ( 42,1,'ottenham H.');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (43, 1,'Chelsea');
		
		Insert into TB_EQUIPO ( ID_EQUIPO,PAIS_ID, EQUIPO) Values (44, 1,'Watford');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (45, 1,'Everton');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (46, 1,'Leicester');
		
		Insert into TB_EQUIPO ( ID_EQUIPO,PAIS_ID, EQUIPO) Values (47, 1,'Bournemouth' );
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (48, 1,'West Ham Utd.');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (50, 1,'Wolves' ); 
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (51, 1,'Southampton');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (52, 1,'Brighton');
		
		Insert into TB_EQUIPO ( ID_EQUIPO,PAIS_ID, EQUIPO) Values ( 53,1,'Newcastle');
		
		Insert into TB_EQUIPO ( ID_EQUIPO,PAIS_ID, EQUIPO) Values ( 54,1,'Fulham');  
		
		
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (9 ,2,'RB Leipzig');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (10,2,'FC Augsburg');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (11,2,'Hannover 96');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (12,2,'Sport-Club Freiburg');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (13,2,'FC Bayern MÃ¼nchen');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (14,2,'FC Schalke 04');
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (15,2,'Hertha BSC');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (89,1,'Cardiff');
		
		
		
		
		
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (16,2,'VfB Stuttgart');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (17,2,'Borussia MÃ¶nchengladbach');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (18,2,'Fortuna DÃ¼sseldorf 1895 e.V.');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (19,3,'Barcelona');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (20,3,'R. Madrid');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (21,3,'Sevilla');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (22,3,'AtlÃ©tico');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (23,3,'Celta');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (24,3,'Levante');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (25,3,'Eibar");
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (29,3,'Betis');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (30,3,'Espanyol');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (31,3,'Huesca');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (32,3,'Rayo');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (33,3,'Athletic');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (34,3,'Girona');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (35,3,'Valencia');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (36,3,'AlavÃ©s');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (37,3,'LeganÃ©s');
		Insert into TB_EQUIPO (ID_EQUIPO, PAIS_ID, EQUIPO) Values (38,3,'Valladolid');
		
                                                                            


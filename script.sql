mysql -u root -p
CREATE DATABASE cinema;
use cinema;

create table cinema(
idCinema INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nom VARCHAR(255),
lieux VARCHAR(255)
);

create table Salle(
    idSalle INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idCinemaF INT,
    nbrPlace INT,
    FOREIGN KEY (idCinemaF) REFERENCES CINEMA (idCinema)
);

CREATE TABLE Film (
    idFilm INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    duree TIME,
    titre VARCHAR(255)
);

CREATE TABLE Seance(
    idSeance INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idFilmF INT,
    idSalleF INT,
    horaire DATETIME,
    nbrEntree INT,
    FOREIGN KEY (idFilmF) REFERENCES FILM (idFilm),
    FOREIGN KEY (idSalleF) REFERENCES SALLE(idSalle)
);

CREATE TABLE Reservation(
    idReservation INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idSeanceF INT,
    date dateTIME,
    montant FLOAT,
    FOREIGN KEY (idSeanceF) REFERENCES SEANCE(idSeance)
);

insert into cinema(nom,lieux) values ('cinema paris','Paris');
insert into Salle(idCinemaF,nbrPlace) values ('1','50');
insert into Film(duree,titre) values ('02:20:00','Le hobbit');
insert into Seance(idFilmf,idSalleF,horaire,nbrEntree) values ('1','1','2022-10-21 12:00:00','0');
insert into Reservation(idSeanceF,date,montant) values ('1','2022-10-20 8:00:00','7.50');
drop table lesmonuments ;
drop table lesetapes ;
drop table lesreservations ;
drop table lesprogrammations ;
drop table lescircuits ;
drop table lesvilles ;


create table LesVILLEs (NOMV varchar(20) primary key,
       PAYS varchar (20));

create table lesMONUMENTs (NOMM varchar(35), 
        NOMV varchar (20), 
        PRIX number (6,2),
        constraint fk_nomv foreign key (nomv) references lesvilles (nomv),
        constraint pk primary key (nomm,nomv)) ;

create table lesCIRCUITs (NumC number (3,0) primary key, 
        VDEP varchar (20), 
        VARR varchar (20), 
        PRIX number (7,2),
        constraint fk_vdep foreign key (vdep) references lesvilles (nomv),
        constraint fk_varr foreign key (varr) references lesvilles (nomv));

create table lesETAPEs (NumC number (3,0), 
        RANG  number (2,0), 
        Vetape varchar (20), 
        NBJours number (2,0),
        constraint clef_ce primary key (numC, rang),
        constraint fk_nc_ce foreign key (numC) references lescircuits (numC),
        constraint fk_vilet foreign key (vetape) references lesvilles (nomv)) ;

create table lesProgrammations (NumC number (3,0), 
        DATEDEP date, 
        nbPlaces  number (3,0),
        constraint clef_cd primary key (numc, datedep),
        constraint fk_nc_cd foreign key (numc) references lescircuits (numc) ) ;

create table LesReservations(NumR number (4,0), 
        NOMC varchar (20), 
        NumC number (3,0),
        DATEDEP date, 
        NbRes  number (2,0),
        constraint clef_r primary key (numr),
        constraint fk_nc_date_r foreign key (numc, datedep) 
            references LesProgrammations (numc, datedep) );


insert into lesVilles values ('Albertville','France');
insert into lesVilles values ('Akureyri','Islande');
insert into lesVilles values ('Amsterdam','Hollande');
insert into lesVilles values ('Ardara','Irlande');
insert into lesVilles values ('Asbyrgi','Islande');
insert into lesVilles values ('Bantry','Irlande');
insert into lesVilles values ('Bari','Italie');
insert into lesVilles values ('Benevento','Italie');
insert into lesVilles values ('Besse','France');
insert into lesVilles values ('Briancon','France');
insert into lesVilles values ('Brindisi','Italie');
insert into lesVilles values ('Cap Nord','Norvege');
insert into lesVilles values ('Capri','Italie');
insert into lesVilles values ('Carrick','Irlande');
insert into lesVilles values ('Caserte','Italie');
insert into lesVilles values ('Castelo de Vide','Portugal');
insert into lesVilles values ('Catanzaro','Italie');
insert into lesVilles values ('Christianshab','Groenland');
insert into lesVilles values ('Cleggan','Irlande');
insert into lesVilles values ('Clermont Ferrand','France');
insert into lesVilles values ('Clifden','Irlande');
insert into lesVilles values ('Copenhague','Danemark');
insert into lesVilles values ('Cork','Irlande');
insert into lesVilles values ('Cosenza','Italie');
insert into lesVilles values ('Dingle','Irlande');
insert into lesVilles values ('Disko','Groenland');
insert into lesVilles values ('Donegal','Irlande');
insert into lesVilles values ('Dublin','Irlande');
insert into lesVilles values ('Dungloe','Irlande');
insert into lesVilles values ('Egedesmine','Groenland');
insert into lesVilles values ('Ennis','Irlande');
insert into lesVilles values ('Evora','Portugal');
insert into lesVilles values ('Faro','Portugal');
insert into lesVilles values ('Fatima','Portugal');
insert into lesVilles values ('Florence','Italie');
insert into lesVilles values ('Galway','Irlande');
insert into lesVilles values ('Geysir','Islande');
insert into lesVilles values ('Glengariff','Irlande');
insert into lesVilles values ('Godafoss','Islande');
insert into lesVilles values ('Godhavn','Groenland');
insert into lesVilles values ('Gullfoss','Islande');
insert into lesVilles values ('Hammerfest','Norvege');
insert into lesVilles values ('Helsinky','Finlande');
insert into lesVilles values ('Hoedic','France');
insert into lesVilles values ('Holsteinborg','Groenland');
insert into lesVilles values ('Houat','France');
insert into lesVilles values ('Husavik','Islande');
insert into lesVilles values ('Hveravellir','Islande');
insert into lesVilles values ('Inari','Norvege');
insert into lesVilles values ('Jakobshavn','Groenland');
insert into lesVilles values ('Kenmare','Irlande');
insert into lesVilles values ('Killarney','Irlande');
insert into lesVilles values ('Killibegs','Irlande');
insert into lesVilles values ('Laschamps','France');
insert into lesVilles values ('Lecce','Italie');
insert into lesVilles values ('Leenan','Irlande');
insert into lesVilles values ('Leiria','Portugal');
insert into lesVilles values ('Letterkenny','Irlande');
insert into lesVilles values ('Lisbonne','Portugal');
insert into lesVilles values ('Londres','Angleterre');
insert into lesVilles values ('Louisburgh','Irlande');
insert into lesVilles values ('Metaponto','Italie');
insert into lesVilles values ('Myvatn','Islande');
insert into lesVilles values ('Naples','Italie');
insert into lesVilles values ('Orcival','France');
insert into lesVilles values ('Paris','France');
insert into lesVilles values ('Lyon','France');
insert into lesVilles values ('Pompei','Italie');
insert into lesVilles values ('Port Cotton','France');
insert into lesVilles values ('Port Maria','France');
insert into lesVilles values ('Porto','Portugal');
insert into lesVilles values ('Puy de Dome','France');
insert into lesVilles values ('Quiberon','France');
insert into lesVilles values ('Ravenne','Italie');
insert into lesVilles values ('Reykholt','Islande');
insert into lesVilles values ('Reykjavik','Islande');
insert into lesVilles values ('Rome','Italie');
insert into lesVilles values ('Saarijarvi','Norvege');
insert into lesVilles values ('St Ives','Angleterre');
insert into lesVilles values ('Sissinghurst','Angleterre');
insert into lesVilles values ('Exeter','Angleterre');
insert into lesVilles values ('Bath','Angleterre');
insert into lesVilles values ('Salisbury','Angleterre');
insert into lesVilles values ('Salerne','Italie');
insert into lesVilles values ('Salla','Norvege');
insert into lesVilles values ('Shannon','Irlande');
insert into lesVilles values ('Sondre','Groenland');
insert into lesVilles values ('Tornio','Norvege');
insert into lesVilles values ('Urgeirica','Portugal');
insert into lesVilles values ('Venise','Italie');
insert into lesVilles values ('Verone','Italie');
insert into lesVilles values ('Vila Real','Portugal');
insert into lesVilles values ('Westport','Irlande');
insert into lesVilles values ('Ylivieska','Norvege');
insert into lesMonuments values ('Tower Bridge','Londres',50);
insert into lesMonuments values ('Madame Tussau','Londres',50);
insert into lesMonuments values ('The Tower','Londres',60);
insert into lesMonuments values ('British Museum','Londres',40);
insert into lesMonuments values ('Loydd Building','Londres',0);
insert into lesMonuments values ('Canals','Amsterdam',90);
insert into lesMonuments values ('Medical Center','Amsterdam',0);
insert into lesMonuments values ('Madurodam','Amsterdam',120);
insert into lesMonuments values ('Plaza San Marco','Venise',0);
insert into lesMonuments values ('Cratere du Pariou','Puy de Dome',20);
insert into lesMonuments values ('Cretes du Sancy','Puy de Dome',0);
insert into lesMonuments values ('Reserve ornithologique','Port Cotton',0);
insert into lesMonuments values ('Grotte de l''Apothicairerie','Port Cotton',20);
insert into lesMonuments values ('Citadelle Vauban','Port Maria',0);
insert into lesMonuments values ('Elizabeth Gardens','Sissinghurst',15);
insert into lesMonuments values ('Stonehenge Prehistoric Spot','Salisbury',50);
insert into lesMonuments values ('Roman baths','Bath',35);
insert into lesMonuments values ('Palais Royal de Queluz','Lisbonne',120);
insert into lesMonuments values ('Monastere des Jeronimos','Lisbonne',36);
insert into lesMonuments values ('Chateau de Saint Georges','Lisbonne',45);
insert into lesMonuments values ('Monastere Cysterien d''Alcobaca','Leiria',36);
insert into lesMonuments values ('Cathedrale','Porto',0);
insert into lesMonuments values ('Palais de la Bourse','Porto',90);
insert into lesMonuments values ('Palais des Ducs de Braganda','Vila Real',120);
insert into lesMonuments values ('Musee Graovasco','Urgeirica',10);
insert into lesMonuments values ('Universite de Santa Clara','Fatima',0);
insert into lesMonuments values ('Chateau des Templiers','Fatima',20);
insert into lesMonuments values ('Usine de Tapisseries','Evora',0);
insert into lesMonuments values ('Chapelle des Os','Evora',0);
insert into lesMonuments values ('Maison Royale de Braganda','Evora',120);
insert into lesMonuments values ('Couvent Daconciecao','Faro',20);
insert into lesMonuments values ('Forteresse Sagres','Faro',0);
insert into lesMonuments values ('Piazza Venezia','Rome',0);
insert into lesMonuments values ('La Fontaine de Trevi','Rome',0);
insert into lesMonuments values ('La Basilique Saint Pierre','Rome',0);
insert into lesMonuments values ('Le Pantheon','Rome',40);
insert into lesMonuments values ('Le Colisee','Rome',40);
insert into lesMonuments values ('Le Cirque de Maxime','Rome',40);
insert into lesMonuments values ('Eglise Santa Maria del Fiore','Florence',0);
insert into lesMonuments values ('Campanile de Giotto','Florence',30);
insert into lesMonuments values ('Baptistere','Florence',30);
insert into lesMonuments values ('Mausolee de Galla Placidia','Ravenne',30);
insert into lesMonuments values ('Sant Apolinnare Nuovo','Ravenne',30);
insert into lesMonuments values ('Piazza de Signori','Verone',0);
insert into lesMonuments values ('Casa de Capuleti','Verone',40);
insert into lesMonuments values ('Piazza San Marco','Venise',0);
insert into lesMonuments values ('La Basilique San Marco','Venise',30);
insert into lesMonuments values ('Le palais des Doges','Venise',30);
insert into lesMonuments values ('Le pont des Soupirs','Venise',0);
insert into lesMonuments values ('Le Grand Canal','Venise',40);
insert into lesMonuments values ('Ruines','Pompei',0);
insert into lesMonuments values ('Site Grec de Paestum','Cosenza',36);
insert into lesMonuments values ('Tombeau d''Isabelle d''Aragon','Cosenza',50);
insert into lesMonuments values ('Cathedrale Roccella','Catanzaro',0);
insert into lesMonuments values ('Triangle de Pythagore','Metaponto',0);
insert into lesMonuments values ('Le Dome','Lecce',50);
insert into lesMonuments values ('Basilique San Croce','Lecce',0);
insert into lesMonuments values ('Basilique de San Nicolas','Bari',0);
insert into lesMonuments values ('Chateau de Frederic II','Bari',80);
insert into lesMonuments values ('Arc du Trajan','Benevento',0);
insert into lesMonuments values ('Theatre','Benevento',50);
insert into lesMonuments values ('Palais Royal','Caserte',50);
insert into lesMonuments values ('Le Grand Serre Che','Briancon',145);
insert into lesMonuments values ('Le Prorel','Briancon',95);
insert into lesMonuments values ('Le Monetier les Bains','Briancon',95);
insert into lesMonuments values ('Serre Chevalier','Briancon',120);
insert into lesMonuments values ('Puy Saint Vincent','Briancon',110);
insert into lesMonuments values ('Montgenevre','Briancon',110);
insert into lesCircuits values (1,'Paris','Paris',1160);
insert into lesCircuits values (2,'Paris','Paris',1160);
insert into lesCircuits values (3,'Paris','Paris',1040);
insert into lesCircuits values (4,'Paris','Paris',1270);
insert into lesCircuits values (5,'Lyon','Lyon',2740);
insert into lesCircuits values (6,'Paris','Paris',2520);
insert into lesCircuits values (7,'Quiberon','Hoedic',2500);
insert into lesCircuits values (8,'Clermont Ferrand','Besse',2140);
insert into lesCircuits values (9,'Paris','Paris',5700);
insert into lesCircuits values (10,'Shannon','Cork',6170);
insert into lesCircuits values (11,'Shannon','Shannon',6270);
insert into lesCircuits values (12,'Dublin','Dublin',6170);
insert into lesCircuits values (13,'Paris','Paris',18590);
insert into lesCircuits values (14,'Reykjavik','Reykjavik',7700);
insert into lesCircuits values (15,'Paris','Paris',8560);
insert into lesCircuits values (16,'Paris','Paris',10180);
insert into lesCircuits values (17,'Lisbonne','Lisbonne',3990);
insert into lesCircuits values (18,'Paris','Paris',6690);
insert into lesCircuits values (19,'Rome','Rome',10400);
insert into lesCircuits values (21,'Paris','Rome',15000);
insert into lesCircuits values (20,'Briancon','Briancon',450);
insert into lesEtapes values (1,1,'Londres',2);
insert into lesEtapes values (2,1,'Londres',2);
insert into lesEtapes values (3,1,'Amsterdam',3);
insert into lesEtapes values (4,1,'Amsterdam',4);
insert into lesEtapes values (5,1,'Venise',5);
insert into lesEtapes values (6,1,'Venise',4);
insert into lesEtapes values (7,1,'Quiberon',2);
insert into lesEtapes values (7,2,'Port Cotton',2);
insert into lesEtapes values (7,3,'Port Maria',1);
insert into lesEtapes values (7,4,'Houat',1);
insert into lesEtapes values (7,5,'Hoedic',1);
insert into lesEtapes values (8,1,'Laschamps',2);
insert into lesEtapes values (8,2,'Orcival',3);
insert into lesEtapes values (8,3,'Besse',2);
insert into lesEtapes values (9,1,'Sissinghurst',2);
insert into lesEtapes values (9,2,'Salisbury',2);
insert into lesEtapes values (9,3,'Exeter',1);
insert into lesEtapes values (9,4,'St Ives',1);
insert into lesEtapes values (9,5,'Bath',1);
insert into lesEtapes values (9,6,'Londres',1);
insert into lesEtapes values (10,1,'Shannon',1);
insert into lesEtapes values (10,2,'Dingle',3);
insert into lesEtapes values (10,3,'Killarney',2);
insert into lesEtapes values (10,4,'Kenmare',1);
insert into lesEtapes values (10,5,'Glengariff',3);
insert into lesEtapes values (10,6,'Bantry',2);
insert into lesEtapes values (10,7,'Cork',1);
insert into lesEtapes values (11,1,'Galway',2);
insert into lesEtapes values (11,2,'Clifden',2);
insert into lesEtapes values (11,3,'Cleggan',2);
insert into lesEtapes values (11,4,'Leenan',1);
insert into lesEtapes values (11,5,'Louisburgh',2);
insert into lesEtapes values (11,6,'Westport',2);
insert into lesEtapes values (11,7,'Ennis',2);
insert into lesEtapes values (12,1,'Donegal',1);
insert into lesEtapes values (12,2,'Killibegs',2);
insert into lesEtapes values (12,3,'Carrick',2);
insert into lesEtapes values (12,4,'Ardara',2);
insert into lesEtapes values (12,5,'Dungloe',2);
insert into lesEtapes values (12,6,'Letterkenny',1);
insert into lesEtapes values (12,7,'Dublin',2);
insert into lesEtapes values (13,1,'Copenhague',4);
insert into lesEtapes values (13,2,'Jakobshavn',2);
insert into lesEtapes values (13,3,'Christianshab',2);
insert into lesEtapes values (13,4,'Godhavn',1);
insert into lesEtapes values (13,5,'Disko',2);
insert into lesEtapes values (13,6,'Egedesmine',1);
insert into lesEtapes values (13,7,'Holsteinborg',4);
insert into lesEtapes values (13,8,'Sondre',2);
insert into lesEtapes values (14,1,'Reykjavik',3);
insert into lesEtapes values (14,2,'Gullfoss',2);
insert into lesEtapes values (14,3,'Geysir',2);
insert into lesEtapes values (14,4,'Hveravellir',2);
insert into lesEtapes values (14,5,'Akureyri',2);
insert into lesEtapes values (14,6,'Myvatn',2);
insert into lesEtapes values (14,7,'Asbyrgi',2);
insert into lesEtapes values (15,1,'Reykjavik',2);
insert into lesEtapes values (15,2,'Reykholt',2);
insert into lesEtapes values (15,3,'Husavik',2);
insert into lesEtapes values (15,4,'Godafoss',2);
insert into lesEtapes values (16,1,'Helsinky',2);
insert into lesEtapes values (16,2,'Ylivieska',1);
insert into lesEtapes values (16,3,'Tornio',1);
insert into lesEtapes values (16,4,'Cap Nord',1);
insert into lesEtapes values (16,5,'Hammerfest',1);
insert into lesEtapes values (16,6,'Inari',1);
insert into lesEtapes values (16,7,'Salla',1);
insert into lesEtapes values (16,8,'Saarijarvi',2);
insert into lesEtapes values (17,1,'Lisbonne',2);
insert into lesEtapes values (17,2,'Leiria',1);
insert into lesEtapes values (17,3,'Porto',2);
insert into lesEtapes values (17,4,'Vila Real',2);
insert into lesEtapes values (17,5,'Urgeirica',1);
insert into lesEtapes values (17,6,'Fatima',2);
insert into lesEtapes values (17,7,'Castelo de Vide',1);
insert into lesEtapes values (17,8,'Evora',2);
insert into lesEtapes values (17,9,'Faro',1);
insert into lesEtapes values (18,1,'Rome',3);
insert into lesEtapes values (18,2,'Florence',3);
insert into lesEtapes values (18,3,'Ravenne',2);
insert into lesEtapes values (18,4,'Verone',1);
insert into lesEtapes values (18,5,'Venise',3);
insert into lesEtapes values (19,1,'Rome',2);
insert into lesEtapes values (19,2,'Naples',1);
insert into lesEtapes values (19,3,'Pompei',1);
insert into lesEtapes values (19,4,'Capri',1);
insert into lesEtapes values (19,5,'Salerne',1);
insert into lesEtapes values (19,6,'Cosenza',2);
insert into lesEtapes values (19,7,'Catanzaro',1);
insert into lesEtapes values (19,8,'Metaponto',1);
insert into lesEtapes values (19,9,'Lecce',1);
insert into lesEtapes values (19,10,'Brindisi',1);
insert into lesEtapes values (19,11,'Bari',2);
insert into lesEtapes values (19,12,'Benevento',2);
insert into lesEtapes values (19,13,'Caserte',2);
insert into lesEtapes values (20,1,'Briancon',6);
insert into lesEtapes values (21,1,'Helsinky',2);
insert into lesEtapes values (21,2,'Ylivieska',1);
insert into lesEtapes values (21,3,'Tornio',1);
insert into lesEtapes values (21,4,'Cap Nord',1);
insert into lesEtapes values (21,5,'Hammerfest',1);
insert into lesEtapes values (21,6,'Inari',1);
insert into lesEtapes values (21,7,'Salla',1);
insert into lesEtapes values (21,8,'Saarijarvi',2);
insert into lesEtapes values (21,9,'Rome',3);
insert into lesEtapes values (21,10,'Florence',3);
insert into lesEtapes values (21,11,'Ravenne',2);
insert into lesEtapes values (21,12,'Verone',1);
insert into lesEtapes values (21,13,'Venise',3);
insert into LesProgrammations values (1,to_date ('04-01-2010','DD-MM-YYYY'),34);
insert into LesProgrammations values (1,to_date ('24-07-2010','DD-MM-YYYY'),10);
insert into LesProgrammations values (1,to_date ('21-07-2010','DD-MM-YYYY'),10);
insert into LesProgrammations values (2,to_date ('05-09-2010','DD-MM-YYYY'),30);
insert into LesProgrammations values (6,to_date ('06-09-2010','DD-MM-YYYY'),10);
insert into LesProgrammations values (7,to_date ('31-10-2010','DD-MM-YYYY'),39);
insert into LesProgrammations values (10,to_date ('01-01-2010','DD-MM-YYYY'),80);
insert into LesProgrammations values (11,to_date ('29-05-2010','DD-MM-YYYY'),34);
insert into LesProgrammations values (18,to_date ('30-07-2010','DD-MM-YYYY'),90);
insert into LesProgrammations values (21,to_date ('15-01-2010','DD-MM-YYYY'),66);
insert into LesProgrammations values (1,to_date ('04-02-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (1,to_date ('06-02-2010','DD-MM-YYYY'),34);
insert into LesProgrammations values (2,to_date ('05-02-2010','DD-MM-YYYY'),99);
insert into LesProgrammations values (2,to_date ('06-01-2010','DD-MM-YYYY'),02);
insert into LesProgrammations values (2,to_date ('07-01-2010','DD-MM-YYYY'),34);
insert into LesProgrammations values (2,to_date ('06-02-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (3,to_date ('03-07-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (3,to_date ('24-12-2009','DD-MM-YYYY'),13);
insert into LesProgrammations values (3,to_date ('31-12-2009','DD-MM-YYYY'),45);
insert into LesProgrammations values (4,to_date ('06-11-2010','DD-MM-YYYY'),18);
insert into LesProgrammations values (4,to_date ('06-08-2010','DD-MM-YYYY'),10);
insert into LesProgrammations values (4,to_date ('30-06-2010','DD-MM-YYYY'),99);
insert into LesProgrammations values (4,to_date ('31-08-2010','DD-MM-YYYY'),01);
insert into LesProgrammations values (5,to_date ('06-11-2010','DD-MM-YYYY'),46);
insert into LesProgrammations values (5,to_date ('31-08-2010','DD-MM-YYYY'),66);
insert into LesProgrammations values (6,to_date ('06-02-2010','DD-MM-YYYY'),22);
insert into LesProgrammations values (6,to_date ('16-11-2010','DD-MM-YYYY'),34);
insert into LesProgrammations values (6,to_date ('06-10-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (7,to_date ('31-08-2010','DD-MM-YYYY'),56);
insert into LesProgrammations values (7,to_date ('16-12-2009','DD-MM-YYYY'),52);
insert into LesProgrammations values (7,to_date ('06-01-2010','DD-MM-YYYY'),01);
insert into LesProgrammations values (7,to_date ('26-02-2010','DD-MM-YYYY'),01);
insert into LesProgrammations values (8,to_date ('31-08-2010','DD-MM-YYYY'),10);
insert into LesProgrammations values (8,to_date ('16-02-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (8,to_date ('21-02-2010','DD-MM-YYYY'),13);
insert into LesProgrammations values (8,to_date ('21-07-2010','DD-MM-YYYY'),14);
insert into LesProgrammations values (8,to_date ('24-12-2009','DD-MM-YYYY'),18);
insert into LesProgrammations values (8,to_date ('31-12-2009','DD-MM-YYYY'),10);
insert into LesProgrammations values (8,to_date ('28-02-2010','DD-MM-YYYY'),11);
insert into LesProgrammations values (8,to_date ('14-02-2010','DD-MM-YYYY'),01);
insert into LesProgrammations values (8,to_date ('16-05-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (8,to_date ('26-04-2010','DD-MM-YYYY'),31);
insert into LesProgrammations values (8,to_date ('14-11-2010','DD-MM-YYYY'),03);
insert into LesProgrammations values (9,to_date ('06-02-2010','DD-MM-YYYY'),03);
insert into LesProgrammations values (9,to_date ('30-10-2010','DD-MM-YYYY'),31);
insert into LesProgrammations values (10,to_date ('21-01-2010','DD-MM-YYYY'),45);
insert into LesProgrammations values (10,to_date ('11-02-2010','DD-MM-YYYY'),30);
insert into LesProgrammations values (10,to_date ('28-02-2010','DD-MM-YYYY'),22);
insert into LesProgrammations values (11,to_date ('28-02-2010','DD-MM-YYYY'),03);
insert into LesProgrammations values (11,to_date ('06-02-2010','DD-MM-YYYY'),13);
insert into LesProgrammations values (11,to_date ('30-06-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (12,to_date ('06-02-2010','DD-MM-YYYY'),190);
insert into LesProgrammations values (13,to_date ('31-05-2010','DD-MM-YYYY'),03);
insert into LesProgrammations values (13,to_date ('30-04-2010','DD-MM-YYYY'),15);
insert into LesProgrammations values (13,to_date ('30-06-2010','DD-MM-YYYY'),52);
insert into LesProgrammations values (13,to_date ('31-12-2010','DD-MM-YYYY'),44);
insert into LesProgrammations values (13,to_date ('31-12-2009','DD-MM-YYYY'),51);
insert into LesProgrammations values (13,to_date ('01-01-2010','DD-MM-YYYY'),68);
insert into LesProgrammations values (13,to_date ('06-02-2010','DD-MM-YYYY'),99);
insert into LesProgrammations values (13,to_date ('06-05-2010','DD-MM-YYYY'),60);
insert into LesProgrammations values (14,to_date ('06-07-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (14,to_date ('26-07-2010','DD-MM-YYYY'),25);
insert into LesProgrammations values (15,to_date ('06-02-2010','DD-MM-YYYY'),11);
insert into LesProgrammations values (15,to_date ('31-08-2010','DD-MM-YYYY'),18);
insert into LesProgrammations values (16,to_date ('31-08-2010','DD-MM-YYYY'),17);
insert into LesProgrammations values (16,to_date ('06-02-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (16,to_date ('06-01-2010','DD-MM-YYYY'),03);
insert into LesProgrammations values (17,to_date ('31-12-2010','DD-MM-YYYY'),03);
insert into LesProgrammations values (17,to_date ('06-02-2010','DD-MM-YYYY'),03);
insert into LesProgrammations values (17,to_date ('16-02-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (17,to_date ('26-02-2010','DD-MM-YYYY'),34);
insert into LesProgrammations values (18,to_date ('30-04-2010','DD-MM-YYYY'),15);
insert into LesProgrammations values (18,to_date ('06-12-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (18,to_date ('06-10-2010','DD-MM-YYYY'),40);
insert into LesProgrammations values (19,to_date ('06-09-2010','DD-MM-YYYY'),20);
insert into LesProgrammations values (19,to_date ('16-09-2010','DD-MM-YYYY'),10);
insert into LesProgrammations values (19,to_date ('05-08-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (19,to_date ('10-12-2010','DD-MM-YYYY'),28);
insert into LesProgrammations values (19,to_date ('20-12-2010','DD-MM-YYYY'),11);
insert into LesProgrammations values (19,to_date ('06-02-2010','DD-MM-YYYY'),10);
insert into LesProgrammations values (19,to_date ('15-04-2010','DD-MM-YYYY'),45);
insert into LesProgrammations values (20,to_date ('01-04-2010','DD-MM-YYYY'),13);
insert into LesProgrammations values (20,to_date ('02-02-2010','DD-MM-YYYY'),14);
insert into LesProgrammations values (20,to_date ('22-12-2009','DD-MM-YYYY'),18);
insert into LesProgrammations values (20,to_date ('20-01-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (20,to_date ('27-01-2010','DD-MM-YYYY'),05);
insert into LesProgrammations values (20,to_date ('03-04-2010','DD-MM-YYYY'),87);
insert into LesProgrammations values (20,to_date ('06-02-2010','DD-MM-YYYY'),01);
insert into LesProgrammations values (21,to_date ('26-02-2010','DD-MM-YYYY'),12);
insert into LesProgrammations values (21,to_date ('06-04-2010','DD-MM-YYYY'),99);
insert into LesProgrammations values (21,to_date ('25-01-2010','DD-MM-YYYY'),03);
insert into lesreservations values (03,'Asterix',01,to_date ('04-02-2010','DD-MM-YYYY'),04);
insert into lesreservations values (04,'Obelix',12,to_date ('06-02-2010','DD-MM-YYYY'),78);
insert into lesreservations values (01,'Donald',10,to_date ('01-01-2010','DD-MM-YYYY'),02);
insert into lesreservations values (02,'Picsou',09,to_date ('30-10-2010','DD-MM-YYYY'),10);
insert into lesreservations values (05,'Ordralphabetix',20,to_date ('27-01-2010','DD-MM-YYYY'),05);
insert into lesreservations values (06,'Corto',18,to_date ('06-12-2010','DD-MM-YYYY'),11);
insert into lesreservations values (21,'Mafalda',19,to_date ('15-04-2010','DD-MM-YYYY'),20);
insert into lesreservations values (22,'Mafalda',05,to_date ('06-11-2010','DD-MM-YYYY'),43);
insert into lesreservations values (23,'Donald',21,to_date ('15-01-2010','DD-MM-YYYY'),10);
insert into lesreservations values (07,'Bidochon',13,to_date ('31-12-2009','DD-MM-YYYY'),05);
insert into lesreservations values (13,'Bonemine',14,to_date ('26-07-2010','DD-MM-YYYY'),21);
insert into lesreservations values (14,'Nestor Burma',12,to_date ('06-02-2010','DD-MM-YYYY'),01);
insert into lesreservations values (15,'Mafalda',13,to_date ('31-12-2009','DD-MM-YYYY'),43);
insert into lesreservations values (16,'GrosseBaf',04,to_date ('30-06-2010','DD-MM-YYYY'),88);
insert into lesreservations values (17,'Picsou',08,to_date ('14-02-2010','DD-MM-YYYY'),01);
insert into lesreservations values (18,'Picsou',01,to_date ('21-07-2010','DD-MM-YYYY'),10);
insert into lesreservations values (19,'Asterix',21,to_date ('15-01-2010','DD-MM-YYYY'),14);
insert into lesreservations values (08,'Milou',08,to_date ('16-02-2010','DD-MM-YYYY'),01);
insert into lesreservations values (09,'La Castafiore',08,to_date ('28-02-2010','DD-MM-YYYY'),07);
insert into lesreservations values (10,'Milou',02,to_date ('05-02-2010','DD-MM-YYYY'),99);
insert into lesreservations values (11,'Jerry',03,to_date ('03-07-2010','DD-MM-YYYY'),11);
insert into lesreservations values (12,'Donald',07,to_date ('16-12-2009','DD-MM-YYYY'),51);
insert into lesreservations values (20,'Ordralphabetix',05,to_date ('31-08-2010','DD-MM-YYYY'),02);
insert into lesreservations values (24,'Mafalda',13,to_date ('01-01-2010','DD-MM-YYYY'),05);
insert into lesreservations values (25,'Nestor Burma',13,to_date ('01-01-2010','DD-MM-YYYY'),05);
insert into lesreservations values (26,'Ordralphabetix',10,to_date ('11-02-2010','DD-MM-YYYY'),02);
insert into lesreservations values (27,'Nestor Burma',2,to_date ('07-01-2010','DD-MM-YYYY'),25);



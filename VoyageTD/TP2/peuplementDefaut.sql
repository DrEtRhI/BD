drop table LesMONUMENTs ;
drop table LesETAPEs ;
drop table LesRESERVATIONs ;
drop table LesPROGRAMMATIONs ;
drop table LesCIRCUITS ;
drop table LesVILLEs ;


create table LesVILLEs (NOMV varchar(20) primary key,
       PAYS varchar (20));

create table LesMONUMENTs (NOMM varchar(35), 
        NOMV varchar (20), 
        PRIX number (6,2),
        constraint fk_nomv foreign key (nomv) references LesVILLEs (nomv),
        constraint pk primary key (nomm,nomv)) ;

create table LesCIRCUITS (NumC number (3,0) primary key, 
        VDEP varchar (20), 
        VARR varchar (20), 
        PRIX number (7,2),
        constraint fk_vdep foreign key (vdep) references LesVILLEs (nomv),
        constraint fk_varr foreign key (varr) references LesVILLEs (nomv));

create table LesETAPEs (NumC number (3,0), 
        RANG  number (2,0), 
        Vetape varchar (20), 
        NBJours number (2,0),
        constraint clef_ce primary key (numC, rang),
        constraint fk_nc_ce foreign key (numC) references LesCIRCUITS (numC),
        constraint fk_vilet foreign key (vetape) references LesVILLEs (nomv)) ;

create table LesPROGRAMMATIONs (NumC number (3,0), 
        DATEDEP date, 
        nbPlaces  number (3,0),
        constraint clef_cd primary key (numc, datedep),
        constraint fk_nc_cd foreign key (numc) references LesCIRCUITS (numc) ) ;

create table LesRESERVATIONs(NumR number (4,0), 
        NOMC varchar (20), 
        NumC number (3,0),
        DATEDEP date, 
        NbRes  number (2,0),
        constraint clef_r primary key (numr),
        constraint fk_nc_date_r foreign key (numc, datedep) 
            references LesPROGRAMMATIONs (numc, datedep) );


insert into LesVILLEs values ('Akureyri','Islande');
insert into LesVILLEs values ('Amsterdam','Hollande');
insert into LesVILLEs values ('Ardara','Irlande');
insert into LesVILLEs values ('Asbyrgi','Islande');
insert into LesVILLEs values ('Bantry','Irlande');
insert into LesVILLEs values ('Bari','Italie');
insert into LesVILLEs values ('Benevento','Italie');
insert into LesVILLEs values ('Besse','France');
insert into LesVILLEs values ('Briancon','France');
insert into LesVILLEs values ('Brindisi','Italie');
insert into LesVILLEs values ('Cap Nord','Norvege');
insert into LesVILLEs values ('Capri','Italie');
insert into LesVILLEs values ('Carrick','Irlande');
insert into LesVILLEs values ('Caserte','Italie');
insert into LesVILLEs values ('Castelo de Vide','Portugal');
insert into LesVILLEs values ('Catanzaro','Italie');
insert into LesVILLEs values ('Christianshab','Groenland');
insert into LesVILLEs values ('Cleggan','Irlande');
insert into LesVILLEs values ('Clermont Ferrand','France');
insert into LesVILLEs values ('Clifden','Irlande');
insert into LesVILLEs values ('Copenhague','Danemark');
insert into LesVILLEs values ('Cork','Irlande');
insert into LesVILLEs values ('Cosenza','Italie');
insert into LesVILLEs values ('Dingle','Irlande');
insert into LesVILLEs values ('Disko','Groenland');
insert into LesVILLEs values ('Donegal','Irlande');
insert into LesVILLEs values ('Dublin','Irlande');
insert into LesVILLEs values ('Dungloe','Irlande');
insert into LesVILLEs values ('Egedesmine','Groenland');
insert into LesVILLEs values ('Ennis','Irlande');
insert into LesVILLEs values ('Evora','Portugal');
insert into LesVILLEs values ('Faro','Portugal');
insert into LesVILLEs values ('Fatima','Portugal');
insert into LesVILLEs values ('Florence','Italie');
insert into LesVILLEs values ('Galway','Irlande');
insert into LesVILLEs values ('Geysir','Islande');
insert into LesVILLEs values ('Glengariff','Irlande');
insert into LesVILLEs values ('Godafoss','Islande');
insert into LesVILLEs values ('Godhavn','Groenland');
insert into LesVILLEs values ('Gullfoss','Islande');
insert into LesVILLEs values ('Hammerfest','Norvege');
insert into LesVILLEs values ('Helsinky','Finlande');
insert into LesVILLEs values ('Hoedic','France');
insert into LesVILLEs values ('Holsteinborg','Groenland');
insert into LesVILLEs values ('Houat','France');
insert into LesVILLEs values ('Husavik','Islande');
insert into LesVILLEs values ('Hveravellir','Islande');
insert into LesVILLEs values ('Inari','Norvege');
insert into LesVILLEs values ('Jakobshavn','Groenland');
insert into LesVILLEs values ('Kenmare','Irlande');
insert into LesVILLEs values ('Killarney','Irlande');
insert into LesVILLEs values ('Killibegs','Irlande');
insert into LesVILLEs values ('Laschamps','France');
insert into LesVILLEs values ('Lecce','Italie');
insert into LesVILLEs values ('Leenan','Irlande');
insert into LesVILLEs values ('Leiria','Portugal');
insert into LesVILLEs values ('Letterkenny','Irlande');
insert into LesVILLEs values ('Lisbonne','Portugal');
insert into LesVILLEs values ('Londres','Angleterre');
insert into LesVILLEs values ('Louisburgh','Irlande');
insert into LesVILLEs values ('Metaponto','Italie');
insert into LesVILLEs values ('Myvatn','Islande');
insert into LesVILLEs values ('Naples','Italie');
insert into LesVILLEs values ('Orcival','France');
insert into LesVILLEs values ('Paris','France');
insert into LesVILLEs values ('Lyon','France');
insert into LesVILLEs values ('Pompei','Italie');
insert into LesVILLEs values ('Port Cotton','France');
insert into LesVILLEs values ('Port Maria','France');
insert into LesVILLEs values ('Porto','Portugal');
insert into LesVILLEs values ('Puy de Dome','France');
insert into LesVILLEs values ('Quiberon','France');
insert into LesVILLEs values ('Ravenne','Italie');
insert into LesVILLEs values ('Reykholt','Islande');
insert into LesVILLEs values ('Reykjavik','Islande');
insert into LesVILLEs values ('Rome','Italie');
insert into LesVILLEs values ('Saarijarvi','Norvege');
insert into LesVILLEs values ('St Ives','Angleterre');
insert into LesVILLEs values ('Sissinghurst','Angleterre');
insert into LesVILLEs values ('Exeter','Angleterre');
insert into LesVILLEs values ('Bath','Angleterre');
insert into LesVILLEs values ('Salisbury','Angleterre');
insert into LesVILLEs values ('Salerne','Italie');
insert into LesVILLEs values ('Salla','Norvege');
insert into LesVILLEs values ('Shannon','Irlande');
insert into LesVILLEs values ('Sondre','Groenland');
insert into LesVILLEs values ('Tornio','Norvege');
insert into LesVILLEs values ('Urgeirica','Portugal');
insert into LesVILLEs values ('Venise','Italie');
insert into LesVILLEs values ('Verone','Italie');
insert into LesVILLEs values ('Vila Real','Portugal');
insert into LesVILLEs values ('Westport','Irlande');
insert into LesVILLEs values ('Ylivieska','Norvege');
insert into LesMONUMENTs values ('Tower Bridge','Londres',50);
insert into LesMONUMENTs values ('Madame Tussau','Londres',50);
insert into LesMONUMENTs values ('The Tower','Londres',60);
insert into LesMONUMENTs values ('British Museum','Londres',40);
insert into LesMONUMENTs values ('Loydd Building','Londres',0);
insert into LesMONUMENTs values ('Canals','Amsterdam',90);
insert into LesMONUMENTs values ('Medical Center','Amsterdam',0);
insert into LesMONUMENTs values ('Madurodam','Amsterdam',120);
insert into LesMONUMENTs values ('Plaza San Marco','Venise',0);
insert into LesMONUMENTs values ('Cratere du Pariou','Puy de Dome',20);
insert into LesMONUMENTs values ('Cretes du Sancy','Puy de Dome',0);
insert into LesMONUMENTs values ('Reserve ornithologique','Port Cotton',0);
insert into LesMONUMENTs values ('Grotte de l''Apothicairerie','Port Cotton',20);
insert into LesMONUMENTs values ('Citadelle Vauban','Port Maria',0);
insert into LesMONUMENTs values ('Elizabeth Gardens','Sissinghurst',15);
insert into LesMONUMENTs values ('Stonehenge Prehistoric Spot','Salisbury',50);
insert into LesMONUMENTs values ('Roman baths','Bath',35);
insert into LesMONUMENTs values ('Palais Royal de Queluz','Lisbonne',120);
insert into LesMONUMENTs values ('Monastere des Jeronimos','Lisbonne',36);
insert into LesMONUMENTs values ('Chateau de Saint Georges','Lisbonne',45);
insert into LesMONUMENTs values ('Monastere Cysterien d''Alcobaca','Leiria',36);
insert into LesMONUMENTs values ('Cathedrale','Porto',0);
insert into LesMONUMENTs values ('Palais de la Bourse','Porto',90);
insert into LesMONUMENTs values ('Palais des Ducs de Braganda','Vila Real',120);
insert into LesMONUMENTs values ('Musee Graovasco','Urgeirica',10);
insert into LesMONUMENTs values ('Universite de Santa Clara','Fatima',0);
insert into LesMONUMENTs values ('Chateau des Templiers','Fatima',20);
insert into LesMONUMENTs values ('Usine de Tapisseries','Evora',0);
insert into LesMONUMENTs values ('Chapelle des Os','Evora',0);
insert into LesMONUMENTs values ('Maison Royale de Braganda','Evora',120);
insert into LesMONUMENTs values ('Couvent Daconciecao','Faro',20);
insert into LesMONUMENTs values ('Forteresse Sagres','Faro',0);
insert into LesMONUMENTs values ('Piazza Venezia','Rome',0);
insert into LesMONUMENTs values ('La Fontaine de Trevi','Rome',0);
insert into LesMONUMENTs values ('La Basilique Saint Pierre','Rome',0);
insert into LesMONUMENTs values ('Le Pantheon','Rome',40);
insert into LesMONUMENTs values ('Le Colisee','Rome',40);
insert into LesMONUMENTs values ('Le Cirque de Maxime','Rome',40);
insert into LesMONUMENTs values ('Eglise Santa Maria del Fiore','Florence',0);
insert into LesMONUMENTs values ('Campanile de Giotto','Florence',30);
insert into LesMONUMENTs values ('Baptistere','Florence',30);
insert into LesMONUMENTs values ('Mausolee de Galla Placidia','Ravenne',30);
insert into LesMONUMENTs values ('Sant Apolinnare Nuovo','Ravenne',30);
insert into LesMONUMENTs values ('Piazza de Signori','Verone',0);
insert into LesMONUMENTs values ('Casa de Capuleti','Verone',40);
insert into LesMONUMENTs values ('Piazza San Marco','Venise',0);
insert into LesMONUMENTs values ('La Basilique San Marco','Venise',30);
insert into LesMONUMENTs values ('Le palais des Doges','Venise',30);
insert into LesMONUMENTs values ('Le pont des Soupirs','Venise',0);
insert into LesMONUMENTs values ('Le Grand Canal','Venise',40);
insert into LesMONUMENTs values ('Ruines','Pompei',0);
insert into LesMONUMENTs values ('Site Grec de Paestum','Cosenza',36);
insert into LesMONUMENTs values ('Tombeau d''Isabelle d''Aragon','Cosenza',50);
insert into LesMONUMENTs values ('Cathedrale Roccella','Catanzaro',0);
insert into LesMONUMENTs values ('Triangle de Pythagore','Metaponto',0);
insert into LesMONUMENTs values ('Le Dome','Lecce',50);
insert into LesMONUMENTs values ('Basilique San Croce','Lecce',0);
insert into LesMONUMENTs values ('Basilique de San Nicolas','Bari',0);
insert into LesMONUMENTs values ('Chateau de Frederic II','Bari',80);
insert into LesMONUMENTs values ('Arc du Trajan','Benevento',0);
insert into LesMONUMENTs values ('Theatre','Benevento',50);
insert into LesMONUMENTs values ('Palais Royal','Caserte',50);
insert into LesMONUMENTs values ('Le Grand Serre Che','Briancon',145);
insert into LesMONUMENTs values ('Le Prorel','Briancon',95);
insert into LesMONUMENTs values ('Le Monetier les Bains','Briancon',95);
insert into LesMONUMENTs values ('Serre Chevalier','Briancon',120);
insert into LesMONUMENTs values ('Puy Saint Vincent','Briancon',110);
insert into LesMONUMENTs values ('Montgenevre','Briancon',110);
insert into LesCIRCUITS values (1,'Paris','Paris',1160);
insert into LesCIRCUITS values (2,'Paris','Paris',1160);
insert into LesCIRCUITS values (3,'Paris','Paris',1040);
insert into LesCIRCUITS values (4,'Paris','Paris',1270);
insert into LesCIRCUITS values (5,'Lyon','Lyon',2740);
insert into LesCIRCUITS values (6,'Paris','Paris',2520);
insert into LesCIRCUITS values (7,'Quiberon','Hoedic',2500);
insert into LesCIRCUITS values (8,'Clermont Ferrand','Besse',2140);
insert into LesCIRCUITS values (9,'Paris','Paris',5700);
insert into LesCIRCUITS values (10,'Shannon','Cork',6170);
insert into LesCIRCUITS values (11,'Shannon','Shannon',6270);
insert into LesCIRCUITS values (12,'Dublin','Dublin',6170);
insert into LesCIRCUITS values (13,'Paris','Paris',18590);
insert into LesCIRCUITS values (14,'Reykjavik','Reykjavik',7700);
insert into LesCIRCUITS values (15,'Paris','Paris',8560);
insert into LesCIRCUITS values (16,'Paris','Paris',10180);
insert into LesCIRCUITS values (17,'Lisbonne','Lisbonne',3990);
insert into LesCIRCUITS values (18,'Paris','Paris',6690);
insert into LesCIRCUITS values (19,'Rome','Rome',10400);
insert into LesCIRCUITS values (21,'Paris','Rome',15000);
insert into LesCIRCUITS values (20,'Briancon','Briancon',450);
insert into LesETAPEs values (1,1,'Londres',2);
insert into LesETAPEs values (2,1,'Londres',2);
insert into LesETAPEs values (3,1,'Amsterdam',3);
insert into LesETAPEs values (4,1,'Amsterdam',4);
insert into LesETAPEs values (5,1,'Venise',5);
insert into LesETAPEs values (6,1,'Venise',4);
insert into LesETAPEs values (7,1,'Quiberon',2);
insert into LesETAPEs values (7,2,'Port Cotton',2);
insert into LesETAPEs values (7,3,'Port Maria',1);
insert into LesETAPEs values (7,4,'Houat',1);
insert into LesETAPEs values (7,5,'Hoedic',1);
insert into LesETAPEs values (8,1,'Laschamps',2);
insert into LesETAPEs values (8,2,'Orcival',3);
insert into LesETAPEs values (8,3,'Besse',2);
insert into LesETAPEs values (9,1,'Sissinghurst',2);
insert into LesETAPEs values (9,2,'Salisbury',2);
insert into LesETAPEs values (9,3,'Exeter',1);
insert into LesETAPEs values (9,4,'St Ives',1);
insert into LesETAPEs values (9,5,'Bath',1);
insert into LesETAPEs values (9,6,'Londres',1);
insert into LesETAPEs values (10,1,'Shannon',1);
insert into LesETAPEs values (10,2,'Dingle',3);
insert into LesETAPEs values (10,3,'Killarney',2);
insert into LesETAPEs values (10,4,'Kenmare',1);
insert into LesETAPEs values (10,5,'Glengariff',3);
insert into LesETAPEs values (10,6,'Bantry',2);
insert into LesETAPEs values (10,7,'Cork',1);
insert into LesETAPEs values (11,1,'Galway',2);
insert into LesETAPEs values (11,2,'Clifden',2);
insert into LesETAPEs values (11,3,'Cleggan',2);
insert into LesETAPEs values (11,4,'Leenan',1);
insert into LesETAPEs values (11,5,'Louisburgh',2);
insert into LesETAPEs values (11,6,'Westport',2);
insert into LesETAPEs values (11,7,'Ennis',2);
insert into LesETAPEs values (12,1,'Donegal',1);
insert into LesETAPEs values (12,2,'Killibegs',2);
insert into LesETAPEs values (12,3,'Carrick',2);
insert into LesETAPEs values (12,4,'Ardara',2);
insert into LesETAPEs values (12,5,'Dungloe',2);
insert into LesETAPEs values (12,6,'Letterkenny',1);
insert into LesETAPEs values (12,7,'Dublin',2);
insert into LesETAPEs values (13,1,'Copenhague',4);
insert into LesETAPEs values (13,2,'Jakobshavn',2);
insert into LesETAPEs values (13,3,'Christianshab',2);
insert into LesETAPEs values (13,4,'Godhavn',1);
insert into LesETAPEs values (13,5,'Disko',2);
insert into LesETAPEs values (13,6,'Egedesmine',1);
insert into LesETAPEs values (13,7,'Holsteinborg',4);
insert into LesETAPEs values (13,8,'Sondre',2);
insert into LesETAPEs values (14,1,'Reykjavik',3);
insert into LesETAPEs values (14,2,'Gullfoss',2);
insert into LesETAPEs values (14,3,'Geysir',2);
insert into LesETAPEs values (14,4,'Hveravellir',2);
insert into LesETAPEs values (14,5,'Akureyri',2);
insert into LesETAPEs values (14,6,'Myvatn',2);
insert into LesETAPEs values (14,7,'Asbyrgi',2);
insert into LesETAPEs values (15,1,'Reykjavik',2);
insert into LesETAPEs values (15,2,'Reykholt',2);
insert into LesETAPEs values (15,3,'Husavik',2);
insert into LesETAPEs values (15,4,'Godafoss',2);
insert into LesETAPEs values (16,1,'Helsinky',2);
insert into LesETAPEs values (16,2,'Ylivieska',1);
insert into LesETAPEs values (16,3,'Tornio',1);
insert into LesETAPEs values (16,4,'Cap Nord',1);
insert into LesETAPEs values (16,5,'Hammerfest',1);
insert into LesETAPEs values (16,6,'Inari',1);
insert into LesETAPEs values (16,7,'Salla',1);
insert into LesETAPEs values (16,8,'Saarijarvi',2);
insert into LesETAPEs values (17,1,'Lisbonne',2);
insert into LesETAPEs values (17,2,'Leiria',1);
insert into LesETAPEs values (17,3,'Porto',2);
insert into LesETAPEs values (17,4,'Vila Real',2);
insert into LesETAPEs values (17,5,'Urgeirica',1);
insert into LesETAPEs values (17,6,'Fatima',2);
insert into LesETAPEs values (17,7,'Castelo de Vide',1);
insert into LesETAPEs values (17,8,'Evora',2);
insert into LesETAPEs values (17,9,'Faro',1);
insert into LesETAPEs values (18,1,'Rome',3);
insert into LesETAPEs values (18,2,'Florence',3);
insert into LesETAPEs values (18,3,'Ravenne',2);
insert into LesETAPEs values (18,4,'Verone',1);
insert into LesETAPEs values (18,5,'Venise',3);
insert into LesETAPEs values (19,1,'Rome',2);
insert into LesETAPEs values (19,2,'Naples',1);
insert into LesETAPEs values (19,3,'Pompei',1);
insert into LesETAPEs values (19,4,'Capri',1);
insert into LesETAPEs values (19,5,'Salerne',1);
insert into LesETAPEs values (19,6,'Cosenza',2);
insert into LesETAPEs values (19,7,'Catanzaro',1);
insert into LesETAPEs values (19,8,'Metaponto',1);
insert into LesETAPEs values (19,9,'Lecce',1);
insert into LesETAPEs values (19,10,'Brindisi',1);
insert into LesETAPEs values (19,11,'Bari',2);
insert into LesETAPEs values (19,12,'Benevento',2);
insert into LesETAPEs values (19,13,'Caserte',2);
insert into LesETAPEs values (20,1,'Briancon',6);
insert into LesETAPEs values (21,1,'Helsinky',2);
insert into LesETAPEs values (21,2,'Ylivieska',1);
insert into LesETAPEs values (21,3,'Tornio',1);
insert into LesETAPEs values (21,4,'Cap Nord',1);
insert into LesETAPEs values (21,5,'Hammerfest',1);
insert into LesETAPEs values (21,6,'Inari',1);
insert into LesETAPEs values (21,7,'Salla',1);
insert into LesETAPEs values (21,8,'Saarijarvi',2);
insert into LesETAPEs values (21,9,'Rome',3);
insert into LesETAPEs values (21,10,'Florence',3);
insert into LesETAPEs values (21,11,'Ravenne',2);
insert into LesETAPEs values (21,12,'Verone',1);
insert into LesETAPEs values (21,13,'Venise',3);
insert into LesPROGRAMMATIONs values (1,to_date ('04-01-2010','DD-MM-YYYY'),34);
insert into LesPROGRAMMATIONs values (1,to_date ('24-07-2010','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (1,to_date ('21-07-2010','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (2,to_date ('05-09-2010','DD-MM-YYYY'),30);
insert into LesPROGRAMMATIONs values (6,to_date ('06-09-2010','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (7,to_date ('31-10-2010','DD-MM-YYYY'),39);
insert into LesPROGRAMMATIONs values (10,to_date ('01-01-2010','DD-MM-YYYY'),80);
insert into LesPROGRAMMATIONs values (11,to_date ('29-05-2010','DD-MM-YYYY'),34);
insert into LesPROGRAMMATIONs values (18,to_date ('30-07-2010','DD-MM-YYYY'),90);
insert into LesPROGRAMMATIONs values (21,to_date ('15-01-2010','DD-MM-YYYY'),66);
insert into LesPROGRAMMATIONs values (1,to_date ('04-02-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (1,to_date ('06-02-2010','DD-MM-YYYY'),34);
insert into LesPROGRAMMATIONs values (2,to_date ('05-02-2010','DD-MM-YYYY'),99);
insert into LesPROGRAMMATIONs values (2,to_date ('06-01-2010','DD-MM-YYYY'),02);
insert into LesPROGRAMMATIONs values (2,to_date ('07-01-2010','DD-MM-YYYY'),34);
insert into LesPROGRAMMATIONs values (2,to_date ('06-02-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (3,to_date ('03-07-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (3,to_date ('24-12-2009','DD-MM-YYYY'),13);
insert into LesPROGRAMMATIONs values (3,to_date ('31-12-2009','DD-MM-YYYY'),45);
insert into LesPROGRAMMATIONs values (4,to_date ('06-11-2010','DD-MM-YYYY'),18);
insert into LesPROGRAMMATIONs values (4,to_date ('06-08-2010','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (4,to_date ('30-06-2010','DD-MM-YYYY'),99);
insert into LesPROGRAMMATIONs values (4,to_date ('31-08-2010','DD-MM-YYYY'),01);
insert into LesPROGRAMMATIONs values (5,to_date ('06-11-2010','DD-MM-YYYY'),46);
insert into LesPROGRAMMATIONs values (5,to_date ('31-08-2010','DD-MM-YYYY'),66);
insert into LesPROGRAMMATIONs values (6,to_date ('06-02-2010','DD-MM-YYYY'),22);
insert into LesPROGRAMMATIONs values (6,to_date ('16-11-2010','DD-MM-YYYY'),34);
insert into LesPROGRAMMATIONs values (6,to_date ('06-10-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (7,to_date ('31-08-2010','DD-MM-YYYY'),56);
insert into LesPROGRAMMATIONs values (7,to_date ('16-12-2009','DD-MM-YYYY'),52);
insert into LesPROGRAMMATIONs values (7,to_date ('06-01-2010','DD-MM-YYYY'),01);
insert into LesPROGRAMMATIONs values (7,to_date ('26-02-2010','DD-MM-YYYY'),01);
insert into LesPROGRAMMATIONs values (8,to_date ('31-08-2010','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (8,to_date ('16-02-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (8,to_date ('21-02-2010','DD-MM-YYYY'),13);
insert into LesPROGRAMMATIONs values (8,to_date ('21-07-2010','DD-MM-YYYY'),14);
insert into LesPROGRAMMATIONs values (8,to_date ('24-12-2009','DD-MM-YYYY'),18);
insert into LesPROGRAMMATIONs values (8,to_date ('31-12-2009','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (8,to_date ('28-02-2010','DD-MM-YYYY'),11);
insert into LesPROGRAMMATIONs values (8,to_date ('14-02-2010','DD-MM-YYYY'),01);
insert into LesPROGRAMMATIONs values (8,to_date ('16-05-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (8,to_date ('26-04-2010','DD-MM-YYYY'),31);
insert into LesPROGRAMMATIONs values (8,to_date ('14-11-2010','DD-MM-YYYY'),03);
insert into LesPROGRAMMATIONs values (9,to_date ('06-02-2010','DD-MM-YYYY'),03);
insert into LesPROGRAMMATIONs values (9,to_date ('30-10-2010','DD-MM-YYYY'),31);
insert into LesPROGRAMMATIONs values (10,to_date ('21-01-2010','DD-MM-YYYY'),45);
insert into LesPROGRAMMATIONs values (10,to_date ('11-02-2010','DD-MM-YYYY'),30);
insert into LesPROGRAMMATIONs values (10,to_date ('28-02-2010','DD-MM-YYYY'),22);
insert into LesPROGRAMMATIONs values (11,to_date ('28-02-2010','DD-MM-YYYY'),03);
insert into LesPROGRAMMATIONs values (11,to_date ('06-02-2010','DD-MM-YYYY'),13);
insert into LesPROGRAMMATIONs values (11,to_date ('30-06-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (12,to_date ('06-02-2010','DD-MM-YYYY'),190);
insert into LesPROGRAMMATIONs values (13,to_date ('31-05-2010','DD-MM-YYYY'),03);
insert into LesPROGRAMMATIONs values (13,to_date ('30-04-2010','DD-MM-YYYY'),15);
insert into LesPROGRAMMATIONs values (13,to_date ('30-06-2010','DD-MM-YYYY'),52);
insert into LesPROGRAMMATIONs values (13,to_date ('31-12-2010','DD-MM-YYYY'),44);
insert into LesPROGRAMMATIONs values (13,to_date ('31-12-2009','DD-MM-YYYY'),51);
insert into LesPROGRAMMATIONs values (13,to_date ('01-01-2010','DD-MM-YYYY'),68);
insert into LesPROGRAMMATIONs values (13,to_date ('06-02-2010','DD-MM-YYYY'),99);
insert into LesPROGRAMMATIONs values (13,to_date ('06-05-2010','DD-MM-YYYY'),60);
insert into LesPROGRAMMATIONs values (14,to_date ('06-07-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (14,to_date ('26-07-2010','DD-MM-YYYY'),25);
insert into LesPROGRAMMATIONs values (15,to_date ('06-02-2010','DD-MM-YYYY'),11);
insert into LesPROGRAMMATIONs values (15,to_date ('31-08-2010','DD-MM-YYYY'),18);
insert into LesPROGRAMMATIONs values (16,to_date ('31-08-2010','DD-MM-YYYY'),17);
insert into LesPROGRAMMATIONs values (16,to_date ('06-02-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (16,to_date ('06-01-2010','DD-MM-YYYY'),03);
insert into LesPROGRAMMATIONs values (17,to_date ('31-12-2010','DD-MM-YYYY'),03);
insert into LesPROGRAMMATIONs values (17,to_date ('06-02-2010','DD-MM-YYYY'),03);
insert into LesPROGRAMMATIONs values (17,to_date ('16-02-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (17,to_date ('26-02-2010','DD-MM-YYYY'),34);
insert into LesPROGRAMMATIONs values (18,to_date ('30-04-2010','DD-MM-YYYY'),15);
insert into LesPROGRAMMATIONs values (18,to_date ('06-12-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (18,to_date ('06-10-2010','DD-MM-YYYY'),40);
insert into LesPROGRAMMATIONs values (19,to_date ('06-09-2010','DD-MM-YYYY'),20);
insert into LesPROGRAMMATIONs values (19,to_date ('16-09-2010','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (19,to_date ('05-08-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (19,to_date ('10-12-2010','DD-MM-YYYY'),28);
insert into LesPROGRAMMATIONs values (19,to_date ('20-12-2010','DD-MM-YYYY'),11);
insert into LesPROGRAMMATIONs values (19,to_date ('06-02-2010','DD-MM-YYYY'),10);
insert into LesPROGRAMMATIONs values (19,to_date ('15-04-2010','DD-MM-YYYY'),45);
insert into LesPROGRAMMATIONs values (20,to_date ('01-04-2010','DD-MM-YYYY'),13);
insert into LesPROGRAMMATIONs values (20,to_date ('02-02-2010','DD-MM-YYYY'),14);
insert into LesPROGRAMMATIONs values (20,to_date ('22-12-2009','DD-MM-YYYY'),18);
insert into LesPROGRAMMATIONs values (20,to_date ('20-01-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (20,to_date ('27-01-2010','DD-MM-YYYY'),05);
insert into LesPROGRAMMATIONs values (20,to_date ('03-04-2010','DD-MM-YYYY'),87);
insert into LesPROGRAMMATIONs values (20,to_date ('06-02-2010','DD-MM-YYYY'),01);
insert into LesPROGRAMMATIONs values (21,to_date ('26-02-2010','DD-MM-YYYY'),12);
insert into LesPROGRAMMATIONs values (21,to_date ('06-04-2010','DD-MM-YYYY'),99);
insert into LesPROGRAMMATIONs values (21,to_date ('25-01-2010','DD-MM-YYYY'),03);
insert into LesRESERVATIONs values (03,'Asterix',01,to_date ('04-02-2010','DD-MM-YYYY'),04);
insert into LesRESERVATIONs values (04,'Obelix',12,to_date ('06-02-2010','DD-MM-YYYY'),78);
insert into LesRESERVATIONs values (01,'Donald',10,to_date ('01-01-2010','DD-MM-YYYY'),02);
insert into LesRESERVATIONs values (02,'Picsou',09,to_date ('30-10-2010','DD-MM-YYYY'),10);
insert into LesRESERVATIONs values (05,'Ordralphabetix',20,to_date ('27-01-2010','DD-MM-YYYY'),05);
insert into LesRESERVATIONs values (06,'Corto',18,to_date ('06-12-2010','DD-MM-YYYY'),11);
insert into LesRESERVATIONs values (21,'Mafalda',19,to_date ('15-04-2010','DD-MM-YYYY'),20);
insert into LesRESERVATIONs values (22,'Mafalda',05,to_date ('06-11-2010','DD-MM-YYYY'),43);
insert into LesRESERVATIONs values (23,'Donald',21,to_date ('15-01-2010','DD-MM-YYYY'),10);
insert into LesRESERVATIONs values (07,'Bidochon',13,to_date ('31-12-2009','DD-MM-YYYY'),05);
insert into LesRESERVATIONs values (13,'Bonemine',14,to_date ('26-07-2010','DD-MM-YYYY'),21);
insert into LesRESERVATIONs values (14,'Nestor Burma',12,to_date ('06-02-2010','DD-MM-YYYY'),01);
insert into LesRESERVATIONs values (15,'Mafalda',13,to_date ('31-12-2009','DD-MM-YYYY'),43);
insert into LesRESERVATIONs values (16,'GrosseBaf',04,to_date ('30-06-2010','DD-MM-YYYY'),88);
insert into LesRESERVATIONs values (17,'Picsou',08,to_date ('14-02-2010','DD-MM-YYYY'),01);
insert into LesRESERVATIONs values (18,'Picsou',01,to_date ('21-07-2010','DD-MM-YYYY'),10);
insert into LesRESERVATIONs values (19,'Asterix',21,to_date ('15-01-2010','DD-MM-YYYY'),14);
insert into LesRESERVATIONs values (08,'Milou',08,to_date ('16-02-2010','DD-MM-YYYY'),01);
insert into LesRESERVATIONs values (09,'La Castafiore',08,to_date ('28-02-2010','DD-MM-YYYY'),07);
insert into LesRESERVATIONs values (10,'Milou',02,to_date ('05-02-2010','DD-MM-YYYY'),99);
insert into LesRESERVATIONs values (11,'Jerry',03,to_date ('03-07-2010','DD-MM-YYYY'),11);
insert into LesRESERVATIONs values (12,'Donald',07,to_date ('16-12-2009','DD-MM-YYYY'),51);
insert into LesRESERVATIONs values (20,'Ordralphabetix',05,to_date ('31-08-2010','DD-MM-YYYY'),02);
insert into LesRESERVATIONs values (24,'Mafalda',13,to_date ('01-01-2010','DD-MM-YYYY'),05);
insert into LesRESERVATIONs values (25,'Nestor Burma',13,to_date ('01-01-2010','DD-MM-YYYY'),05);
insert into LesRESERVATIONs values (26,'Ordralphabetix',10,to_date ('11-02-2010','DD-MM-YYYY'),02);
insert into LesRESERVATIONs values (27,'Nestor Burma',2,to_date ('07-01-2010','DD-MM-YYYY'),25);


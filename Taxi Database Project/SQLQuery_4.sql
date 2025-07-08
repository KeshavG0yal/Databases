CREATE DATABASE PrivateTransports;
GO

USE PrivateTransports;
GO

CREATE TABLE PrivateTransportationService ( 
    ServiceID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);


INSERT INTO PrivateTransportationService (Name)
VALUES ('Uber'),
       ('Lyft'),
       ('Bolt'),
       ('DiDi'),
       ('Ola');


CREATE TABLE Driver (
   DriverID  INT IDENTITY(1,1) PRIMARY KEY,  
   Name      VARCHAR(50) NOT NULL,
   Email     VARCHAR(100) NOT NULL UNIQUE,
   Phone     VARCHAR(15) NOT NULL UNIQUE,
   Rating    DECIMAL(3,2) NOT NULL CHECK (Rating BETWEEN 0 AND 5),
   ServiceID INT NOT NULL,
   FOREIGN KEY (ServiceID) REFERENCES PrivateTransportationService(ServiceID)
);

INSERT INTO Driver (Name, Email, Phone, Rating, ServiceID) VALUES 
('Eustace','erylands0@nytimes.com','867-602-7213',3,3),
('Vivyan','vbanbrigge1@sbwire.com','376-153-8284',5,1),
('Chantalle','cbeedham2@sohu.com','239-689-0992',1,5),
('Joshuah','jromao3@google.de','279-614-5276',1,1),
('Ulrike','ugratton4@sfgate.com','404-481-2516',4,5),
('Helge','hgossage5@loc.gov','623-721-3292',1,3),
('Mile','mcornelissen6@twitter.com','569-510-9249',4,4),
('Erin','etart7@hc360.com','456-122-8831',2,5),
('Joannes','jfilshin8@dedecms.com','128-106-1027',2,1),
('Maurine','mdarling9@comcast.net','835-744-7653',3,5),
('Holly','hstotta@indiegogo.com','417-621-4104',1,3),
('Tamarah','tkemittb@vistaprint.com','140-226-2218',5,3),
('Aldin','aduckworthc@163.com','913-393-2076',1,1),
('John','jemblind@tinyurl.com','918-389-6140',2,5),
('Olympe','ostearne@cpanel.net','906-148-9897',1,4),
('Regine','rhollingsbyf@cnet.com','514-757-7156',0,3),
('Rosanna','rvassg@sfgate.com','421-789-8447',3,1),
('Randy','rgoodgerh@forbes.com','732-411-3257',4,1),
('Hadleigh','hsiddonsi@springer.com','966-868-9531',2,2),
('Pietro','phallamj@amazonaws.com','233-482-5747',0,5),
('Lavena','lglowachak@eepurl.com','899-419-2679',5,3),
('Natividad','nirwinl@biblegateway.com','339-257-1239',3,4),
('Jan','jrichardesm@macromedia.com','229-956-1238',5,1),
('Verna','vraesiden@soup.io','613-251-2359',1,2),
('Cherida','cmaniloo@stumbleupon.com','483-203-3845',0,4),
('Ragnar','rlinturnp@guardian.co.uk','583-209-5178',4,5),
('Edan','ebolanq@yelp.com','173-151-2728',3,2),
('Alanah','aklossekr@marketwatch.com','700-973-5160',5,2),
('Cymbre','cjansiks@ask.com','151-792-8666',0,5),
('Neron','nmousert@comsenz.com','645-573-1085',3,5),
('Lilith','lcoyishu@whitehouse.gov','181-873-2356',5,5),
('Loralyn','ldedamv@g.co','319-500-3785',2,3),
('Loni','lmutloww@twitpic.com','175-544-2255',4,5),
('Gaylor','gbertenshawx@sphinn.com','119-337-1310',3,5),
('Halley','hdavleyy@gizmodo.com','878-477-1192',3,4),
('Olav','odysonz@apple.com','610-664-8519',4,4),
('Camila','cforrestill10@ning.com','236-536-1360',4,2),
('Ernestus','emcorkil11@prweb.com','152-237-8219',4,4),
('Eleanore','edriffill12@ft.com','747-200-8831',5,4),
('Erina','eashwood13@list-manage.com','170-211-3617',2,4),
('Codi','ccheston14@nydailynews.com','328-904-9665',3,4),
('Brod','babbis15@netlog.com','178-909-1518',5,3),
('Winfred','wmerryfield16@wp.com','201-982-6260',2,2),
('Algernon','ahalfacre17@army.mil','180-683-9930',1,5),
('Dorthea','dgleed18@eepurl.com','507-433-4619',5,1),
('Reynold','rmanzell19@sciencedirect.com','774-451-8913',0,4),
('Ermin','eklinck1a@earthlink.net','896-776-5512',5,3),
('Aaron','aschutze1b@bandcamp.com','814-542-1813',4,2),
('Sheilakathryn','stettley1c@ow.ly','317-212-1680',4,4),
('Demeter','dhazeldean1d@wix.com','627-358-6614',1,2),
('Ebony','eparish1e@wiley.com','147-359-8397',3,5),
('Saraann','slowthorpe1f@blog.com','156-416-8892',3,1),
('Glory','gwhicher1g@scientificamerican.com','650-596-5332',3,2),
('Garry','gballston1h@slate.com','775-151-8549',1,3),
('Pauli','paylmore1i@oakley.com','101-980-5011',3,4),
('Diandra','dabrahams1j@imdb.com','916-547-1796',3,4),
('Alexio','agerraty1k@hhs.gov','698-704-9262',4,4),
('Maurine','mcribbin1l@apache.org','601-274-4736',5,2),
('Rozalin','rpenvarden1m@yellowpages.com','333-533-2551',3,4),
('Tyrone','tupcott1n@shareasale.com','405-816-0729',0,5),
('Bibbie','blob1o@gizmodo.com','514-345-2849',3,2),
('Saree','skolyagin1p@ucoz.ru','267-494-0962',4,2),
('Tim','tmelly1q@ovh.net','690-662-1944',1,5),
('Mireille','msillitoe1r@elpais.com','945-196-5249',1,1),
('Gunilla','gstapforth1s@51.la','323-785-0568',0,3),
('Pincas','pdevorill1t@eepurl.com','617-383-9333',3,1),
('Nealon','nvogele1u@biglobe.ne.jp','186-756-5213',2,5),
('Sorcha','sgaukroger1v@biblegateway.com','834-946-7759',1,3),
('Goldarina','gjuschke1w@bbc.co.uk','732-650-7854',4,1),
('Baily','bwassell1x@upenn.edu','208-223-8250',1,1),
('Veronike','vbatten1y@businessweek.com','624-633-6767',3,3),
('Massimiliano','mmorgan1z@bloglovin.com','119-588-8492',0,3),
('Wileen','wsalan20@statcounter.com','131-592-6748',2,5),
('Janifer','jbanford21@slideshare.net','388-496-1162',5,4),
('Wernher','wimlaw22@theglobeandmail.com','823-514-4066',0,3),
('Joycelin','jstpierre23@biblegateway.com','301-942-3572',5,1),
('Baird','bfant24@nih.gov','263-476-0259',5,3),
('Allix','aburgot25@netlog.com','397-200-6978',1,5),
('Harley','hfilippozzi26@youtube.com','333-212-6789',0,3),
('Larissa','lwickrath27@pinterest.com','796-854-3613',2,4),
('Sisile','snoice28@surveymonkey.com','949-795-6091',1,1),
('Lucy','lmcconville29@thetimes.co.uk','769-329-0834',5,4),
('Callean','cbeaton2a@businesswire.com','204-379-1775',0,1),
('Ariela','aramsell2b@webeden.co.uk','470-947-9862',5,3),
('Stevana','smercy2c@cpanel.net','823-298-8908',0,4),
('Jean','jbullock2d@furl.net','121-454-5812',0,5),
('Marquita','mborg2e@google.com.hk','255-810-7693',1,4),
('Gerty','gioannou2f@amazon.co.uk','190-680-3029',1,4),
('Rahal','rboyles2g@marriott.com','487-565-3072',3,4),
('Poul','pchetwind2h@howstuffworks.com','419-969-7886',3,3),
('Adrianna','awarlow2i@blinklist.com','514-383-3205',4,5),
('Emyle','evanyutin2j@npr.org','602-652-4824',5,2),
('Gelya','gsandal2k@blinklist.com','464-113-7230',3,5),
('Romy','rkornyshev2l@narod.ru','694-882-8251',0,1),
('Arch','aingerfield2m@wikispaces.com','588-666-3157',1,5),
('Brenna','bbyham2n@slideshare.net','274-191-3975',1,3),
('Gaile','gyeldham2o@discuz.net','410-586-2648',3,1),
('Sigrid','snellen2p@facebook.com','135-394-2830',0,1),
('Anatollo','aleppingwell2q@independent.co.uk','846-853-0545',0,1),
('Yvor','ytunn2r@yelp.com','660-388-2416',1,3);


CREATE TABLE Passenger(
   PassengerID INTEGER  NOT NULL PRIMARY KEY 
  ,Name        VARCHAR(10) NOT NULL
  ,Email       VARCHAR(31) NOT NULL
  ,Phone       VARCHAR(12) NOT NULL
  ,Preferences VARCHAR(10) NOT NULL
);
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (1,'Boyce','bpickrill0@state.tx.us','903-882-5116','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (2,'Shaun','smacdonogh1@jiathis.com','209-687-9923','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (3,'Evan','estockell2@alexa.com','736-212-0296','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (4,'Cece','cannon3@gravatar.com','896-399-7619','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (5,'Rob','rhambatch4@telegraph.co.uk','564-699-5661','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (6,'Lazare','lwharlton5@yelp.com','808-833-1397','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (7,'Uriel','urundall6@whitehouse.gov','882-801-0583','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (8,'Sophi','ssenchenko7@nifty.com','965-168-4464','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (9,'Rochester','rlerhinan8@w3.org','716-574-9890','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (10,'Saudra','sfennick9@liveinternet.ru','993-576-6891','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (11,'Gordon','galama@t-online.de','709-350-4894','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (12,'Thurstan','trelfeb@jigsy.com','379-365-3945','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (13,'Lena','lgoacherc@patch.com','683-925-1856','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (14,'Joela','jmoxsteadd@marketwatch.com','498-608-3730','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (15,'Mala','mkinclae@ftc.gov','778-391-7110','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (16,'Winn','wpennerf@t-online.de','291-583-5019','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (17,'Wendeline','wgoodleyg@omniture.com','796-574-6845','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (18,'Obidiah','obingleyh@sbwire.com','976-836-0570','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (19,'Duff','dbezemeri@si.edu','760-125-3251','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (20,'Andria','aaleksichj@psu.edu','398-979-1303','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (21,'Elroy','emciank@dailymail.co.uk','822-902-3154','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (22,'Deni','djeaneaul@jigsy.com','562-121-9690','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (23,'Karlis','kmegroffm@umn.edu','587-368-0514','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (24,'Sutherland','sedowesn@biblegateway.com','235-187-3390','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (25,'Anne','amcilroyo@webs.com','923-669-4883','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (26,'Celka','cgedgep@angelfire.com','109-173-4875','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (27,'Lucienne','lreeksq@istockphoto.com','359-960-6700','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (28,'Vachel','vbalmadierr@baidu.com','180-991-4398','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (29,'Pen','ppotticarys@techcrunch.com','361-353-5868','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (30,'Aigneis','alegerwoodt@cargocollective.com','253-260-5455','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (31,'Vikky','vwoollendsu@aboutads.info','724-493-4114','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (32,'Nettie','nnorcliffev@state.tx.us','379-469-3797','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (33,'Aguistin','adeatonw@altervista.org','773-587-8231','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (34,'Nanine','nletrangex@devhub.com','713-267-5984','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (35,'Sol','snormanvelly@so-net.ne.jp','409-482-4854','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (36,'Paulina','plivingstonz@tinyurl.com','927-611-1836','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (37,'Davidson','dfulstow10@theglobeandmail.com','938-644-6748','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (38,'Brion','bdowson11@globo.com','292-431-7728','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (39,'Jesse','jbaignard12@icio.us','494-258-2519','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (40,'Germaine','gdommerque13@google.it','821-400-4885','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (41,'Tove','tisacoff14@ted.com','300-723-2584','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (42,'Frederico','fregitz15@wix.com','589-207-3917','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (43,'Ingrim','iwilley16@cdc.gov','904-192-2671','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (44,'Beatrix','bparadyce17@noaa.gov','281-325-3070','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (45,'Magdalene','mrylstone18@sourceforge.net','202-918-7900','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (46,'Diana','dslyme19@pcworld.com','971-612-2054','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (47,'Pattie','psilverlock1a@nymag.com','322-165-6995','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (48,'Blayne','bmaccauley1b@last.fm','847-212-0485','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (49,'Kaylil','kcawthron1c@yale.edu','254-960-6880','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (50,'Tami','tjeandon1d@sogou.com','595-592-1731','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (51,'Morgun','mmiskelly1e@i2i.jp','619-151-7647','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (52,'Harmonie','hocarroll1f@reverbnation.com','368-122-2402','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (53,'Udell','ugrendon1g@theguardian.com','927-146-4321','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (54,'Bertha','bgillman1h@moonfruit.com','799-101-3208','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (55,'Julia','jbagott1i@shinystat.com','826-623-2669','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (56,'Winona','wriall1j@fc2.com','982-187-5456','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (57,'Jenilee','jbuscombe1k@washington.edu','642-626-0438','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (58,'Melisent','mdobey1l@t-online.de','798-796-4646','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (59,'Carling','clathwell1m@fema.gov','185-309-2686','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (60,'Eadith','estuttman1n@cam.ac.uk','642-676-0302','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (61,'Garrett','grusbridge1o@barnesandnoble.com','450-542-3995','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (62,'Gillian','gdavidovics1p@prweb.com','602-482-2089','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (63,'Leanor','lcolter1q@ehow.com','812-966-4292','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (64,'Solomon','sclemot1r@upenn.edu','213-399-3321','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (65,'Star','smance1s@google.cn','900-795-6313','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (66,'Hinda','hchantler1t@timesonline.co.uk','781-772-9363','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (67,'Gretel','gmarsh1u@marketwatch.com','939-617-3908','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (68,'Rozina','rgiuroni1v@dyndns.org','357-844-6371','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (69,'Ab','abenedick1w@ocn.ne.jp','229-438-1214','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (70,'Dotti','ddundon1x@google.co.jp','212-583-2146','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (71,'Dov','dviollet1y@vistaprint.com','964-432-1672','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (72,'Mavra','mkesten1z@addthis.com','736-249-0538','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (73,'Trenna','tblance20@icio.us','104-526-8226','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (74,'Maddalena','mrawcliffe21@netlog.com','291-959-7220','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (75,'Mohandis','mcommusso22@yahoo.com','885-408-8209','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (76,'Lesli','lfattori23@quantcast.com','954-487-6987','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (77,'Creigh','cheed24@virginia.edu','664-569-7976','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (78,'Rodie','rmueller25@unblog.fr','817-767-8197','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (79,'Garnet','genocksson26@fda.gov','398-681-9768','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (80,'Edin','emcblain27@oracle.com','166-452-3785','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (81,'Aubine','asnoxell28@cnet.com','156-819-3233','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (82,'Lorraine','lreggio29@paypal.com','199-284-3876','SUV');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (83,'Killy','klindemann2a@g.co','299-870-5437','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (84,'Mathilda','mmacgovern2b@boston.com','584-137-7478','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (85,'Zoe','zcashmore2c@pcworld.com','997-395-6726','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (86,'Lucio','lshevell2d@skype.com','989-281-6749','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (87,'Talia','tlavery2e@wikimedia.org','735-919-1349','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (88,'Sela','sburroughes2f@naver.com','685-319-9011','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (89,'May','moflaverty2g@altervista.org','145-840-0074','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (90,'Daile','dadaway2h@blinklist.com','348-559-8620','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (91,'Durward','dcurgenuer2i@last.fm','378-706-3405','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (92,'Nichole','nmcgoon2j@smugmug.com','835-101-9235','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (93,'Fabiano','fkadar2k@guardian.co.uk','930-755-9928','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (94,'Lynelle','lwardall2l@lycos.com','182-609-2641','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (95,'Reinald','rhebbs2m@goodreads.com','714-740-3786','truck');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (96,'Molli','mpelling2n@mozilla.org','601-646-0676','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (97,'Elinore','etwine2o@ucoz.com','325-183-0919','hybrid');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (98,'Bond','bdurkin2p@who.int','922-486-8011','sports car');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (99,'Greggory','ghogbourne2q@google.nl','130-543-9485','sedan');
INSERT INTO Passenger(PassengerID,Name,Email,Phone,Preferences) VALUES (100,'Daisie','dmilroy2r@shutterfly.com','220-885-5324','sedan');

CREATE TABLE Vehicle(
   VehicleID             INTEGER  NOT NULL PRIMARY KEY 
  ,Make                  VARCHAR(13) NOT NULL
  ,Model                 VARCHAR(16) NOT NULL
  ,Year                  INTEGER  NOT NULL
  ,Amenities             VARCHAR(22) NOT NULL
  ,AccessibilityFeatures VARCHAR(15) NOT NULL
);
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (1,'Infiniti','QX',2009,'Backup camera','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (2,'Chevrolet','Silverado',2007,'Sunroof','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (3,'Porsche','911',1987,'Bluetooth connectivity','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (4,'Scion','tC',2007,'Sunroof','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (5,'Pontiac','Firebird',1989,'Heated seats','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (6,'GMC','Envoy',2002,'Heated seats','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (7,'Mazda','B-Series Plus',1996,'Leather seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (8,'Mercedes-Benz','C-Class',2002,'Navigation system','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (9,'BMW','Alpina B7',2007,'Leather seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (10,'Ford','Transit Connect',2013,'Leather seats','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (11,'Ford','F250',1984,'Backup camera','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (12,'Saab','9-5',2007,'Navigation system','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (13,'Lincoln','Mark LT',2008,'Backup camera','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (14,'BMW','Z3',1996,'Bluetooth connectivity','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (15,'Lexus','SC',1999,'Bluetooth connectivity','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (16,'Volkswagen','Passat',2003,'Heated seats','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (17,'Hyundai','Genesis Coupe',2010,'Backup camera','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (18,'Ford','Bronco',1995,'Backup camera','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (19,'Mazda','Familia',1989,'Heated seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (20,'Lincoln','Town Car',2002,'Heated seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (21,'Cadillac','DeVille',2003,'Heated seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (22,'GMC','Yukon',2009,'Heated seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (23,'Porsche','914',1970,'Sunroof','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (24,'GMC','Envoy',2005,'Navigation system','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (25,'Chevrolet','Cobalt',2010,'Navigation system','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (26,'Dodge','Grand Caravan',1999,'Backup camera','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (27,'Kia','Carens',2008,'Leather seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (28,'Buick','Riviera',1999,'Leather seats','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (29,'Saturn','Relay',2006,'Leather seats','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (30,'Ferrari','612 Scaglietti',2009,'Navigation system','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (31,'Nissan','Maxima',2004,'Leather seats','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (32,'Pontiac','Grand Am',1999,'Heated seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (33,'Dodge','Intrepid',1999,'Backup camera','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (34,'Scion','xB',2009,'Heated seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (35,'Ford','Escape',2009,'Backup camera','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (36,'Honda','Passport',2000,'Heated seats','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (37,'Mitsubishi','Galant',2011,'Sunroof','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (38,'Honda','Accord',2009,'Backup camera','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (39,'Lexus','LS',1995,'Heated seats','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (40,'Dodge','Ram Van 3500',2003,'Bluetooth connectivity','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (41,'Dodge','Intrepid',2002,'Backup camera','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (42,'Austin','Mini Cooper',1964,'Leather seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (43,'Jeep','Wrangler',2010,'Sunroof','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (44,'Smart','Fortwo',2011,'Heated seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (45,'Mercury','Milan',2009,'Backup camera','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (46,'Oldsmobile','Achieva',1998,'Navigation system','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (47,'Toyota','Sienna',2002,'Backup camera','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (48,'Mazda','626',1986,'Navigation system','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (49,'Toyota','Avalon',2001,'Sunroof','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (50,'Mazda','Millenia',2002,'Navigation system','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (51,'GMC','Vandura 2500',1994,'Leather seats','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (52,'Dodge','Ram Wagon B350',1993,'Bluetooth connectivity','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (53,'Ford','Thunderbird',1995,'Navigation system','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (54,'Chevrolet','Tahoe',2006,'Backup camera','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (55,'Ford','Escort',1984,'Sunroof','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (56,'Buick','Rendezvous',2004,'Heated seats','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (57,'Acura','MDX',2010,'Heated seats','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (58,'Chrysler','LHS',1995,'Sunroof','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (59,'Cadillac','DeVille',1998,'Heated seats','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (60,'Dodge','Ram Van 3500',1997,'Bluetooth connectivity','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (61,'Mitsubishi','Mighty Max Macro',1992,'Sunroof','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (62,'Cadillac','Eldorado',2001,'Sunroof','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (63,'GMC','Vandura 1500',1994,'Sunroof','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (64,'BMW','X6',2013,'Backup camera','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (65,'Pontiac','Grand Prix Turbo',1990,'Bluetooth connectivity','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (66,'Suzuki','Esteem',2002,'Leather seats','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (67,'Chevrolet','Malibu',2008,'Sunroof','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (68,'Lexus','GS',1995,'Bluetooth connectivity','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (69,'GMC','Sierra 2500',2006,'Leather seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (70,'Chevrolet','Cavalier',1999,'Heated seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (71,'Ferrari','430 Scuderia',2008,'Sunroof','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (72,'Buick','Coachbuilder',1990,'Heated seats','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (73,'Chevrolet','Corvette',1993,'Sunroof','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (74,'Lincoln','Town Car',1999,'Navigation system','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (75,'Volkswagen','rio',2000,'Bluetooth connectivity','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (76,'Buick','Regal',2011,'Navigation system','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (77,'Volkswagen','Scirocco',1988,'Heated seats','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (78,'Toyota','Tundra',2007,'Sunroof','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (79,'Mazda','626',1990,'Heated seats','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (80,'BMW','X6',2012,'Sunroof','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (81,'Chevrolet','Blazer',2000,'Heated seats','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (82,'Dodge','Neon',2000,'Sunroof','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (83,'Mercedes-Benz','SL-Class',2009,'Bluetooth connectivity','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (84,'Dodge','Ram Van 1500',2001,'Bluetooth connectivity','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (85,'Porsche','911',1991,'Navigation system','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (86,'Mercury','Topaz',1988,'Sunroof','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (87,'Toyota','Avalon',2012,'Sunroof','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (88,'Acura','NSX',2003,'Navigation system','wheelchair lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (89,'Porsche','944',1987,'Navigation system','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (90,'Volkswagen','Passat',1994,'Sunroof','None');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (91,'Toyota','Matrix',2007,'Leather seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (92,'Dodge','Ram Van 3500',2001,'Navigation system','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (93,'Scion','tC',2005,'Leather seats','ramp');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (94,'Acura','RSX',2005,'Sunroof','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (95,'Toyota','Paseo',1993,'Backup camera','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (96,'Saab','9-7X',2006,'Backup camera','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (97,'Aston Martin','Vantage',2006,'Backup camera','lift');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (98,'Chevrolet','Express',2010,'Leather seats','hand controls');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (99,'Subaru','XT',1990,'Navigation system','swivel seat');
INSERT INTO Vehicle(VehicleID,Make,Model,Year,Amenities,AccessibilityFeatures) VALUES (100,'Dodge','Viper',2008,'Heated seats','swivel seat');


CREATE TABLE DriverVehicle(
   DriverID  INTEGER  NOT NULL PRIMARY KEY 
  ,VehicleID INTEGER  NOT NULL
);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (1,1);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (2,2);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (3,3);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (4,4);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (5,5);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (6,6);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (7,7);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (8,8);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (9,9);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (10,10);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (11,11);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (12,12);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (13,13);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (14,14);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (15,15);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (16,16);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (17,17);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (18,18);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (19,19);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (20,20);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (21,21);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (22,22);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (23,23);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (24,24);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (25,25);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (26,26);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (27,27);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (28,28);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (29,29);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (30,30);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (31,31);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (32,32);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (33,33);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (34,34);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (35,35);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (36,36);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (37,37);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (38,38);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (39,39);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (40,40);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (41,41);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (42,42);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (43,43);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (44,44);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (45,45);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (46,46);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (47,47);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (48,48);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (49,49);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (50,50);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (51,51);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (52,52);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (53,53);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (54,54);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (55,55);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (56,56);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (57,57);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (58,58);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (59,59);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (60,60);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (61,61);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (62,62);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (63,63);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (64,64);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (65,65);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (66,66);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (67,67);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (68,68);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (69,69);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (70,70);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (71,71);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (72,72);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (73,73);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (74,74);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (75,75);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (76,76);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (77,77);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (78,78);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (79,79);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (80,80);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (81,81);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (82,82);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (83,83);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (84,84);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (85,85);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (86,86);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (87,87);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (88,88);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (89,89);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (90,90);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (91,91);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (92,92);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (93,93);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (94,94);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (95,95);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (96,96);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (97,97);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (98,98);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (99,99);
INSERT INTO DriverVehicle(DriverID,VehicleID) VALUES (100,100);


CREATE TABLE Ride(
   RideID        INTEGER  NOT NULL PRIMARY KEY 
  ,DriverID      INTEGER  NOT NULL
  ,PassengerID   INTEGER  NOT NULL
  ,VehicleID     INTEGER  NOT NULL
  ,Price         NUMERIC(5,2) NOT NULL
  ,PaymentMethod VARCHAR(11) NOT NULL
);
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (1,1,1,1,71.21,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (2,2,2,2,26.53,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (3,3,3,3,58.57,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (4,4,4,4,93.62,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (5,5,5,5,63.79,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (6,6,6,6,16.0,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (7,7,7,7,88.11,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (8,8,8,8,96.98,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (9,9,9,9,15.47,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (10,10,10,10,34.87,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (11,11,11,11,46.07,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (12,12,12,12,85.0,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (13,13,13,13,4.57,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (14,14,14,14,87.53,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (15,15,15,15,41.72,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (16,16,16,16,51.9,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (17,17,17,17,70.43,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (18,18,18,18,81.24,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (19,19,19,19,46.73,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (20,20,20,20,49.88,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (21,21,21,21,9.89,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (22,22,22,22,39.65,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (23,23,23,23,77.94,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (24,24,24,24,55.39,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (25,25,25,25,12.5,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (26,26,26,26,46.14,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (27,27,27,27,67.94,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (28,28,28,28,35.01,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (29,29,29,29,25.89,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (30,30,30,30,61.14,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (31,31,31,31,25.01,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (32,32,32,32,41.72,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (33,33,33,33,72.32,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (34,34,34,34,30.29,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (35,35,35,35,59.2,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (36,36,36,36,71.43,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (37,37,37,37,90.24,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (38,38,38,38,51.3,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (39,39,39,39,39.36,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (40,40,40,40,16.0,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (41,41,41,41,36.37,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (42,42,42,42,29.98,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (43,43,43,43,86.23,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (44,44,44,44,4.85,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (45,45,45,45,44.79,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (46,46,46,46,69.4,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (47,47,47,47,29.04,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (48,48,48,48,24.54,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (49,49,49,49,70.34,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (50,50,50,50,25.19,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (51,51,51,51,87.29,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (52,52,52,52,91.2,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (53,53,53,53,92.66,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (54,54,54,54,50.12,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (55,55,55,55,55.55,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (56,56,56,56,85.27,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (57,57,57,57,81.16,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (58,58,58,58,75.99,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (59,59,59,59,83.69,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (60,60,60,60,85.65,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (61,61,61,61,32.68,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (62,62,62,62,9.05,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (63,63,63,63,32.38,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (64,64,64,64,80.16,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (65,65,65,65,27.66,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (66,66,66,66,83.65,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (67,67,67,67,56.7,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (68,68,68,68,69.66,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (69,69,69,69,51.66,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (70,70,70,70,51.43,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (71,71,71,71,94.17,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (72,72,72,72,40.04,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (73,73,73,73,62.0,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (74,74,74,74,9.35,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (75,75,75,75,61.06,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (76,76,76,76,51.34,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (77,77,77,77,56.85,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (78,78,78,78,93.5,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (79,79,79,79,35.16,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (80,80,80,80,49.84,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (81,81,81,81,2.31,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (82,82,82,82,73.84,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (83,83,83,83,61.2,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (84,84,84,84,16.84,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (85,85,85,85,29.49,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (86,86,86,86,87.83,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (87,87,87,87,20.61,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (88,88,88,88,55.43,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (89,89,89,89,67.09,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (90,90,90,90,88.61,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (91,91,91,91,80.59,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (92,92,92,92,44.53,'Check');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (93,93,93,93,13.84,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (94,94,94,94,68.43,'Cash');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (95,95,95,95,59.36,'Credit Card');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (96,96,96,96,78.9,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (97,97,97,97,28.12,'Apple Pay');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (98,98,98,98,33.39,'Venmo');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (99,99,99,99,50.57,'PayPal');
INSERT INTO Ride(RideID,DriverID,PassengerID,VehicleID,Price,PaymentMethod) VALUES (100,100,100,100,31.04,'Venmo');


CREATE TABLE Rating(
   RatingID    INTEGER  NOT NULL PRIMARY KEY 
  ,DriverID    INTEGER  NOT NULL
  ,PassengerID INTEGER  NOT NULL
  ,Score       NUMERIC(3,1) NOT NULL
  ,Feedback    VARCHAR(20)
);
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (1,1,1,2.1,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (2,2,2,3.8,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (3,3,3,2.8,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (4,4,4,2.2,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (5,5,5,3.4,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (6,6,6,4.1,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (7,7,7,4.6,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (8,8,8,2.5,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (9,9,9,4.6,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (10,10,10,2.1,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (11,11,11,3.5,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (12,12,12,3.9,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (13,13,13,1.3,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (14,14,14,2.6,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (15,15,15,4.1,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (16,16,16,2.4,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (17,17,17,4.6,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (18,18,18,4.4,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (19,19,19,1.1,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (20,20,20,1.8,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (21,21,21,4.5,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (22,22,22,3.6,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (23,23,23,3.6,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (24,24,24,1.1,NULL);
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (25,25,25,1.6,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (26,26,26,4.2,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (27,27,27,1.1,NULL);
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (28,28,28,3.0,NULL);
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (29,29,29,4.7,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (30,30,30,3.2,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (31,31,31,2.0,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (32,32,32,4.1,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (33,33,33,4.4,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (34,34,34,4.2,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (35,35,35,3.5,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (36,36,36,3.4,NULL);
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (37,37,37,3.9,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (38,38,38,2.6,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (39,39,39,4.9,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (40,40,40,3.5,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (41,41,41,3.1,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (42,42,42,1.6,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (43,43,43,4.0,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (44,44,44,4.5,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (45,45,45,4.7,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (46,46,46,2.4,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (47,47,47,4.4,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (48,48,48,1.8,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (49,49,49,3.8,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (50,50,50,3.6,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (51,51,51,3.0,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (52,52,52,2.6,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (53,53,53,4.2,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (54,54,54,2.0,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (55,55,55,4.6,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (56,56,56,2.9,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (57,57,57,3.5,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (58,58,58,2.3,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (59,59,59,2.4,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (60,60,60,3.0,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (61,61,61,2.9,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (62,62,62,2.7,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (63,63,63,3.8,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (64,64,64,3.9,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (65,65,65,1.3,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (66,66,66,2.3,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (67,67,67,2.6,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (68,68,68,4.3,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (69,69,69,4.2,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (70,70,70,1.2,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (71,71,71,1.7,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (72,72,72,2.1,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (73,73,73,2.7,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (74,74,74,3.6,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (75,75,75,1.9,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (76,76,76,1.2,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (77,77,77,3.3,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (78,78,78,2.7,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (79,79,79,1.0,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (80,80,80,3.6,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (81,81,81,4.5,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (82,82,82,3.8,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (83,83,83,1.4,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (84,84,84,2.3,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (85,85,85,4.5,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (86,86,86,4.4,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (87,87,87,4.5,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (88,88,88,2.4,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (89,89,89,3.8,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (90,90,90,3.1,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (91,91,91,1.4,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (92,92,92,3.7,NULL);
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (93,93,93,3.6,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (94,94,94,3.9,'Needs improvement.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (95,95,95,4.7,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (96,96,96,1.2,'Great job!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (97,97,97,1.9,'Average performance.');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (98,98,98,2.6,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (99,99,99,3.3,'Excellent work!');
INSERT INTO Rating(RatingID,DriverID,PassengerID,Score,Feedback) VALUES (100,100,100,4.3,NULL);


CREATE TABLE PriceData(
   ServiceID       INTEGER  NOT NULL PRIMARY KEY 
  ,PriceID         INTEGER  NOT NULL
  ,Location        VARCHAR(11) NOT NULL
  ,TimeStamp       VARCHAR(8) NOT NULL
  ,BaseFare        NUMERIC(4,2) NOT NULL
  ,SurgeMultiplier NUMERIC(4,2) NOT NULL
);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (1,1,'Renton','6:15 AM',1.14,1.48);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (2,2,'Seattle','10:50 AM',2.6,1.96);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (3,3,'Seattle','7:49 PM',7.28,1.13);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (4,4,'Kent','12:25 PM',8.02,1.93);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (5,5,'Tacoma','1:28 AM',8.8,1.73);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (6,6,'Federal Way','10:25 AM',5.65,1.7);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (7,7,'Renton','8:45 PM',1.88,1.78);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (8,8,'Renton','7:25 AM',3.95,1.32);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (9,9,'Vancouver','10:36 PM',7.57,1.12);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (10,10,'Tacoma','3:31 AM',2.97,1.76);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (11,11,'Kent','3:11 PM',1.0,1.92);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (12,12,'Renton','9:52 AM',8.71,1.61);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (13,13,'Federal Way','5:17 AM',8.36,1.5);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (14,14,'Vancouver','5:07 PM',6.43,1.12);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (15,15,'Seattle','10:18 AM',7.31,1.52);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (16,16,'Vancouver','5:44 AM',9.53,1.83);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (17,17,'Spokane','6:55 PM',5.9,1.16);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (18,18,'Federal Way','5:38 PM',8.75,1.71);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (19,19,'Bellevue','10:20 PM',1.61,1.85);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (20,20,'Seattle','10:20 AM',1.23,1.44);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (21,21,'Yakima','3:29 PM',7.64,1.04);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (22,22,'Everett','8:10 AM',4.24,1.0);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (23,23,'Renton','11:52 AM',2.47,1.86);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (24,24,'Spokane','8:38 AM',8.59,1.94);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (25,25,'Renton','9:07 PM',6.41,1.14);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (26,26,'Spokane','3:16 AM',3.42,1.91);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (27,27,'Vancouver','4:31 PM',9.88,1.53);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (28,28,'Everett','9:21 AM',7.71,1.73);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (29,29,'Yakima','12:05 PM',7.65,1.17);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (30,30,'Vancouver','7:21 PM',1.09,1.77);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (31,31,'Kent','4:41 AM',9.47,1.26);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (32,32,'Federal Way','1:53 PM',5.22,1.2);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (33,33,'Seattle','5:38 PM',2.12,1.4);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (34,34,'Federal Way','7:18 AM',6.07,1.82);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (35,35,'Yakima','1:03 PM',9.48,1.92);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (36,36,'Yakima','4:03 PM',7.08,1.45);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (37,37,'Yakima','3:40 PM',2.66,1.11);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (38,38,'Yakima','2:47 AM',4.64,1.23);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (39,39,'Yakima','9:04 PM',6.22,1.64);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (40,40,'Tacoma','5:34 PM',1.17,1.46);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (41,41,'Tacoma','6:22 PM',2.25,1.11);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (42,42,'Federal Way','12:36 PM',2.46,1.42);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (43,43,'Tacoma','1:12 AM',2.4,1.51);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (44,44,'Kent','9:03 PM',5.0,1.44);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (45,45,'Bellevue','5:32 AM',8.82,1.85);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (46,46,'Vancouver','12:39 AM',3.63,1.57);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (47,47,'Seattle','8:19 PM',1.49,1.39);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (48,48,'Spokane','1:45 AM',7.7,1.86);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (49,49,'Yakima','2:41 PM',1.06,1.04);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (50,50,'Everett','3:41 AM',4.02,1.8);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (51,51,'Yakima','8:50 AM',6.74,1.9);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (52,52,'Federal Way','9:15 PM',5.4,1.31);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (53,53,'Federal Way','2:00 AM',4.31,1.99);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (54,54,'Spokane','11:08 AM',4.31,1.16);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (55,55,'Vancouver','4:09 PM',9.15,1.32);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (56,56,'Yakima','2:33 PM',7.66,1.81);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (57,57,'Everett','7:40 AM',3.38,1.3);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (58,58,'Yakima','3:37 AM',8.31,1.23);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (59,59,'Renton','7:03 AM',2.15,1.94);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (60,60,'Seattle','8:16 PM',1.82,1.52);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (61,61,'Tacoma','2:10 PM',8.9,1.39);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (62,62,'Yakima','1:38 AM',2.37,1.36);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (63,63,'Spokane','10:34 PM',1.67,1.29);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (64,64,'Kent','12:30 PM',6.47,1.26);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (65,65,'Spokane','1:15 AM',3.48,1.79);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (66,66,'Vancouver','9:48 PM',9.33,1.29);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (67,67,'Seattle','5:00 PM',2.84,1.61);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (68,68,'Kent','11:46 PM',2.11,1.54);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (69,69,'Seattle','10:12 AM',2.62,1.07);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (70,70,'Bellevue','6:05 PM',7.21,1.41);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (71,71,'Vancouver','9:40 AM',2.2,1.68);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (72,72,'Renton','1:37 PM',1.19,1.78);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (73,73,'Federal Way','3:09 AM',8.48,1.38);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (74,74,'Federal Way','1:12 AM',8.19,1.59);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (75,75,'Yakima','7:28 AM',3.15,1.54);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (76,76,'Everett','8:38 PM',4.56,1.08);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (77,77,'Federal Way','1:38 PM',5.39,1.08);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (78,78,'Kent','7:03 PM',4.5,1.59);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (79,79,'Everett','11:17 PM',7.14,1.88);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (80,80,'Kent','12:29 PM',6.13,1.61);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (81,81,'Federal Way','3:25 AM',1.43,1.53);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (82,82,'Renton','8:27 AM',7.28,1.25);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (83,83,'Tacoma','12:34 PM',1.67,1.91);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (84,84,'Yakima','2:56 AM',4.94,1.92);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (85,85,'Seattle','12:33 PM',8.35,1.08);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (86,86,'Everett','6:35 PM',1.6,1.71);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (87,87,'Federal Way','7:46 PM',1.56,1.34);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (88,88,'Renton','3:15 PM',7.79,1.3);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (89,89,'Federal Way','1:04 PM',6.12,1.17);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (90,90,'Vancouver','12:16 AM',8.27,1.45);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (91,91,'Renton','2:22 AM',2.85,1.33);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (92,92,'Federal Way','5:22 PM',6.54,1.77);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (93,93,'Yakima','4:13 PM',2.29,1.5);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (94,94,'Vancouver','6:24 AM',9.49,1.91);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (95,95,'Federal Way','2:49 AM',4.2,1.62);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (96,96,'Tacoma','8:43 PM',9.58,1.15);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (97,97,'Spokane','2:08 AM',3.01,1.03);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (98,98,'Yakima','7:40 PM',8.55,1.52);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (99,99,'Everett','2:28 PM',5.17,1.95);
INSERT INTO PriceData(ServiceID,PriceID,Location,TimeStamp,BaseFare,SurgeMultiplier) VALUES (100,100,'Bellevue','12:26 PM',8.89,1.48);


CREATE TABLE PaymentMethod (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    MethodName VARCHAR(50) NOT NULL UNIQUE
);

-- Corrected INSERT statement (without specifying PaymentID)
INSERT INTO PaymentMethod (MethodName)
VALUES ('Venmo'),
       ('Cash'),
       ('Check'),
       ('Credit Card'),
       ('PayPal'),
       ('Apple Pay');




CREATE TABLE ServicePayment(
   ServiceID INTEGER  NOT NULL PRIMARY KEY 
  ,PaymentID INTEGER  NOT NULL
);
INSERT INTO ServicePayment(ServiceID,PaymentID) VALUES (1,1);
INSERT INTO ServicePayment(ServiceID,PaymentID) VALUES (2,2);
INSERT INTO ServicePayment(ServiceID,PaymentID) VALUES (3,3);
INSERT INTO ServicePayment(ServiceID,PaymentID) VALUES (4,4);
INSERT INTO ServicePayment(ServiceID,PaymentID) VALUES (5,5);


ALTER TABLE Driver
ADD CONSTRAINT FK_Driver_Service
FOREIGN KEY (ServiceID) REFERENCES PrivateTransportationService(ServiceID);

ALTER TABLE DriverVehicle
ADD CONSTRAINT FK_DriverVehicle_Driver
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID),
CONSTRAINT FK_DriverVehicle_Vehicle
FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID);

ALTER TABLE Rating
ADD CONSTRAINT FK_Rating_Driver
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID),
CONSTRAINT FK_Rating_Passenger
FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID);



ALTER TABLE ServicePayment
ADD CONSTRAINT FK_ServicePayment_Service
FOREIGN KEY (ServiceID) REFERENCES PrivateTransportationService(ServiceID),
CONSTRAINT FK_ServicePayment_Payment
FOREIGN KEY (PaymentID) REFERENCES PaymentMethod(PaymentID);


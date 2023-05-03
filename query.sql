CREATE TABLE Tour
(
TourID int,
Name nchar(150),
Total_Cost int,
PRIMARY KEY (TourID),
)

CREATE TABLE Areas
(
AreasID int,
TourID int,
Name nchar(30),
Tour_Cost int CONSTRAINT chk_Tour_Cost CHECK (Tour_Cost > 20),
PRIMARY KEY (AreasID),
FOREIGN KEY (TOURID) REFERENCES TOUR(TOURID)
)

CREATE TABLE Tourists
(
TouristID int,
Name nchar(20),
LName nchar(40),
Gender nchar(10),
BDate Date,
Nationality nchar(20),
CountryComeFrom nchar(20),
PRIMARY KEY(TouristID)
)

Create Table Guides
(
GuideID int,
Name nchar(20),
LName nchar(40),
Gender nchar(10),
PhoneNumber int,
PRIMARY KEY(GuideID)
)





CREATE TABLE Invoices
(
TouristID int,
TotalInvoiceAmount int,
DiscountAmount int,
NetAmount int,
InvoiceNo int,
InvoiceDate date,
InvoiceID int,
PRIMARY KEY(InvoiceID)
)



Create Table Sales
(
TourID int,
TouristID int,
TourDate Date,
GuideID int,
SalesID int,
PRIMARY KEY (SalesID),
FOREIGN KEY(TourID) REFERENCES Tour(TourID),
FOREIGN KEY(TouristID) REFERENCES Tourists(TouristID),
FOREIGN KEY(GuideID) REFERENCES Guides(GuideID),
)

CREATE TABLE InvoiceItems
(
InvoiceItemID int,
InvoiceID int,
SalesID int,
PRIMARY KEY(InvoiceItemID),
FOREIGN KEY(SalesID) REFERENCES SALES(SALESID),
FOREIGN KEY(InvoiceID) REFERENCES Invoices(InvoiceID)
)

CREATE TABLE Languages
(
LanguageID int,
Name nchar(20)
PRIMARY KEY(LanguageID)		
)

CREATE TABLE GuideLanguages
(
GuideID int,
LanguageID int,
Match int,
FOREIGN KEY(LanguageID) REFERENCES LANGUAGES(LanguageID),
FOREIGN KEY(GuideID) REFERENCES Guides(GuideID),
PRIMARY KEY(Match)
)

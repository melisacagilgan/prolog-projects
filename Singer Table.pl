band(20051001,'Beatler','Joe Zeek', 'British', 'Orange Submarine', 3.94).
band(20081100,'Blanche Desir','George Main', 'French', 'Chuby', 1.5).
band(20162210,'Metallina','Phil Speller', 'American', 'Gray Album', 3.23).

singer(20081100,'Bertrand', 'Cantona', 0).
singer(20162210,'James', 'Halffield', 2).
singer(20051001,'John', 'Mellon', 3).

average_singer(Name,Surname):-singer(Id, Name, Surname, _), band(Id, _, _, _, _, Rating), Rating>3, Rating<3.5.
no_award_band(BandName):-singer(Id, _, _, AwardNo), band(Id, BandName, _, _, _, _), AwardNo=0.

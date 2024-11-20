DROP DATABASE IF EXISTS PopcornViews
	go

CREATE DATABASE PopcornViews  COLLATE Turkish_CI_AS
	go

USE PopcornViews



Create Table AppSettings
(
    Id INT PRIMARY KEY NOT NULL,
    BrandName NVARCHAR (25) NOT NULL,
    HeroTitle NVARCHAR(100) NOT NULL,
    HeroSubTitle NVARCHAR (100) NOT NULL,
    HeroImgURL NVARCHAR (MAX) NOT NULL
)
go
INSERT INTO AppSettings
    (Id, BrandName, HeroTitle, HeroSubTitle, HeroImgURL)
VALUES
    (1, 'PopcornViews', 'Sinema Dünyasına Hoş Geldiniz', 'En Sevilen Filmleri Keşfedin ve İzleyin', '')



CREATE TABLE Movies
(
    MovieId INT PRIMARY KEY NOT NULL,
    CategoryId INT NOT NULL,
    MovieName NVARCHAR(50) NOT NULL,
    MovieDuration INT NOT NULL,
    AboutMovie NVARCHAR (MAX) NOT NULL,
    Director NVARCHAR(50) NOT NULL,
    Writer NVARCHAR(100) NOT NULL,
    Star NVARCHAR(50) NOT NULL,
    ImdbPoint INT NOT NULL,
    MovieImgURL NVARCHAR(MAX),
    MovieURL NVARCHAR(MAX),
	WatchUrl NVARCHAR(MAX)
)
GO
-- Aksiyon Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL, WatchUrl)
VALUES
    (1, 1, 'Mad Max: Fury Road', 120, 'Kıyamet sonrası bir dünyada geçen bu aksiyon dolu filmde Mad Max, hayatta kalmaya çalışırken kendini zalim Immortan Joe''nun zulmünden kaçan bir grup isyancının yanında bulur. Furiosa liderliğindeki bu grup, özgürlük için korkusuzca savaşır. Çölün acımasız koşulları ve ölümcül kovalamacalar, onları sürekli sınırlarını zorlamaya iter.', 'George Miller', 'George Miller, Brendan McCarthy, Nick Lathouris', 'Tom Hardy', 8, '/ui/img/Filmler/Aksiyon-MadMax-1.png', 'https://www.youtube.com/embed/hEJnMQG9ev8', 'https://www.justwatch.com/us/movie/mad-max-fury-road'),
    (2, 1, 'John Wick', 101, 'Emekli suikastçı John Wick, eşinden kalan son hatıra olan köpeğinin öldürülmesi üzerine intikam yolculuğuna çıkar. Yeraltı dünyasındaki eski düşmanları ve bağlantılarıyla yüzleşmek zorunda kalır. Ölümcül yetenekleriyle John, karşısına çıkan herkese unutulmaz bir ders verir.', 'Chad Stahelski', 'Derek Kolstad', 'Keanu Reeves', 7, '/ui/img/Filmler/Aksiyon-jhonwick-2.jpg', 'https://www.youtube.com/embed/2AUmvWm5ZDQ', 'https://www.justwatch.com/us/movie/john-wick'),
    (3, 1, 'Kara Şövalye', 152, 'Batman serisinin bu unutulmaz bölümünde, Gotham şehri Joker adlı psikopat bir suçlunun tehdidi altındadır. Bruce Wayne, Joker ile yüzleşirken kendi içindeki adalet duygusuyla savaşır. Bu mücadele, hem Gotham''ın kaderini hem de Batman''in geleceğini belirleyecektir.', 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'Christian Bale', 9, '/ui/img/Filmler/Aksiyon-karasovalye-3.png', 'https://www.youtube.com/embed/EXeTwQWrcwY', 'https://www.justwatch.com/us/movie/the-dark-knight'),
    (4, 1, 'Başlangıç', 148, 'Dom Cobb liderliğindeki bir grup hırsız, insanların bilinçaltına girerek rüyalarından fikir çalmaktadır. Ancak Cobb, hayatını geri kazanmak için zorlu bir görev üstlenir. Bir fikri yerleştirmek için zaman ve gerçeklik sınırlarını aşan bir maceraya atılırlar.', 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio', 8, '/ui/img/Filmler/Aksiyon-baslangic-4.jpg', 'https://www.youtube.com/embed/YoHD9XEInc0', 'https://www.justwatch.com/us/movie/inception'),
    (5, 1, 'Matrix', 136, 'Neo, sıradan gibi görünen bir hayat yaşarken gerçekliğin ardındaki karanlık sırrı keşfeder. İnsanlık ve makineler arasındaki savaşın ortasında yer alan Neo, seçilmiş kişi olduğunu öğrenir. Seçimleri, hem kendi kaderini hem de insanlığın geleceğini şekillendirecektir.', 'Lana Wachowski, Lilly Wachowski', 'Lilly Wachowski, Lana Wachowski', 'Keanu Reeves', 8, '/ui/img/Filmler/Aksiyon-matrix-5.jpg', 'https://www.youtube.com/embed/vKQi3bBA1y8', 'https://www.justwatch.com/us/movie/the-matrix');
GO

-- Komedi Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL, WatchUrl)
VALUES
    (6, 2, 'Büyük Budapeşte Oteli', 99, 'Büyük Budapeşte Oteli, renkli karakterlerle dolu eşsiz bir dünyayı anlatır. Otelin konsiyerji Gustave H., varlıklı bir müşterisinin gizemli ölümünün ardından çalınan bir tabloyu kurtarmak için maceraya atılır. Komik ve duygusal olaylarla dolu bu hikaye, dostluk ve sadakat üzerine unutulmaz bir yolculuk sunar.', 'Wes Anderson', 'Stefan Zweig, Wes Anderson', 'Ralph Fiennes', 8, '/ui/img/Filmler/Komedi-Buyukbudapestehotel-1.jpg', 'https://www.youtube.com/embed/1Fg5iWmQjwk', 'https://www.justwatch.com/us/movie/the-grand-budapest-hotel'),
    (7, 2, 'Çok Fena', 113, 'Evan ve Seth, lise mezuniyeti öncesinde unutulmaz bir gece planlar. Ancak işler, komik ve kaotik bir şekilde rayından çıkar. Gençlik arkadaşlığı, büyüme sancıları ve eğlence dolu bu hikaye, izleyenlere kahkahalarla dolu anlar yaşatır.', 'Greg Mottola', 'Seth Rogen, Evan Goldberg', 'Michael Cera', 7, '/ui/img/Filmler/Komedi-cokfena-2.jpg', 'https://www.youtube.com/embed/4qRDM18f7fg', 'https://www.justwatch.com/us/movie/superbad'),
    (8, 2, 'Felekten Bir Gece', 100, 'Las Vegas''ta yapılan bekarlığa veda partisi beklenmedik bir maceraya dönüşür. Sabah uyandıklarında ne olduğunu hatırlamayan arkadaş grubu, düğünden önce kaybolan damadı bulmaya çalışır. Komedi ve kaos dolu bu hikaye, dostluğun sınırlarını zorlar.', 'Todd Phillips', 'Jon Lucas, Scott Moore', 'Bradley Cooper', 7, '/ui/img/Filmler/Komedi-felektenbirgece-3.jpg', 'https://www.youtube.com/embed/tcdUhdOlz9M', 'https://www.justwatch.com/us/movie/the-hangover'),
    (9, 2, 'Üvey Kardeşler', 98, 'Brennan ve Dale, orta yaşta ebeveynleri evlenince üvey kardeş olurlar. Birbirinden garip bu iki adam, yeni ailelerini komik bir kaosa sürükler. Çocukça rekabetleri ve komik çatışmaları, izleyenleri kahkahaya boğar.', 'Adam McKay', 'Will Ferrell, Adam McKay', 'Will Ferrell', 6, '/ui/img/Filmler/Komedi-uveykardesler-4.jpg', 'https://www.youtube.com/embed/CewglxElBK0', 'https://www.justwatch.com/us/movie/step-brothers'),
    (10, 2, 'Çılgın Haber Sunucusu', 94, 'Ron Burgundy, 1970''lerin ünlü bir haber sunucusudur. Ancak iş hayatında beklenmedik bir rakip çıkınca komik bir rekabete girer. Mizah ve eğlence dolu bu hikaye, izleyenlere keyifli bir seyir sunar.', 'Adam McKay', 'Will Ferrell, Adam McKay', 'Will Ferrell', 7, '/ui/img/Filmler/Komedi-ilginchabersunucusu-5.jpg', 'https://www.youtube.com/embed/NJQ4qEWm9lU', 'https://www.justwatch.com/us/movie/anchorman-the-legend-of-ron-burgundy');
GO



-- Drama Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL, WatchUrl)
VALUES
    (11, 3, 'Esaretin Bedeli', 142, 'Andy Dufresne, işlemediği bir suçtan dolayı hapse atılır. Shawshank Hapishanesi''nde, Red adlı bir mahkumla dostluk kurar ve birlikte umudu ve özgürlüğü ararlar. Hapisteki zorluklarla başa çıkarken Andy, hayatta kalmanın ve değişimin gücünü keşfeder.', 'Frank Darabont', 'Stephen King, Frank Darabont', 'Tim Robbins', 9, '/ui/img/Filmler/Dram-EsaretinBedeli-1.jpg', 'https://www.youtube.com/embed/6hB3S9bIaco', 'https://www.justwatch.com/us/movie/the-shawshank-redemption'),
    (12, 3, 'Forrest Gump', 142, 'Forrest Gump, düşük IQ''suna rağmen hayatı boyunca olağanüstü başarılara imza atar. Amerikan tarihinin önemli anlarına tanıklık eden Forrest, saf yüreğiyle hem aşkı hem de hayatın anlamını keşfeder. Hayatı boyunca kendine özgü bir hikaye yaratır.', 'Robert Zemeckis', 'Winston Groom, Eric Roth', 'Tom Hanks', 8, '/ui/img/Filmler/Dram-forrestgump-2.jpg', 'https://www.youtube.com/embed/bLvqoHBptjg', 'https://www.justwatch.com/us/movie/forrest-gump'),
    (13, 3, 'Dövüş Kulübü', 139, 'Bir uykusuzluk hastası ve karizmatik bir sabun satıcısı, kurallarını kendilerinin yazdığı bir yeraltı dövüş kulübü kurar. Ancak işler karmaşık bir hal alır ve kontrol ellerinden kayar. Film, kimlik, tüketim kültürü ve toplumsal baskılar üzerine çarpıcı bir hikaye sunar.', 'David Fincher', 'Chuck Palahniuk, Jim Uhls', 'Brad Pitt', 8, '/ui/img/Filmler/Dram-Dovuskulubu-3.jpg', 'https://www.youtube.com/embed/qtRKdVHc-cE', 'https://www.justwatch.com/us/movie/fight-club'),
    (14, 3, 'Baba', 175, 'Corleone ailesi, suç dünyasında güç ve sadakatin önemini anlatan bir destandır. Don Vito Corleone ve ailesi, aile bağlarını korurken rakipleriyle mücadele eder. Film, aile içi çatışmalar ve yeraltı dünyasındaki dengeler üzerine unutulmaz bir hikaye sunar.', 'Francis Ford Coppola', 'Mario Puzo, Francis Ford Coppola', 'Marlon Brando', 9, '/ui/img/Filmler/Dram-baba-4.jpg', 'https://www.youtube.com/embed/sY1S34973zA', 'https://www.justwatch.com/us/movie/the-godfather'),
    (15, 3, 'Schindler’in Listesi', 195, 'Oskar Schindler, II. Dünya Savaşı sırasında binlerce Yahudi''nin hayatını kurtarmak için büyük bir çaba gösterir. Gerçek olaylardan uyarlanan bu güçlü hikaye, insanlık, cesaret ve fedakarlık üzerine duygusal bir portre sunar.', 'Steven Spielberg', 'Thomas Keneally, Steven Zaillian', 'Liam Neeson', 9, '/ui/img/Filmler/Dram-schindlerinlistesi-5.jpg', 'https://www.youtube.com/embed/gG22XNhtnoY', 'https://www.justwatch.com/us/movie/schindlers-list');
GO



-- Korku Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL, WatchUrl)
VALUES
    (16, 4, 'Cinnet', 146, 'Jack Torrance, ailesiyle birlikte kış boyunca bakıcılık yapmak için Overlook Oteli''ne gider. Ancak otelin karanlık geçmişi, Jack''in akıl sağlığını tehdit eder. Jack, yavaş yavaş deliliğe sürüklenirken ailesi için korku dolu bir hayatta kalma mücadelesi başlar.', 'Stanley Kubrick', 'Stephen King, Stanley Kubrick', 'Jack Nicholson', 8, '/ui/img/Filmler/Korku-Cinnet-1.jpg', 'https://www.youtube.com/embed/5Cb3ik6zP2I', 'https://www.justwatch.com/us/movie/the-shining'),
    (17, 4, 'Kapan', 104, 'Chris, sevgilisi Rose''un ailesiyle tanışmak için onların malikanesine gider. İlk başta sıcak bir karşılama gibi görünse de, ailedeki gariplikler hızla korkutucu bir hal alır. Chris, bu ortamda saklı olan karanlık sırları keşfeder.', 'Jordan Peele', 'Jordan Peele', 'Daniel Kaluuya', 7, '/ui/img/Filmler/Korku-Kapan-2.jpg', 'https://www.youtube.com/embed/DzfpyUB60YY', 'https://www.justwatch.com/us/movie/get-out'),
    (18, 4, 'Elm Sokağında Kabus', 91, 'Freddy Krueger, Elm Sokağı''nda yaşayan gençlerin rüyalarına girerek dehşet saçar. Gençler, Freddy''nin saldırılarından kaçmaya çalışırken rüya ve gerçeklik arasındaki sınırların bulanıklaştığı bir mücadele verir.', 'Wes Craven', 'Wes Craven', 'Heather Langenkamp', 7, '/ui/img/Filmler/Korku-ElmSokKabus-3.jpg', 'https://www.youtube.com/embed/dCVh4lBfW-c', 'https://www.justwatch.com/us/movie/a-nightmare-on-elm-street'),
    (19, 4, 'Cadılar Bayramı', 91, 'Michael Myers, çocukken işlediği bir cinayetin ardından yıllar sonra kaçmayı başarır. Cadılar Bayramı gecesi, kasabada terör estirirken hedefi genç bir kadındır. Film, korku ve gerilim dolu anlarla doludur.', 'John Carpenter', 'John Carpenter, Debra Hill', 'Donald Pleasence', 7, '/ui/img/Filmler/Korku-CadilarBayrami-4.jpg', 'https://www.youtube.com/embed/xHuOtLTQ_1I', 'https://www.justwatch.com/us/movie/halloween'),
    (20, 4, 'O', 135, 'Derry kasabasındaki çocuklar, kötü bir varlık olan Pennywise''la karşı karşıya gelir. Bu palyaço, korkularıyla beslenirken çocukları hedef alır. Bir grup çocuk, cesaretlerini toplayarak bu korkunç varlığı durdurmaya çalışır.', 'Andy Muschietti', 'Chase Palmer, Cary Joji Fukunaga', 'Bill Skarsgård', 7, '/ui/img/Filmler/Korku-O-5.jpg', 'https://www.youtube.com/embed/xKJmEC5ieOk', 'https://www.justwatch.com/us/movie/it');
GO


-- Bilim Kurgu Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL, WatchUrl)
VALUES
    (21, 5, 'Başlangıç', 148, 'Dom Cobb, insanların rüyalarına girerek bilinçaltlarından sır çalan yetenekli bir hırsızdır. Ancak bu kez ona bir fikir yerleştirme görevi verilir. Zihinlerin derinliklerinde geçen bu karmaşık yolculuk, gerçeklik ve hayal arasındaki sınırları sorgulatır.', 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio', 8, '/ui/img/Filmler/BilimKurgu-Baslangic-1.jpg', 'https://www.youtube.com/embed/YoHD9XEInc0', 'https://www.justwatch.com/us/movie/inception'),
    (22, 5, 'Yıldızlararası', 169, 'Dünya yaşanamaz hale gelirken, bir grup kaşif insanlığı kurtarmak için bir solucan deliğinden geçerek bilinmeyene doğru bir yolculuğa çıkar. Film, zaman, sevgi ve fedakarlık temalarını etkileyici bir şekilde işler.', 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'Matthew McConaughey', 8, '/ui/img/Filmler/BilimKurgu-Yildizlararasi-2.jpg', 'https://www.youtube.com/embed/zSWdZVtXT7E', 'https://www.justwatch.com/us/movie/interstellar'),
    (23, 5, 'Matrix', 136, 'Neo, sıradan bir hacker olarak yaşarken bir gün gerçek dünyanın çok daha farklı olduğunu keşfeder. İnsanların zihinlerini kontrol eden bir sistemin içinde yaşadığını öğrenir ve bu distopik düzeni değiştirmek için savaşmaya başlar.', 'Lana Wachowski, Lilly Wachowski', 'Lilly Wachowski, Lana Wachowski', 'Keanu Reeves', 8, '/ui/img/Filmler/BilimKurgu-Matrix-3.jpg', 'https://www.youtube.com/embed/vKQi3bBA1y8', 'https://www.justwatch.com/us/movie/the-matrix'),
    (24, 5, 'Bıçak Sırtı 2049', 164, 'K, bir Bıçak Koşucusu olarak eski modelleri emekli etme görevini yürütmektedir. Ancak yaptığı bir keşif, insanlık ve robotlar arasındaki hassas dengeyi tehdit eder. Bu sır, onu geçmişin gölgelerine ve gizemli Deckard’a yönlendirir.', 'Denis Villeneuve', 'Hampton Fancher, Michael Green', 'Ryan Gosling', 8, '/ui/img/Filmler/BilimKurgu-Bicaksirti-4.jpg', 'https://www.youtube.com/embed/gCcx85zbxz4', 'https://www.justwatch.com/us/movie/blade-runner-2049'),
    (25, 5, 'Yıldız Savaşları: Bölüm IV - Yeni Bir Umut', 121, 'Luke Skywalker, sıradan bir çiftçi olarak yaşarken kaderi onu galaksiler arası bir direnişin kahramanı yapar. Prenses Leia’yı kurtarmak ve Ölüm Yıldızı’na karşı savaşmak için efsanevi bir maceraya atılır.', 'George Lucas', 'George Lucas', 'Mark Hamill', 8, '/ui/img/Filmler/BilimKurgu-SVNewHope-5.jpg', 'https://www.youtube.com/embed/vZ734NWnAHA', 'https://www.justwatch.com/us/movie/star-wars-episode-iv-a-new-hope');




CREATE TABLE Categories
(
    CategoryId INT PRIMARY KEY NOT NULL,
    CategoryName NVARCHAR (50)
)

INSERT INTO Categories
    (CategoryId, CategoryName)
VALUES
    (1, 'Aksiyon'),
    (2, 'Komedi'),
    (3, 'Drama'),
    (4, 'Korku'),
    (5, 'Bilim Kurgu');

CREATE TABLE Socials
(
    Id INT PRIMARY KEY NOT NULL,
    SocialName NVARCHAR (25) NOT NULL,
    SocialUrl NVARCHAR (MAX) NOT NULL,
    SocialIcon NVARCHAR (MAX) NOT NULL,
)

INSERT INTO Socials
    (Id,SocialName,SocialUrl,SocialIcon)
VALUES
    (1, 'Instagram', 'https://www.instagram.com', 'instagram')


CREATE TABLE Contacts
(
    Id INT PRIMARY KEY NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    Email NVARCHAR(50) NOT NULL,
    Subject NVARCHAR(50) NOT NULL,
    Message NVARCHAR(150) NOT NULL,
    SendingTime DATETIME NOT NULL,
    ContactId INT NOT NULL,
)

INSERT INTO Contacts
    (Id, Name, Email, Subject, Message, SendingTime, ContactId)
VALUES
    (1, 'Ay�e �elik', 'ayse.celik@example.com', 'Film �nerisi', 'Sitenizde daha fazla aksiyon filmi g�rmek istiyoruz.', '2024-11-07 14:00:00', 101),
    (2, 'Burak Y�ld�z', 'burak.yildiz@example.com', 'Site Hatas�', 'Film izlerken s�rekli ba�lant� kopmas� ya��yorum.', '2023-11-07 15:30:00', 102),
    (3, 'Zeynep Arslan', 'zeynep.arslan@example.com', 'Kullan�c� Yorumlar�', 'Film yorumlar�n� daha �ne ��karabilir misiniz?', '2023-11-07 16:45:00', 103),
    (4, 'Emre Y�ld�r�m', 'emre.yildirim@example.com', 'Film Kalitesi', 'Baz� filmlerin g�r�nt� kalitesi d���k g�r�n�yor.', '2023-11-07 17:20:00', 104),
    (5, 'Merve �zt�rk', 'merve.ozturk@example.com', '�yelik Sorunu', 'Hesab�mda oturum a�makta sorun ya��yorum.', '2023-11-07 18:00:00', 105);


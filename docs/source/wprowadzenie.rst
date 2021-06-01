
Wprowadzenie
================================

Poniższa sekcja zawiera kilka słówn informacji dotyczących zagadnień takich jak serwis *Docker* i *docker-compose*	

Czym jest Docker?
--------------------------------


- *Docker* to oprogramowanie *open-source*, przy pomocy którego można uruchamiać aplikacje jako niezależne od siebie kontenery  zgodnie z konceptem *application as service*,
  w chmurze bądź też lokalnie. Jego niepodważalną zaletą jest fakt, że kontenery platformy Docker mogą zostać uruchomione w dowolnym miejscu, pod systemem operacyjnym Windows
  lub Linux. 

- *Docker* krzysta z architektury typu klient - serwer. Klient komunikuje się z serwerem, który wykonuje wszystkie zadania związane z budowaniem, uruchamianiem i dystrybucją kontenerów.
  Klient i serwer mogą znajdować się na tej samej jednostce, mogą również komunikować się zdalnie przy pomocy REST API, socketów UNIX lub interfejsu sieciowego.

- Kontenery zajmują optymalną ilość zasobów i zawierają w sobie wszystko co konieczne jest do uruchomienia zapakowanych w nich aplikacji tym samym pozwalając na 
  nie przejmowanie się wymaganiami dotyczących środowisk / programów niezbędnych do poprawnego funkcjonowania na hoście skonteneryzowanej aplikacji.

- System konteneryzowania znacząco ułatwia rozwijanie aplikacji, ponieważ za jego pomocą deweloperzy są w stanie z łatwością dzielić się swoją pracą z innymi,
  zachowując przy tym pewność, że u każdego użytkownika aplikacja będzie korzystała z tych samych zasobów, w ten sam sposób, oraz jej wykonywanie będzie przebiegało tak samo
  na wszystkich komputerach, do których zostanie wysłany kontener.

Kilka słów o docker-compose
--------------------------------

- *Docker Compose* to narzędzie służące do obsługi aplikacji składającej się z kilku kontenerów.

- Konfiguracja takiej aplikacji jest wykonywana poprzez edycję pliku *docker-compose.yaml* zawierającego informacje konfiguracyjne dotyczące każdej z aplikacji wchodzącej w skład kontenera.

- Uruchomienie aplikacji przy pomocy docker-compose to zazwyczaj proces, na który składają się trzy kroki:

  1. Zdefiniowanie środowiska aplikacji w pliku *Dockerfile* celem umożliwienia jego reprodukcji u innych klientów.

  2. Zdefiniowanie usług, które wchodzą w skład aplikacji przy pomocy pliku *docker-compose.yaml* dzięki czemu będą one mogły być uruchamiane rownocześnie w odizolowanym środowisku.

  3. Uruchomienie polecenia *docker compose up*, które prowadzi do uruchomienia aplikacji wraz z wszystkimi kontenerami wchodzącymi w jej skład. 

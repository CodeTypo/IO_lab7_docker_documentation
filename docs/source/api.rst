Api
================================

.. note::
	Poniższe endpointy wchodzą w skład aplikacji utworzonej na potrzeby listy "Kontenery Docker", jest
	ona bardzo uproszczona (pominięto np. warstwę serwisową czy modele) ze względu na inne wymagania związane z 
	zadaniem, projekt ten miał służyć do nauki obsługi dockera, w przyszłości również pisania dokumentacji, stąd
	nieduża liczba endpointów.
	

Endpoint GET customers/all
--------------------------------
	Wysłanie zapytania GET pod ten endpoint skutuje próbą nawiązania połączenia z bazą danych, w której następnie wyszukuje się
	wszystkich dostępnych klientów. Jeżeli wyszukiwanie się powiedzie, zostają oni zwracani w postaci listy JSON. Jeżeli nie, użytkownik
	zostaje o tym poinformowany.
	
	

Endpoint GET customers/{id}
---------------------------------

	Wysłanie zapytania GET pod ten endpoint wymagania podania parametru - *id*; skutuje próbą nawiązania połączenia z bazą danych, w której następnie wyszukuje się
	klienta o numerze ID odpowiadającym temu podanemu przez użytkownika. Jeżeli wyszukiwanie się powiedzie, zostaje on zwrócony w postaci obiektu JSON. Jeżeli nie, użytkownik
	zostaje o tym poinformowany.
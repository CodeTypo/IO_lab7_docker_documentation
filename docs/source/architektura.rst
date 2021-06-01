
Architektura
================================

.. note::
	Poniższe schematy dotyczą architektury aplikacji utworzonej na potrzeby listy "Kontenery Docker", jest więc
	ona bardzo uproszczona (pominięto np. warstwę serwisową czy modele) ze względu na inne wymagania związane z 
	zadaniem, projekt ten miał służyć do nauki obsługi dockera, w przyszłości również pisania dokumentacji, stąd
	niedociągnięcia w architekturze aplikacji.
	



Zapytanie GET customers/all
--------------------------------

Przepływ informacji podczas wysłania zapytania
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. uml::

    User -> Controller: GET /customers/all 
    Controller --> CustomerRepository: findAll()
	CustomerRepository --> PostgresDB: Select * FROM Customers
	
	PostgresDB --> CustomerRepository: Response (if succesfull)
	CustomerRepository --> Controller: Response
	Controller --> User: Response
	
	
	

Zapytanie GET customers/{id}
---------------------------------

Przepływ informacji podczas wysłania zapytania
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. uml::

    User -> Controller: GET /customers/{iD}
    Controller --> CustomerRepository: findById(iD)
	CustomerRepository --> PostgresDB: Select * FROM Customers WHERE id = iD
	
	PostgresDB --> CustomerRepository: Response (if succesfull)
	CustomerRepository --> Controller: Response
	Controller --> User: Response


Diagram klas UML
---------------------------------	
	
.. uml::

	Lab3Application ..|> CustomerRepository : create
	Lab3Application ..|> Customer
	CustomerController "1" *--> "1" CustomerRepository
	CustomerController ..|> CustomerRepository
	CustomerController ..|> Customer
	CustomerRepository ..|> Customer
	
	interface CustomerRepository{
	+Customer findById(long)
	+List<Customer> findByLastName(String)
	}
	
	class Customer{
	-id: Long
	-firstName : String
	-lastName: String
	+String toSting()
	}

	class CustomerController{
	-customerRepository: CustomerRepository
	+Customer getUserById(Long)
	+Iterable<Customer> getCustomers()
	}
	
	class Lab3Application{
	+logger : Logger
	+CommandLineRunner dataBootstrap(CustomerRepository)
	+void main(String[])
	}
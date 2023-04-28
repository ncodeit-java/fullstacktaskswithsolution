
### :camel: Spring Boot Rest examples
---

#### Task1: Create a Product class with ProductId,ProductName,address and create a Product list in DAO class, Create a GET method in controller to get all Products

	* Classes flow should controller (GET method)->service->Dao

#### Task2: Create a GET method in controller to get Product details by passing ProductId in the rest url,ProductId should be part of path param

	* Classes flow should controller (GET method)->service->Dao
	
#### Task3: Create a POST method in controller to save Product details. Controller method take Product as input parameter.And check by calling get all Products api, if you are able to get the Product details you added.

	* Classes flow should controller (POST method)->service->Dao

#### Task4: Create a PUT method in controller to update Product details. Controller method take Product as input parameter and url should have ProductId as path param.And check by calling get all Products api, if you are able to get the updated Product details.

	* Classes flow should controller (POST method)->service->Dao

#### Task5: Create a DELETE method in controller to delete Product details. Controller method take Product as input parameter and url should have the ProductId as path param.And check by calling get all Products api, if you are able to delete the Product details, the delete one should not present in the output.

	* Classes flow should controller (POST method)->service->Dao


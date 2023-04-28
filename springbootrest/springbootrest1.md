
### :camel: Spring Boot Rest examples
---

#### Task1: Create a Student class with studentId,studentName,address and create a student list in DAO class, Create a GET method in controller to get all students

	* Classes flow should controller (GET method)->service->Dao

#### Task2: Create a GET method in controller to get Student details by passing studentId in the rest url,studentId should be part of path param

	* Classes flow should controller (GET method)->service->Dao
	
#### Task3: Create a POST method in controller to save Student details. Controller method take Student as input parameter.And check by calling get all students api, if you are able to get the student details you added.

	* Classes flow should controller (POST method)->service->Dao

#### Task4: Create a PUT method in controller to update Student details. Controller method take Student as input parameter and url should have studentId as path param.And check by calling get all students api, if you are able to get the updated student details.

	* Classes flow should controller (POST method)->service->Dao

#### Task5: Create a DELETE method in controller to delete Student details. Controller method take Student as input parameter and url should have the studentId as path param.And check by calling get all students api, if you are able to delete the student details, the delete one should not present in the output.

	* Classes flow should controller (POST method)->service->Dao


### :camel: Swagger
---

#### Step1: Download the springboot-tutorial project and import into eclipse and verify by running the class - SpringBootJpaH2Application, check console if any errors exist

#### Step2: If no errors, stop the server

#### Step3:Add below dependency in pom.xml

```
		<dependency>
			<groupId>org.springdoc</groupId>
			<artifactId>springdoc-openapi-ui</artifactId>
			 <version>1.6.4</version>
		</dependency>

```


#### Step4: Add swagger annotations to controller class - TutorialController
	
#### Step5: Get the swagger json using url - http://localhost:8080/api/v3/api-docs

#### Step6: Go to editor.swagger.io and copy the json and see if API documentation displays

#### Step7: Go to swagger UI - http://localhost:8080/swagger-ui/index.html and test the API's

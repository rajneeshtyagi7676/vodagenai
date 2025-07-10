
package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class GenerateidPOSTTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void GenerateListofIDforCreditProfileformigration/creditProfile/generateIDforresponsecode200() {
        given()
            .contentType(ContentType.JSON)
            .body("{}")
        .when()
            .post("/creditProfile/generateID")
        .then()
            .statusCode(200)
            ;
    }
        

    @Test
    public void GenerateListofIDforCreditProfileformigration/creditProfile/generateIDforresponsecode400() {
        given()
            .contentType(ContentType.JSON)
            .body("{}")
        .when()
            .post("/creditProfile/generateID")
        .then()
            .statusCode(400)
            ;
    }
        

    @Test
    public void GenerateListofIDforCreditProfileformigration/creditProfile/generateIDforresponsecode404() {
        given()
            .contentType(ContentType.JSON)
            .body("{}")
        .when()
            .post("/creditProfile/generateID")
        .then()
            .statusCode(404)
            ;
    }
        

    @Test
    public void GenerateListofIDforCreditProfileformigration/creditProfile/generateIDforresponsecode409() {
        given()
            .contentType(ContentType.JSON)
            .body("{}")
        .when()
            .post("/creditProfile/generateID")
        .then()
            .statusCode(409)
            ;
    }
        

    @Test
    public void GenerateListofIDforCreditProfileformigration/creditProfile/generateIDforresponsecode422() {
        given()
            .contentType(ContentType.JSON)
            .body("{}")
        .when()
            .post("/creditProfile/generateID")
        .then()
            .statusCode(422)
            ;
    }
        

    @Test
    public void GenerateListofIDforCreditProfileformigration/creditProfile/generateIDforresponsecode500() {
        given()
            .contentType(ContentType.JSON)
            .body("{}")
        .when()
            .post("/creditProfile/generateID")
        .then()
            .statusCode(500)
            ;
    }
        

    @Test
    public void GenerateListofIDforCreditProfileformigration/creditProfile/generateIDforresponsecode502() {
        given()
            .contentType(ContentType.JSON)
            .body("{}")
        .when()
            .post("/creditProfile/generateID")
        .then()
            .statusCode(502)
            ;
    }
        
}
    

package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class CalculatenextpossibleterminationdateGETTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void TMF637ProductInventoryManagementresource/product/{productId}/calculateNextPossibleTerminationDateforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            
        .when()
            .get("/product/{productId}/calculateNextPossibleTerminationDate")
        .then()
            .statusCode(200)
            .body("$", isA(Map.class));
    }
        
}
    
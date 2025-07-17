
package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class ProductGETTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void TMF637ProductInventoryManagementresource/productforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            
        .when()
            .get("/product")
        .then()
            .statusCode(200)
            .body("$", isA(Map.class));
    }
        
}
    
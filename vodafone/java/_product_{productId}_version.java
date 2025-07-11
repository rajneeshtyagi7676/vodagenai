
package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class VersionGETTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void TMF637ProductInventoryManagementresource/product/{productId}/versionforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            .queryParam("dateFrom", "test_value")
            .queryParam("dateTo", "test_value")
            .queryParam("offset", "test_value")
            .queryParam("limit", "test_value")
            .queryParam("mask", "test_value")
        .when()
            .get("/product/{productId}/version")
        .then()
            .statusCode(200)
            .body("$", isA(List.class));
    }
        
}
    

package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class PostaladdressGETTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void TMF629CustomerManagementresource/customer/{customerId}/postalAddressforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            .queryParam("filters", "test_value")
            .queryParam("salesChannel", "test_value")
            .queryParam("includeFrom", "test_value")
        .when()
            .get("/customer/{customerId}/postalAddress")
        .then()
            .statusCode(200)
            .body("$", isA(List.class));
    }
        
}
    
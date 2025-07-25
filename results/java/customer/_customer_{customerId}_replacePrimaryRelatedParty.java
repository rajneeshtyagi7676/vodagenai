
package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class ReplaceprimaryrelatedpartyGETTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void TMF629CustomerManagementresource/customer/{customerId}/replacePrimaryRelatedPartyforresponsecode201Created() {
        given()
            .contentType(ContentType.JSON)
            .queryParam("salesChannel", "test_value")
        .when()
            .get("/customer/{customerId}/replacePrimaryRelatedParty")
        .then()
            .statusCode(201)
            .body("$", isA(Map.class));
    }
        
}
    

package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class CustomerrelatedpartyreferredtypeGETTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void TMF629CustomerManagementresource/customerRelatedPartyReferredTypeforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            .queryParam("salesChannel", "test_value")
            .queryParam("fields", "test_value")
            .queryParam("include", "test_value")
            .queryParam("isDefault", "test_value")
            .queryParam("sort", "test_value")
            .queryParam("customerRelatedPartyReferredType", "test_value")
        .when()
            .get("/customerRelatedPartyReferredType")
        .then()
            .statusCode(200)
            .body("$", isA(List.class));
    }
        
}
    
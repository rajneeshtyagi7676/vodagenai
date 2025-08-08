
package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.module.jsv.JsonSchemaValidator;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import org.testng.annotations.DataProvider;
import static io.restassured.RestAssured.*;
import static io.restassured.module.jsv.JsonSchemaValidator.*;
import static org.hamcrest.Matchers.*;

/**
 * Generated API tests for Removerelatedparty GET endpoint
 * Based on Gherkin scenarios
 * Generated at: 2025-08-08T17:39:08.124400
 */
public class RemoverelatedpartyGETTest {

    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
        RestAssured.enableLoggingOfRequestAndResponseIfValidationFails();
    }

    
    @Test
    public void TMF637ProductInventoryManagementresource/customer/{customerId}/removeRelatedPartyforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            
        .when()
            .get("/customer/{customerId}/removeRelatedParty")
        .then()
            .statusCode(200)
            .body("$", isA(Map.class))
            .body("id", notNullValue())
            .body("name", notNullValue());
    }
        

    // Test data builder helper class
    private static class TestDataBuilder {
        public static String createValidRequest() {
            return "{"name": "test", "type": "valid"}";
        }

        public static String createMinimalRequest() {
            return "{}";
        }
    }
}
    
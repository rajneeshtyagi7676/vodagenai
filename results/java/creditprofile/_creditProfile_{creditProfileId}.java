
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
 * Generated API tests for {creditprofileid} GET endpoint
 * Based on Gherkin scenarios
 * Generated at: 2025-08-08T09:46:39.087246
 */
public class {creditprofileid}GETTest {

    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
        RestAssured.enableLoggingOfRequestAndResponseIfValidationFails();
    }

    
    @Test
    public void TMF629CustomerManagementresource/creditProfile/{creditProfileId}forresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            .queryParam("fields", "test_value")
        .when()
            .get("/creditProfile/{creditProfileId}")
        .then()
            .statusCode(200)
            .body("$", isA(Map.class))
            .body("id", notNullValue())
            .body("$", isA(List.class))
            .body("size()", greaterThan(0))
            .body("id", notNullValue())
            .body("id", notNullValue())
            .body("name", notNullValue())
            .body("id", notNullValue())
            .body("name", notNullValue())
            .body("id", notNullValue())
            .body("$", isA(List.class))
            .body("size()", greaterThan(0))
            .body("$", isA(List.class))
            .body("size()", greaterThan(0))
            .body("$", isA(List.class))
            .body("size()", greaterThan(0));
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
    
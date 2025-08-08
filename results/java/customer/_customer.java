
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
 * Generated API tests for Customer GET endpoint
 * Based on Gherkin scenarios
 * Generated at: 2025-08-08T09:10:53.542289
 */
public class CustomerGETTest {

    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
        RestAssured.enableLoggingOfRequestAndResponseIfValidationFails();
    }

    
    @Test
    public void TMF629CustomerManagementresource/customerforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            .queryParam("name", "test_value")
            .queryParam("id", "test_value")
            .queryParam("href", "test_value")
            .queryParam("salesChannel", "test_value")
            .queryParam("filter", "test_value")
            .queryParam("filters", "test_value")
            .queryParam("sort", "test_value")
            .queryParam("limit", "test_value")
            .queryParam("offset", "test_value")
            .queryParam("returnTotalCount", "test_value")
        .when()
            .get("/customer")
        .then()
            .statusCode(200)
            .body("$", isA(List.class))
            .body("size()", greaterThan(0))
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
    
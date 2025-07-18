
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
            .queryParam("filter", "test_value")
            .queryParam("replacableProductOfferingId", "test_value")
            .queryParam("productEnabledByProductId", "test_value")
            .queryParam("offset", "test_value")
            .queryParam("limit", "test_value")
            .queryParam("after", "test_value")
            .queryParam("searchAfterStrategy", "test_value")
            .queryParam("calculatePrice", "test_value")
            .queryParam("calculateTax", "test_value")
            .queryParam("mask", "test_value")
            .queryParam("returnTotalCount", "test_value")
        .when()
            .get("/product")
        .then()
            .statusCode(200)
            .body("$", isA(List.class));
    }
        
}
    
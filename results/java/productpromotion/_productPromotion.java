
package com.test.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class ProductpromotionGETTest {
    
    @BeforeClass
    public void setup() {
        RestAssured.baseURI = System.getProperty("test.api.baseurl", "http://localhost:8080");
    }
    
    
    @Test
    public void TMF637ProductInventoryManagementresource/productPromotionforresponsecode200OK() {
        given()
            .contentType(ContentType.JSON)
            .queryParam("filter", "test_value")
            .queryParam("status", "test_value")
            .queryParam("dateFrom", "test_value")
            .queryParam("dateTo", "test_value")
            .queryParam("promotionId", "test_value")
            .queryParam("relatedPartyId", "test_value")
            .queryParam("offset", "test_value")
            .queryParam("limit", "test_value")
        .when()
            .get("/productPromotion")
        .then()
            .statusCode(200)
            .body("$", isA(List.class));
    }
        
}
    
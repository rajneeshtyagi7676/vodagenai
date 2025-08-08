Feature: TMF637 Product Inventory Management - resource /customerContactMediumType for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /customerContactMediumType for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /customerContactMediumType
    And for header Accept is set to [HEADER-ACCEPT-PLACEHOLDER]
    And for header Content-Type is set to [HEADER-CONTENT-TYPE-PLACEHOLDER]
    And valid Bearer authorization token
    When I send a GET request to /customerContactMediumType
    Then the response status code should be 200
    And the response should contain customer contact medium type information
    And the response header Content-Type should contain [RESPONSE-Content-Type-PLACEHOLDER]
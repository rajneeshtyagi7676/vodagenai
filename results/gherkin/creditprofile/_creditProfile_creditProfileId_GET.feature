Feature: TMF637 Product Inventory Management - resource /creditProfile/{creditProfileId} for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /creditProfile/{creditProfileId} for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /creditProfile/{creditProfileId}
    And valid Bearer authorization token
    And for path creditProfileId is set to [PATH-creditProfileId-PLACEHOLDER]
    When I send a GET request to /creditProfile/{creditProfileId}
    Then the response status code should be 200
    And the response should contain a Credit Profile object
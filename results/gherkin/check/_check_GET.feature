Feature: TMF629 Customer Management - resource /check for response code 200 OK

Scenario: TMF629 Customer Management - resource /check for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /check
    And for header Accept is set to [HEADER-ACCEPT-PLACEHOLDER]
    And valid Bearer authorization token
    When I send a GET request to /check
    Then the response status code should be 200
    And the response should indicate the API is operational
    And the response should contain service status information
    And the response should include API version details
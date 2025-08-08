Feature: TMF637 Product Inventory Management - resource /accountReferredType for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /accountReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /accountReferredType
  And valid Bearer authorization token
  When I send a GET request to /accountReferredType
  Then the response status code should be 200
  And the response should contain account referred type information
  And the response should follow the structure defined in the API specification
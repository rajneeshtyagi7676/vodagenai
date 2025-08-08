Feature: TMF637 Product Inventory Management - resource /characteristicValueType for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /characteristicValueType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /characteristicValueType
  And valid Bearer authorization token
  When I send a GET request to /characteristicValueType
  Then the response status code should be 200
  And the response should contain characteristic value types
  And the response should include metadata about available characteristic value types
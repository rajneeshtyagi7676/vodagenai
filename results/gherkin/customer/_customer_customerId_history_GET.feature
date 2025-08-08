Feature: TMF637 Product Inventory Management - resource /customer/{customerId}/history for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /customer/{customerId}/history for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /customer/{customerId}/history
  And valid Bearer authorization token
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/history
  Then the response status code should be 200
  And the response should contain customer history information
  And the response should include product inventory changes over time
Feature: TMF637 Product Inventory Management - resource /customerEngagedPartyReferredType for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /customerEngagedPartyReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /customerEngagedPartyReferredType
  And valid Bearer authorization token
  When I send a GET request to /customerEngagedPartyReferredType
  Then the response status code should be 200
  And the response should contain the referred type information
  And the response should include details about customer engaged party references
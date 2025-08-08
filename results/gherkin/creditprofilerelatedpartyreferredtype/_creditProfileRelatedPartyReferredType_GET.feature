Feature: TMF637 Product Inventory Management - resource /creditProfileRelatedPartyReferredType for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /creditProfileRelatedPartyReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /creditProfileRelatedPartyReferredType
  And valid Bearer authorization token
  When I send a GET request to /creditProfileRelatedPartyReferredType
  Then the response status code should be 200
  And the response should contain the referred type information
  And the response should include appropriate data format and structure
Feature: TMF637 Product Inventory Management - resource /customerRelatedPartyReferredType/{customerRelatedPartyReferredType}/customerRelatedPartyReferredTypeRole for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /customerRelatedPartyReferredType/{customerRelatedPartyReferredType}/customerRelatedPartyReferredTypeRole for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /customerRelatedPartyReferredType/{customerRelatedPartyReferredType}/customerRelatedPartyReferredTypeRole
  And valid Bearer authorization token
  And for path customerRelatedPartyReferredType is set to [PATH-customerRelatedPartyReferredType-PLACEHOLDER]
  When I send a GET request to /customerRelatedPartyReferredType/{customerRelatedPartyReferredType}/customerRelatedPartyReferredTypeRole
  Then the response status code should be 200
  And the response should contain customer related party referred type role information
  And the response should include details about the relationship between customer and related party
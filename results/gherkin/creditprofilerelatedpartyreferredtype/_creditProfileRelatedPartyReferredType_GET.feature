Feature: TMF629 Customer Management - resource /creditProfileRelatedPartyReferredType for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfileRelatedPartyReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfileRelatedPartyReferredType
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-If-Modified-Since-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  And for query include is set to [QUERY-include-PLACEHOLDER]
  And for query isDefault is set to [QUERY-isDefault-PLACEHOLDER]
  And for query sort is set to [QUERY-sort-PLACEHOLDER]
  And for query creditProfileRelatedPartyReferredType is set to [QUERY-creditProfileRelatedPartyReferredType-PLACEHOLDER]
  When I send a GET request to /creditProfileRelatedPartyReferredType
  Then the response status code should be 200
  And the response should contain an array of CreditProfileRelatedPartyReferredType objects
  And each CreditProfileRelatedPartyReferredType object should have the required properties: @type
  And each CreditProfileRelatedPartyReferredType object should have the optional properties: creditProfileRelatedPartyReferredType, creditProfileRelatedPartyReferredTypeRole, extensions, active, default, fullLabelDisplay, href, selectionDisplay, shortLabelDisplay
  And the response header cache-control should contain [RESPONSE-cache-control-PLACEHOLDER]
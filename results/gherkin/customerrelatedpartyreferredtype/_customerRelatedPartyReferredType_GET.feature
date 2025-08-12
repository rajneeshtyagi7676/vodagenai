Feature: TMF629 Customer Management - resource /customerRelatedPartyReferredType for response code 200 OK

Scenario: TMF629 Customer Management - resource /customerRelatedPartyReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customerRelatedPartyReferredType
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-If-Modified-Since-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  And for query include is set to [QUERY-include-PLACEHOLDER]
  And for query isDefault is set to [QUERY-isDefault-PLACEHOLDER]
  And for query sort is set to [QUERY-sort-PLACEHOLDER]
  And for query customerRelatedPartyReferredType is set to [QUERY-customerRelatedPartyReferredType-PLACEHOLDER]
  When I send a GET request to /customerRelatedPartyReferredType
  Then the response status code should be 200
  And the response should contain an array of CustomerRelatedPartyReferredType objects
  And each CustomerRelatedPartyReferredType object should have the required properties: @type
  And each CustomerRelatedPartyReferredType object should have the optional properties: customerRelatedPartyReferredType, customerRelatedPartyReferredTypeRole, extensions, active, default, fullLabelDisplay, href, selectionDisplay, shortLabelDisplay
  And the response header cache-control should contain [RESPONSE-cache-control-PLACEHOLDER]
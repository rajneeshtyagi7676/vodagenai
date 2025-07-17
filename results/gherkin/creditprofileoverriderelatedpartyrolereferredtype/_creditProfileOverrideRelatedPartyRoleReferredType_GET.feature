Feature: TMF629 Customer Management - resource /creditProfileOverrideRelatedPartyRoleReferredType for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfileOverrideRelatedPartyRoleReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfileOverrideRelatedPartyRoleReferredType
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-If-Modified-Since-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  And for query include is set to [QUERY-include-PLACEHOLDER]
  And for query isDefault is set to [QUERY-isDefault-PLACEHOLDER]
  And for query sort is set to [QUERY-sort-PLACEHOLDER]
  And for query creditProfileOverrideRelatedPartyRoleReferredType is set to [QUERY-creditProfileOverrideRelatedPartyRoleReferredType-PLACEHOLDER]
  When I send a GET request to /creditProfileOverrideRelatedPartyRoleReferredType
  Then the response status code should be 200
  And the response should contain an array of CreditProfileOverrideRelatedPartyRoleReferredType objects
  And each CreditProfileOverrideRelatedPartyRoleReferredType object should have the required properties: creditProfileOverrideRelatedPartyRoleReferredType
  And each CreditProfileOverrideRelatedPartyRoleReferredType object should have the optional properties: href, shortLabelDisplay, fullLabelDisplay, selectionDisplay, active, default, @type, creditProfileOverrideRelatedPartyRoleReferredTypeRole
  And the response header cache-control should contain [RESPONSE-cache-control-PLACEHOLDER]
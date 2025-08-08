Feature: TMF629 Customer Management - resource /creditProfileOverrideRelatedPartyRoleReferredType/{creditProfileOverrideRelatedPartyRoleReferredType}/creditProfileOverrideRelatedPartyRoleReferredTypeRole for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfileOverrideRelatedPartyRoleReferredType/{creditProfileOverrideRelatedPartyRoleReferredType}/creditProfileOverrideRelatedPartyRoleReferredTypeRole for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfileOverrideRelatedPartyRoleReferredType/{creditProfileOverrideRelatedPartyRoleReferredType}/creditProfileOverrideRelatedPartyRoleReferredTypeRole
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-IF-MODIFIED-SINCE-PLACEHOLDER]
  And valid Bearer authorization token
  And for path creditProfileOverrideRelatedPartyRoleReferredType is set to [PATH-CREDITPROFILEOVERRIDERELATEDPARTYROLEREFERREDTYPE-PLACEHOLDER]
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query fields is set to [QUERY-FIELDS-PLACEHOLDER]
  And for query include is set to [QUERY-INCLUDE-PLACEHOLDER]
  And for query isDefault is set to [QUERY-ISDEFAULT-PLACEHOLDER]
  And for query sort is set to [QUERY-SORT-PLACEHOLDER]
  And for query creditProfileOverrideRelatedPartyRoleReferredTypeRole is set to [QUERY-CREDITPROFILEOVERRIDERELATEDPARTYROLEREFERREDTYPEROLE-PLACEHOLDER]
  When I send a GET request to /creditProfileOverrideRelatedPartyRoleReferredType/{creditProfileOverrideRelatedPartyRoleReferredType}/creditProfileOverrideRelatedPartyRoleReferredTypeRole
  Then the response status code should be 200
  And the response should contain an array of CreditProfileOverrideRelatedPartyRoleReferredTypeRole objects
  And each CreditProfileOverrideRelatedPartyRoleReferredTypeRole object should have the required properties: creditProfileOverrideRelatedPartyRoleReferredType, creditProfileOverrideRelatedPartyRoleReferredTypeRole
  And each CreditProfileOverrideRelatedPartyRoleReferredTypeRole object should have the optional properties: href, shortLabelDisplay, fullLabelDisplay, selectionDisplay, active, default, @type, extensions
  And the response header cache-control should contain [RESPONSE-CACHE-CONTROL-PLACEHOLDER]
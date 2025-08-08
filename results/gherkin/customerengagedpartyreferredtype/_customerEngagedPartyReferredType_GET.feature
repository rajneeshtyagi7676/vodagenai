Feature: TMF629 Customer Management - resource /customerEngagedPartyReferredType for response code 200 OK

Scenario: TMF629 Customer Management - resource /customerEngagedPartyReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customerEngagedPartyReferredType
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-IF-MODIFIED-SINCE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query fields is set to [QUERY-FIELDS-PLACEHOLDER]
  And for query include is set to [QUERY-INCLUDE-PLACEHOLDER]
  And for query isDefault is set to [QUERY-ISDEFAULT-PLACEHOLDER]
  And for query sort is set to [QUERY-SORT-PLACEHOLDER]
  And for query customerEngagedPartyReferredType is set to [QUERY-CUSTOMERENGAGEDPARTYREFERREDTYPE-PLACEHOLDER]
  When I send a GET request to /customerEngagedPartyReferredType
  Then the response status code should be 200
  And the response should contain an array of CustomerEngagedPartyReferredType objects
  And each CustomerEngagedPartyReferredType object should have the required properties: @type
  And each CustomerEngagedPartyReferredType object should have the optional properties: active, default, fullLabelDisplay, href, selectionDisplay, shortLabelDisplay, customerEngagedPartyReferredType, extensions
  And the response header cache-control should contain [RESPONSE-CACHE-CONTROL-PLACEHOLDER]
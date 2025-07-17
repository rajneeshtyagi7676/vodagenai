Feature: TMF629 Customer Management - resource /creditProfileStatus for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfileStatus for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfileStatus
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-IF-MODIFIED-SINCE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query fields is set to [QUERY-FIELDS-PLACEHOLDER]
  And for query include is set to [QUERY-INCLUDE-PLACEHOLDER]
  And for query isDefault is set to [QUERY-ISDEFAULT-PLACEHOLDER]
  And for query creditProfileStatus is set to [QUERY-CREDITPROFILESTATUS-PLACEHOLDER]
  When I send a GET request to /creditProfileStatus
  Then the response status code should be 200
  And the response should contain an array of CreditProfileStatus objects
  And each CreditProfileStatus object should have the required properties: creditProfileStatus
  And each CreditProfileStatus object should have the optional properties: href, shortLabelDisplay, fullLabelDisplay, selectionDisplay, active, default, @type, transitionToStatus
  And the response header cache-control should contain [RESPONSE-CACHE-CONTROL-PLACEHOLDER]
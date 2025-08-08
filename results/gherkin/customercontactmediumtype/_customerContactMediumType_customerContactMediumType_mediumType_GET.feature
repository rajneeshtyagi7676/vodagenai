Feature: TMF629 Customer Management - resource /customerContactMediumType/{customerContactMediumType}/mediumType for response code 200 OK

Scenario: TMF629 Customer Management - resource /customerContactMediumType/{customerContactMediumType}/mediumType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customerContactMediumType/{customerContactMediumType}/mediumType
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-If-Modified-Since-PLACEHOLDER]
  And valid Bearer authorization token
  And for path customerContactMediumType is set to [PATH-customerContactMediumType-PLACEHOLDER]
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  And for query include is set to [QUERY-include-PLACEHOLDER]
  And for query isDefault is set to [QUERY-isDefault-PLACEHOLDER]
  And for query mediumType is set to [QUERY-mediumType-PLACEHOLDER]
  When I send a GET request to /customerContactMediumType/{customerContactMediumType}/mediumType
  Then the response status code should be 200
  And the response should contain an array of MediumType objects
  And each MediumType object should have the required properties: @type
  And each MediumType object should have the optional properties: mediumType, active, default, fullLabelDisplay, href, selectionDisplay, shortLabelDisplay
  And the response header cache-control should contain [RESPONSE-cache-control-PLACEHOLDER]
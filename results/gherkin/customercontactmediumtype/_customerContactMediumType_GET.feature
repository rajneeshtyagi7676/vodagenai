Feature: TMF629 Customer Management - resource /customerContactMediumType for response code 200 OK

Scenario: TMF629 Customer Management - resource /customerContactMediumType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customerContactMediumType
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-IF-MODIFIED-SINCE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query fields is set to [QUERY-FIELDS-PLACEHOLDER]
  And for query include is set to [QUERY-INCLUDE-PLACEHOLDER]
  And for query isDefault is set to [QUERY-ISDEFAULT-PLACEHOLDER]
  And for query customerContactMediumType is set to [QUERY-CUSTOMERCONTACTMEDIUMTYPE-PLACEHOLDER]
  When I send a GET request to /customerContactMediumType
  Then the response status code should be 200
  And the response should contain an array of CustomerContactMediumType objects
  And the response header cache-control should contain [RESPONSE-CACHE-CONTROL-PLACEHOLDER]
  And each CustomerContactMediumType object should have the required properties: customerContactMediumType, mediumType
  And each CustomerContactMediumType object should have the optional properties: href, shortLabelDisplay, fullLabelDisplay, selectionDisplay, active, default, '@type'
  And each mediumType array should contain at least one MediumType object
  And each MediumType object should have the required properties: mediumType
  And each MediumType object should have the optional properties: href, shortLabelDisplay, fullLabelDisplay, selectionDisplay, active, default, '@type'
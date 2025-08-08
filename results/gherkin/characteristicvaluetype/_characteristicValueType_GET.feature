Feature: TMF629 Customer Management - resource /characteristicValueType for response code 200 OK

Scenario: TMF629 Customer Management - resource /characteristicValueType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /characteristicValueType
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-If-Modified-Since-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  And for query include is set to [QUERY-include-PLACEHOLDER]
  And for query isDefault is set to [QUERY-isDefault-PLACEHOLDER]
  And for query sort is set to [QUERY-sort-PLACEHOLDER]
  And for query characteristicValueType is set to [QUERY-characteristicValueType-PLACEHOLDER]
  When I send a GET request to /characteristicValueType
  Then the response status code should be 200
  And the response should contain an array of CharacteristicValueType objects
  And the response header cache-control should contain [RESPONSE-cache-control-PLACEHOLDER]
  And each CharacteristicValueType object should have the required properties: @type
  And each CharacteristicValueType object should have the optional properties: characteristicValueType, extensions, active, default, fullLabelDisplay, href, selectionDisplay, shortLabelDisplay
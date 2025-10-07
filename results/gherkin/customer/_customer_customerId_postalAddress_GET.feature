Feature: TMF629 Customer Management - resource /customer/{customerId}/postalAddress for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/postalAddress for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/postalAddress
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query filters is set to [QUERY-FILTERS-PLACEHOLDER]
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query includeFrom is set to [QUERY-INCLUDEFROM-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/postalAddress
  Then the response status code should be 200
  And the response should contain an array of MediumCharacteristic objects
  And the response header Etag should contain [RESPONSE-ETAG-PLACEHOLDER]
  And each MediumCharacteristic object should have the optional properties: @baseType, @schemaLocation, city, contactType, country, emailAddress, faxNumber, number, phoneNumber, place, postCode, socialNetworkId, stateOrProvince, street1, street2, type
  And if present, the place property should be a PlaceRef object with properties: @referredType, @type, id, subPlace
  And if present, the subPlace property should be an array of SubPlaceRef objects with properties: @referredType, @type, id
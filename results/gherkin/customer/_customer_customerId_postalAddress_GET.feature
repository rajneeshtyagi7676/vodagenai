Feature: TMF629 Customer Management - resource /customer/{customerId}/postalAddress for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/postalAddress for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/postalAddress
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query filters is set to [QUERY-filters-PLACEHOLDER]
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query includeFrom is set to [QUERY-includeFrom-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/postalAddress
  Then the response status code should be 200
  And the response should contain an array of MediumCharacteristic objects
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
  And each MediumCharacteristic object should have the optional properties: type, contactType, emailAddress, number, faxNumber, phoneNumber, socialNetworkId, city, country, postCode, stateOrProvince, street1, street2, place, @baseType, @schemaLocation, extensions
  And if place is present, it should have the properties: id, @referredType, @type, subPlace
  And if subPlace is present, it should be an array of objects with properties: id, @referredType, @type
  And if extensions is present, it should have the optional properties: streetName, streetNumber, verificationStatus, additionalNumber, additional1, additional2, geographicAddressType
Feature: TMF629 Customer Management - resource /archive/customer/{customerId} for response code 200 OK

Scenario: TMF629 Customer Management - resource /archive/customer/{customerId} for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /archive/customer/{customerId}
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  When I send a GET request to /archive/customer/{customerId}
  Then the response status code should be 200
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, status
  And the Customer object should have the optional properties: name, description, customerType, customerSubType, engagedParty, account, characteristic, contactMedium, creditProfile, agreement, relatedParty, validFor, statusDate, statusReason, paymentMethod, rank, acquisitionDate, createdOn, lastModifiedOn, @baseType, @schemaLocation, @type, extensions
  And the Customer engagedParty should contain a PartyRefOrValue object
  And the Customer creditProfile should contain an array of CreditProfile objects
  And the Customer contactMedium should contain an array of ContactMedium objects
  And the Customer account should contain an array of AccountRefOrValue objects
  And the Customer relatedParty should contain an array of RelatedPartyRef objects
  And the Customer paymentMethod should contain an array of PaymentMethodRef objects
  And the Customer agreement should contain an array of AgreementRef objects
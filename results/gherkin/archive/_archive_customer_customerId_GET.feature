Feature: TMF629 Customer Management - resource /archive/customer/{customerId} for response code 200 OK

Scenario: TMF629 Customer Management - resource /archive/customer/{customerId} for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /archive/customer/{customerId}
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  When I send a GET request to /archive/customer/{customerId}
  Then the response status code should be 200
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, name, status
  And the Customer object should have the optional properties: href, statusReason, statusDate, validFor, characteristic, engagedParty, relatedParty, account, paymentMethod, creditProfile, contactMedium, createdOn, lastModifiedOn, @baseType, @type, @schemaLocation, customerType, customerSubType, acquisitionDate, description, rank, externalIdentifier, agreement, extensions
  And the Customer object engagedParty should contain a PartyRefOrValue object
  And the Customer object relatedParty should contain an array of RelatedPartyRef objects
  And the Customer object account should contain an array of AccountRefOrValue objects
  And the Customer object paymentMethod should contain an array of PaymentMethodRef objects
  And the Customer object creditProfile should contain an array of CreditProfile objects
  And the Customer object contactMedium should contain an array of ContactMedium objects
  And the Customer object characteristic should contain an array of Characteristic objects
  And the Customer object externalIdentifier should contain an array of ExternalIdentifier objects
  And the Customer object agreement should contain an array of AgreementRef objects
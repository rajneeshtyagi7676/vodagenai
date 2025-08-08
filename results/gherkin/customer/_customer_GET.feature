Feature: TMF629 Customer Management - resource /customer for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query excludeEntityCreation is set to [QUERY-excludeEntityCreation-PLACEHOLDER]
  And for body Customer is set to [BODY-Customer-PLACEHOLDER]
  When I send a POST request to /customer
  Then the response status code should be 200
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, href, status
  And the Customer object should have the optional properties: name, statusReason, statusDate, validFor, characteristic, engagedParty, relatedParty, account, paymentMethod, creditProfile, contactMedium, customerType, customerSubType, acquisitionDate, description, rank, externalIdentifier, agreement, extensions
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
Feature: TMF629 Customer Management - resource /customer/{customerId}/removeRelatedParty for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/removeRelatedParty for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/removeRelatedParty
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for header If-Match is set to [HEADER-If-Match-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for body RelatedParty is set to [BODY-RelatedParty-PLACEHOLDER]
  When I send a POST request to /customer/{customerId}/removeRelatedParty
  Then the response status code should be 200
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, status
  And the Customer object should have the optional properties: name, description, customerType, customerSubType, engagedParty, account, characteristic, contactMedium, paymentMethod, relatedParty, validFor, statusDate, statusReason, createdOn, lastModifiedOn, acquisitionDate, agreement, rank, extensions, externalIdentifier
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
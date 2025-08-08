Feature: TMF629 Customer Management - resource /customer/{customerId}/addPostalAddress for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/addPostalAddress for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/addPostalAddress
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for header If-Match is set to [HEADER-If-Match-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for body Medium is set to [BODY-Medium-PLACEHOLDER]
  When I send a POST request to /customer/{customerId}/addPostalAddress
  Then the response status code should be 200
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, name, status
  And the Customer object should have the optional properties: description, customerType, customerSubType, engagedParty, account, characteristic, contactMedium, creditProfile, agreement, relatedParty, validFor, paymentMethod, statusDate, statusReason, rank, acquisitionDate, createdOn, lastModifiedOn, extensions, externalIdentifier
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
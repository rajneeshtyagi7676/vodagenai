Feature: TMF629 Customer Management - resource /customer/{customerId} for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId} for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query embed is set to [QUERY-EMBED-PLACEHOLDER]
  And for query retrieveSegment is set to [QUERY-RETRIEVESEGMENT-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}
  Then the response status code should be 200
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, href, name, status
  And the Customer object should have the optional properties: statusReason, statusDate, validFor, characteristic, engagedParty, relatedParty, account, paymentMethod, creditProfile, contactMedium, customerType, customerSubType, acquisitionDate, description, rank, externalIdentifier, agreement, extensions, createdOn, lastModifiedOn, @baseType, @type, @schemaLocation
  And the response header Etag should contain [RESPONSE-ETAG-PLACEHOLDER]
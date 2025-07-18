Feature: TMF629 Customer Management - resource /customer/{customerId} for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId} for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query embed is set to [QUERY-embed-PLACEHOLDER]
  And for query retrieveSegment is set to [QUERY-retrieveSegment-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}
  Then the response status code should be 200
  And the response should contain a Customer object
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
  And the Customer object should have the required properties: id, href, name, status
  And the Customer object should have the optional properties: statusReason, statusDate, validFor, characteristic, engagedParty, relatedParty, account, paymentMethod, creditProfile, contactMedium, createdOn, lastModifiedOn, @baseType, @type, @schemaLocation, customerType, customerSubType, acquisitionDate, description, rank, externalIdentifier, agreement, extensions
  And the Customer object id should contain [CUSTOMER-id-PLACEHOLDER]
  And the Customer object href should contain [CUSTOMER-href-PLACEHOLDER]
  And the Customer object name should contain [CUSTOMER-name-PLACEHOLDER]
  And the Customer object status should contain [CUSTOMER-status-PLACEHOLDER]
  And the Customer object statusReason should contain [CUSTOMER-statusReason-PLACEHOLDER]
  And the Customer object statusDate should contain [CUSTOMER-statusDate-PLACEHOLDER]
  And the Customer object customerType should contain [CUSTOMER-customerType-PLACEHOLDER]
  And the Customer object customerSubType should contain [CUSTOMER-customerSubType-PLACEHOLDER]
  And the Customer object acquisitionDate should contain [CUSTOMER-acquisitionDate-PLACEHOLDER]
  And the Customer object description should contain [CUSTOMER-description-PLACEHOLDER]
  And the Customer object rank should contain [CUSTOMER-rank-PLACEHOLDER]
  And the Customer object createdOn should contain [CUSTOMER-createdOn-PLACEHOLDER]
  And the Customer object lastModifiedOn should contain [CUSTOMER-lastModifiedOn-PLACEHOLDER]
  And the Customer object @baseType should contain [CUSTOMER-@baseType-PLACEHOLDER]
  And the Customer object @type should contain [CUSTOMER-@type-PLACEHOLDER]
  And the Customer object @schemaLocation should contain [CUSTOMER-@schemaLocation-PLACEHOLDER]
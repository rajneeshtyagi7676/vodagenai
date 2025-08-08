Feature: TMF629 Customer Management - resource /customer for response code 201 Created

Scenario: TMF629 Customer Management - resource /customer for response code 201 Created
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query excludeEntityCreation is set to [QUERY-EXCLUDEENTITYCREATION-PLACEHOLDER]
  And for body Customer is set to [BODY-CUSTOMER-PLACEHOLDER]
  When I send a POST request to /customer
  Then the response status code should be 201
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, href
  And the Customer object should have the optional properties: name, description, status, statusReason, statusDate, validFor, customerType, customerSubType, account, characteristic, contactMedium, engagedParty, paymentMethod, relatedParty, creditProfile, agreement, createdOn, lastModifiedOn, rank, acquisitionDate, extensions
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
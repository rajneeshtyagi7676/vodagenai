Feature: TMF629 Customer Management - resource /customer/{customerId}/relatedIndividual for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/relatedIndividual for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/relatedIndividual
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query includeFrom is set to [QUERY-INCLUDEFROM-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/relatedIndividual
  Then the response status code should be 200
  And the response should contain an array of IndividualInvolvement objects
  And each IndividualInvolvement object should have the required properties: id, givenName, familyName, status, involvement
  And each involvement array item should have the required properties: id, entityType, individualRole
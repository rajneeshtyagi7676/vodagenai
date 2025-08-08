Feature: TMF629 Customer Management - resource /customer/{customerId}/relatedIndividual for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/relatedIndividual for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/relatedIndividual
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query includeFrom is set to [QUERY-includeFrom-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/relatedIndividual
  Then the response status code should be 200
  And the response should contain an array of IndividualInvolvement objects
  And each IndividualInvolvement object should have the optional properties: familyName, givenName, id, involvement, status
  And each involvement item should have the properties: entityType, id, individualRole
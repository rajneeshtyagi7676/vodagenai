Feature: TMF629 Customer Management - resource /customer/generateID for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/generateID for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/generateID
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query limit is set to [QUERY-limit-PLACEHOLDER]
  When I send a POST request to /customer/generateID
  Then the response status code should be 200
  And the response should contain an array of EntityRef objects
  And each EntityRef object should have the required properties: id
  And each EntityRef object should have the optional properties: href, name
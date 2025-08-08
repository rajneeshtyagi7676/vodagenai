Feature: TMF629 Customer Management - resource /customer/{customerId}/history for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/history for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/history
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query filters is set to [QUERY-FILTERS-PLACEHOLDER]
  And for query offset is set to [QUERY-OFFSET-PLACEHOLDER]
  And for query limit is set to [QUERY-LIMIT-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/history
  Then the response status code should be 200
  And the response should contain an array of HistoryItem objects
  And each HistoryItem object should have the properties: id, modifiedBy, modifiedOn, salesChannel, transactionID, itemType, HistoryData, entity
  And each HistoryData object should have the property: value
  And each EntityRef object should have the properties: id, href, name, @referredType
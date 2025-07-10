Scenario: TMF629 Customer Management - resource /customer for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query name is set to [QUERY-NAME-PLACEHOLDER]
  And for query id is set to [QUERY-ID-PLACEHOLDER]
  And for query href is set to [QUERY-HREF-PLACEHOLDER]
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query filter is set to [QUERY-FILTER-PLACEHOLDER]
  And for query filters is set to [QUERY-FILTERS-PLACEHOLDER]
  And for query sort is set to [QUERY-SORT-PLACEHOLDER]
  And for query limit is set to [QUERY-LIMIT-PLACEHOLDER]
  And for query offset is set to [QUERY-OFFSET-PLACEHOLDER]
  And for query returnTotalCount is set to [QUERY-RETURNTOTALCOUNT-PLACEHOLDER]
  When I send a GET request to /customer
  Then the response status code should be 200
  And the response should contain an array of Customer objects
  And each Customer object should have the required properties: id, href, name, status
  And each Customer object should have the optional properties: statusReason, statusDate, validFor, characteristic, engagedParty, relatedParty, account, paymentMethod, creditProfile, contactMedium, customerType, customerSubType, acquisitionDate, description, rank, externalIdentifier, agreement
  And the response header Etag should contain [RESPONSE-ETAG-PLACEHOLDER]
  And the response header X-Total-Count should contain [RESPONSE-X-TOTAL-COUNT-PLACEHOLDER]
  And the response header X-Result-Count should contain [RESPONSE-X-RESULT-COUNT-PLACEHOLDER]
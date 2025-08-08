Feature: TMF629 Customer Management - resource /creditProfile/{creditProfileId} for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfile/{creditProfileId} for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfile/{creditProfileId}
  And for path creditProfileId is set to [PATH-creditProfileId-PLACEHOLDER]
  And valid Bearer authorization token
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  When I send a GET request to /creditProfile/{creditProfileId}
  Then the response status code should be 200
  And the response should contain a CreditProfile object
  And the CreditProfile object should have the properties: id, href, creditProfileDate, creditRiskRating, lastUpdate, status, creditScore, characteristic, validFor, relatedPartyRole, relatedCreditParty, partyPrivacyProfile, relatedParty, creditRating, externalIdentifier, extensions
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
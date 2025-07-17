Feature: TMF629 Customer Management - resource /creditProfile for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfile for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfile
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query filter is set to [QUERY-filter-PLACEHOLDER]
  And for query filters is set to [QUERY-filters-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  And for query sort is set to [QUERY-sort-PLACEHOLDER]
  When I send a GET request to /creditProfile
  Then the response status code should be 200
  And the response should contain an array of CreditProfile objects
  And each CreditProfile object should have the optional properties: id, href, creditProfileDate, creditRiskRating, lastUpdate, status, creditScore, characteristic, validFor, relatedPartyRole, relatedCreditParty, partyPrivacyProfile, relatedParty, creditRating, externalIdentifier, extensions
  And each CreditProfile characteristic should have the optional properties: id, name, value, valueType, category, overridden
  And each CreditProfile creditRating should have the optional properties: id, ratingScore, creditRiskRating, ratingAgencyName, ratingAgencyType, ratingReference, primary, validFor, characteristic, extensions
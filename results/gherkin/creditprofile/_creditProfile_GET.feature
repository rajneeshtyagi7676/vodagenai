Feature: TMF629 Customer Management - resource /creditProfile for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfile for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfile
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query filter is set to [QUERY-FILTER-PLACEHOLDER]
  And for query filters is set to [QUERY-FILTERS-PLACEHOLDER]
  And for query fields is set to [QUERY-FIELDS-PLACEHOLDER]
  And for query sort is set to [QUERY-SORT-PLACEHOLDER]
  When I send a GET request to /creditProfile
  Then the response status code should be 200
  And the response should contain an array of CreditProfile objects
  And each CreditProfile object should have the optional properties: id, href, creditProfileDate, creditRiskRating, lastUpdate, status, creditScore, characteristic, validFor, relatedPartyRole, relatedCreditParty, partyPrivacyProfile, relatedParty, creditRating, externalIdentifier, extensions
  And the characteristic array should contain CreditProfileCharacteristic objects with properties: id, name, value, valueType, category, overridden
  And the creditRating array should contain PartyCreditRating objects with properties: id, ratingScore, creditRiskRating, ratingAgencyName, ratingAgencyType, ratingReference, primary, validFor, characteristic, extensions
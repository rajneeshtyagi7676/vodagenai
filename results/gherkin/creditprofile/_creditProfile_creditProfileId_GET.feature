Feature: TMF629 Customer Management - resource /creditProfile/{creditProfileId} for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfile/{creditProfileId} for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfile/{creditProfileId}
  And valid Bearer authorization token
  And for path creditProfileId is set to [PATH-creditProfileId-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  When I send a GET request to /creditProfile/{creditProfileId}
  Then the response status code should be 200
  And the response should contain a CreditProfile object
  And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
  And the CreditProfile object should have the optional properties: characteristic, creditProfileDate, creditRating, creditRiskRating, creditScore, extensions, externalIdentifier, href, id, lastUpdate, partyPrivacyProfile, relatedCreditParty, relatedParty, relatedPartyRole, status, validFor
  And if present, the CreditProfile characteristic array should contain CreditProfileCharacteristic objects with properties: category, id, name, overridden, value, valueType
  And if present, the CreditProfile creditRating array should contain PartyCreditRating objects with properties: characteristic, creditRiskRating, extensions, id, primary, ratingAgencyName, ratingAgencyType, ratingReference, ratingScore, validFor
  And if present, the CreditProfile externalIdentifier array should contain ExternalIdentifier objects with properties: externalIdentifierType, id, owner, version
  And if present, the CreditProfile partyPrivacyProfile should contain a PartyPrivacyProfileRef object with properties: href, id
  And if present, the CreditProfile relatedCreditParty should contain a RelatedPartyRef object
  And if present, the CreditProfile relatedParty array should contain RelatedPartyRef objects
  And if present, the CreditProfile relatedPartyRole should contain a PartyRoleRef object
  And if present, the CreditProfile validFor should contain a TimePeriod object with properties: endDateTime, extension, startDateTime
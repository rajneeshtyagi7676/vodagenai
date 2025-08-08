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
  And the CreditProfile object should have the optional properties: id, href, creditProfileDate, creditRiskRating, lastUpdate, status, creditScore, characteristic, validFor, relatedPartyRole, relatedCreditParty, partyPrivacyProfile, relatedParty, creditRating, externalIdentifier, extensions
  And if present, the CreditProfile characteristic array should contain CreditProfileCharacteristic objects with properties: id, name, value, valueType, category, overridden
  And if present, the CreditProfile validFor object should have properties: startDateTime, endDateTime, extension
  And if present, the CreditProfile relatedPartyRole object should have properties: id, href, name, role, @type, @referredType, validFor
  And if present, the CreditProfile relatedCreditParty object should have properties: id, href, name, role, @baseType, @schemaLocation, @type, @referredType, validFor
  And if present, the CreditProfile partyPrivacyProfile object should have properties: id, href
  And if present, the CreditProfile relatedParty array should contain RelatedPartyRef objects with properties: id, href, name, role, @baseType, @schemaLocation, @type, @referredType, validFor
  And if present, the CreditProfile creditRating array should contain PartyCreditRating objects with properties: id, ratingScore, creditRiskRating, ratingAgencyName, ratingAgencyType, ratingReference, primary, validFor, characteristic, extensions
  And if present, the CreditProfile externalIdentifier array should contain ExternalIdentifier objects with properties: id, owner, externalIdentifierType, version, extensions, @baseType, @type, @schemaLocation
Feature: TMF629 Customer Management - resource /creditProfile for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfile for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfile
    And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
    And valid Bearer authorization token
    And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
    And for query forceCreditInquiry is set to [QUERY-FORCECREDITINQUIRY-PLACEHOLDER]
    And for body creditProfile is set to [BODY-CREDITPROFILE-PLACEHOLDER]
    When I send a POST request to /creditProfile
    Then the response status code should be 200
    And the response should contain a CreditProfile object
    And the CreditProfile object should have the required properties: id
    And the CreditProfile object should have the optional properties: creditProfileDate, creditRiskRating, creditScore, lastUpdate, status, validFor, href, externalIdentifier, partyPrivacyProfile, relatedCreditParty, relatedParty, relatedPartyRole
    And the CreditProfile object should contain characteristic array with CreditProfileCharacteristic objects
    And each CreditProfileCharacteristic object should have properties: id, name, value, valueType, category, overridden
    And the CreditProfile object should contain creditRating array with PartyCreditRating objects
    And each PartyCreditRating object should have properties: id, creditRiskRating, ratingAgencyName, ratingAgencyType, ratingReference, ratingScore, primary, validFor
    And each PartyCreditRating object should contain characteristic array with Characteristic objects
    And each Characteristic object should have properties: name, value, valueType
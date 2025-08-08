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
    And the CreditProfile object should have the required properties: id, href
    And the CreditProfile object should have the optional properties: creditProfileDate, creditRiskRating, lastUpdate, status, creditScore, characteristic, validFor, relatedPartyRole, relatedCreditParty, partyPrivacyProfile, relatedParty, creditRating, externalIdentifier, extensions
    And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
Feature: TMF629 Customer Management - resource /customer/{id}/manageExternalIdentifier for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{id}/manageExternalIdentifier for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{id}/manageExternalIdentifier
    And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
    And for header If-Match is set to [HEADER-IF-MATCH-PLACEHOLDER]
    And valid Bearer authorization token
    And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
    And for path id is set to [PATH-ID-PLACEHOLDER]
    And for body manageExternalIdentifier is set to [BODY-MANAGEEXTERNALIDENTIFIER-PLACEHOLDER]
    When I send a POST request to /customer/{id}/manageExternalIdentifier
    Then the response status code should be 200
    And the response should contain a Customer object
    And the Customer object should have the required properties: id, name, status
    And the Customer object should have the optional properties: href, statusReason, statusDate, validFor, characteristic, engagedParty, relatedParty, account, paymentMethod, creditProfile, contactMedium, customerType, customerSubType, acquisitionDate, description, rank, externalIdentifier, agreement, extensions, createdOn, lastModifiedOn, @baseType, @type, @schemaLocation
    And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
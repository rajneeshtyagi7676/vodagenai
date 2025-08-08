Feature: TMF629 Customer Management - resource /customer/{customerId}/replacePrimaryRelatedParty for response code 201 Created

Scenario: TMF629 Customer Management - resource /customer/{customerId}/replacePrimaryRelatedParty for response code 201 Created
    Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/replacePrimaryRelatedParty
    And for path customerId is set to [PATH-customerId-PLACEHOLDER]
    And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
    And valid Bearer authorization token
    And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
    And for body Individual is set to [BODY-Individual-PLACEHOLDER]
    When I send a POST request to /customer/{customerId}/replacePrimaryRelatedParty
    Then the response status code should be 201
    And the response should contain a Customer object
    And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
    And the Customer object should have the required properties: id, href, name, status
    And the Customer object should have the optional properties: statusReason, statusDate, validFor, characteristic, engagedParty, relatedParty, account, paymentMethod, creditProfile, contactMedium, createdOn, lastModifiedOn, @baseType, @type, @schemaLocation, customerType, customerSubType, acquisitionDate, description, rank, externalIdentifier, agreement, extensions
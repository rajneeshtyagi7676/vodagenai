Feature: TMF629 Customer Management - resource /customer/{customerId}/replacePrimaryRelatedParty for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/replacePrimaryRelatedParty for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/replacePrimaryRelatedParty
    And for path customerId is set to [PATH-customerId-PLACEHOLDER]
    And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
    And valid Bearer authorization token
    And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
    And for body Individual is set to [BODY-Individual-PLACEHOLDER]
    When I send a POST request to /customer/{customerId}/replacePrimaryRelatedParty
    Then the response status code should be 200
    And the response should contain a Customer object
    And the Customer object should have the required properties: id, name, status
    And the Customer object should have the optional properties: description, customerType, customerSubType, engagedParty, relatedParty, characteristic, contactMedium, agreement, account, paymentMethod, creditProfile, validFor, statusDate, statusReason, createdOn, lastModifiedOn, rank, acquisitionDate, @baseType, @schemaLocation, @type, extensions, externalIdentifier
    And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
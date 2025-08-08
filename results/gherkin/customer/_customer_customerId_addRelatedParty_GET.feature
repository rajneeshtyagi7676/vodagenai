Feature: TMF629 Customer Management - resource /customer/{customerId}/addRelatedParty for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/addRelatedParty for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/addRelatedParty
    And for path customerId is set to [PATH-customerId-PLACEHOLDER]
    And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
    And for header If-Match is set to [HEADER-If-Match-PLACEHOLDER]
    And valid Bearer authorization token
    And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
    And for body RelatedParty is set to 
    """
    {
      "@referredType": "[BODY-RelatedParty-@referredType-PLACEHOLDER]",
      "@type": "[BODY-RelatedParty-@type-PLACEHOLDER]",
      "id": "[BODY-RelatedParty-id-PLACEHOLDER]",
      "name": "[BODY-RelatedParty-name-PLACEHOLDER]",
      "role": "[BODY-RelatedParty-role-PLACEHOLDER]",
      "validFor": {
        "startDateTime": "[BODY-RelatedParty-validFor-startDateTime-PLACEHOLDER]",
        "endDateTime": "[BODY-RelatedParty-validFor-endDateTime-PLACEHOLDER]"
      }
    }
    """
    When I send a POST request to /customer/{customerId}/addRelatedParty
    Then the response status code should be 200
    And the response should contain a Customer object
    And the Customer object should have the required properties: id, name, status
    And the Customer object should have the optional properties: customerType, customerSubType, description, engagedParty, account, characteristic, contactMedium, paymentMethod, relatedParty, validFor, statusDate, statusReason, createdOn, lastModifiedOn, rank, acquisitionDate, agreement
    And the response header Etag should contain [RESPONSE-Etag-PLACEHOLDER]
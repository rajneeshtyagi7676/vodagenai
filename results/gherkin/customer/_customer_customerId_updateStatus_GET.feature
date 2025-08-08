Feature: TMF629 Customer Management - resource /customer/{customerId}/updateStatus for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/updateStatus for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/updateStatus
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And for header If-Match is set to [HEADER-IF-MATCH-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for body UpdateCustomerStatus is set to 
    """
    {
      "status": "[BODY-STATUS-PLACEHOLDER]",
      "statusReason": "[BODY-STATUSREASON-PLACEHOLDER]"
    }
    """
  When I send a POST request to /customer/{customerId}/updateStatus
  Then the response status code should be 200
  And the response should contain a Customer object
  And the Customer object should have the required properties: id, status
  And the Customer object should have the optional properties: name, description, customerType, customerSubType, engagedParty, account, characteristic, contactMedium, creditProfile, agreement, relatedParty, validFor, paymentMethod, statusDate, statusReason, rank, acquisitionDate, createdOn, lastModifiedOn, extensions
  And the response header Etag should contain [RESPONSE-ETAG-PLACEHOLDER]
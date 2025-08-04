Feature: TMF637 Product Inventory Management - resource /product/{productId}/calculateNextPossibleTerminationDate for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product/{productId}/calculateNextPossibleTerminationDate for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product/{productId}/calculateNextPossibleTerminationDate
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for path productId is set to [PATH-productId-PLACEHOLDER]
  And for body calculationStartDate is set to [BODY-calculationStartDate-PLACEHOLDER]
  When I send a POST request to /product/{productId}/calculateNextPossibleTerminationDate
  Then the response status code should be 200
  And the response should contain a calculatedTerminationDate object
  And the calculatedTerminationDate object should have the property: productId
Feature: TMF637 Product Inventory Management - resource /creditProfile for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /creditProfile for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /creditProfile
  And valid Bearer authorization token
  And for header Content-Type is set to [HEADER-CONTENT-TYPE-PLACEHOLDER]
  And for header Accept is set to [HEADER-ACCEPT-PLACEHOLDER]
  And for body request is set to [BODY-REQUEST-PLACEHOLDER]
  When I send a POST request to /creditProfile
  Then the response status code should be 200
  And the response should contain a successful result
  And the response header Content-Type should contain [RESPONSE-Content-Type-PLACEHOLDER]
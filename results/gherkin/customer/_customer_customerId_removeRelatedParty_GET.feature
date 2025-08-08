Feature: TMF637 Product Inventory Management - resource /customer/{customerId}/removeRelatedParty for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /customer/{customerId}/removeRelatedParty for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /customer/{customerId}/removeRelatedParty
  And valid Bearer authorization token
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  And for body relatedParty is set to [BODY-relatedParty-PLACEHOLDER]
  When I send a POST request to /customer/{customerId}/removeRelatedParty
  Then the response status code should be 200
  And the response should contain a Product object
  And the Product object should have the required properties: id, name, status
  And the Product object should have the optional properties: description, isBundle, isCustomerVisible, productCharacteristic, productOffering, productPrice, productPromotion, productRelationship, productSpecification, relatedParty, startDate
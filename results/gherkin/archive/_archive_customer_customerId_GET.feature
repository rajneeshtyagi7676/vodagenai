Feature: TMF637 Product Inventory Management - resource /archive/customer/{customerId} for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /archive/customer/{customerId} for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /archive/customer/{customerId}
  And valid Bearer authorization token
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  When I send a GET request to /archive/customer/{customerId}
  Then the response status code should be 200
  And the response should contain an array of Product objects
  And each Product object should have the optional properties: id, href, name, description, isBundle, isCustomerVisible, orderDate, startDate, terminationDate, status, version, productOffering, productSpecification, productCharacteristic, productOfferingCharacteristic, billingAccount, relatedParty, productPrice, productTotalPrice, productRelationship, place, productPromotion, productTerm, statusChangeReason, activationDate, alternateId, businessActivity, characteristicMetadata, extensions, message, parentId, pathToRoot, primaryProductId, productId, productOfferingCharacteristic, productSerialNumber, quantity, rootProductId
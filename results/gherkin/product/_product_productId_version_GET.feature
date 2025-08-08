Feature: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product/{productId}/version
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for path productId is set to [PATH-productId-PLACEHOLDER]
  And for query dateFrom is set to [QUERY-dateFrom-PLACEHOLDER]
  And for query dateTo is set to [QUERY-dateTo-PLACEHOLDER]
  And for query offset is set to [QUERY-offset-PLACEHOLDER]
  And for query limit is set to [QUERY-limit-PLACEHOLDER]
  And for query mask is set to [QUERY-mask-PLACEHOLDER]
  When I send a GET request to /product/{productId}/version
  Then the response status code should be 200
  And the response should contain an array of Product objects
  And each Product object should have the optional properties: id, href, name, description, isBundle, isCustomerVisible, orderDate, status, version, startDate, terminationDate, activationDate, productId, primaryProductId, rootProductId, parentId, pathToRoot, productSerialNumber, quantity, billingAccount, place, productOffering, productSpecification, productCharacteristic, productOfferingCharacteristic, productPrice, productTotalPrice, productRelationship, relatedParty, productTerm, productPromotion, businessActivity, message, characteristicMetadata, extensions, alternateId, @baseType, @type
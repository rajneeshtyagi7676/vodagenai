Feature: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product/{productId}/version
  And valid Bearer authorization token
  And for path productId is set to [PATH-productId-PLACEHOLDER]
  And for query dateFrom is set to [QUERY-dateFrom-PLACEHOLDER]
  And for query dateTo is set to [QUERY-dateTo-PLACEHOLDER]
  And for query offset is set to [QUERY-offset-PLACEHOLDER]
  And for query limit is set to [QUERY-limit-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And for query mask is set to [QUERY-mask-PLACEHOLDER]
  When I send a GET request to /product/{productId}/version
  Then the response status code should be 200
  And the response should contain an array of Product objects
  And each Product object should have the optional properties: description, id, href, isBundle, isCustomerVisible, name, orderDate, productSerialNumber, startDate, status, statusChangeReason, statusChangeDate, previousStatus, previousStatusChangeReason, terminationDate, version, versionObsolete, rootProductId, rootProductOfferingId, pathToRoot, parentId, quantity, activationDate, primaryProductId, contractCategory, relatedParty, productCharacteristic, productOfferingCharacteristic, note, product, productRelationship, productPrice, productPricePerUnit, productTotalPrice, place, billingAccount, productOffering, productSpecification, externalIdentifier, channel, productOrderItem, productTerm, metadata, productPromotion, highVolumeProductPromotion, nextAction, businessActivity, attachment, agreement, message, creationDate, lastUpdate, extensions
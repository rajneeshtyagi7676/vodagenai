Feature: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product/{productId}/version
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query dateFrom is set to [QUERY-dateFrom-PLACEHOLDER]
  And for query dateTo is set to [QUERY-dateTo-PLACEHOLDER]
  And for query offset is set to [QUERY-offset-PLACEHOLDER]
  And for query limit is set to [QUERY-limit-PLACEHOLDER]
  And for query mask is set to [QUERY-mask-PLACEHOLDER]
  And for path productId is set to [PATH-productId-PLACEHOLDER]
  When I send a GET request to /product/{productId}/version
  Then the response status code should be 200
  And the response should contain an array of Product objects
  And each Product object should have the optional properties: activationDate, agreement, attachment, billingAccount, businessActivity, channel, contractCategory, creationDate, description, extensions, externalIdentifier, highVolumeProductPromotion, href, id, isBundle, isCustomerVisible, lastUpdate, message, metadata, name, nextAction, note, orderDate, parentId, pathToRoot, place, previousStatus, previousStatusChangeReason, primaryProductId, product, productCharacteristic, productOffering, productOfferingCharacteristic, productOrderItem, productPrice, productPricePerUnit, productPromotion, productRelationship, productSerialNumber, productSpecification, productTerm, productTotalPrice, quantity, relatedParty, rootProductId, rootProductOfferingId, startDate, status, statusChangeDate, statusChangeReason, terminationDate, version, versionObsolete, @baseType, @type
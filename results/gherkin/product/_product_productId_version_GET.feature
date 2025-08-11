Feature: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product/{productId}/version for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product/{productId}/version
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for path productId is set to [PATH-PRODUCTID-PLACEHOLDER]
  And for query dateFrom is set to [QUERY-DATEFROM-PLACEHOLDER]
  And for query dateTo is set to [QUERY-DATETO-PLACEHOLDER]
  And for query offset is set to [QUERY-OFFSET-PLACEHOLDER]
  And for query limit is set to [QUERY-LIMIT-PLACEHOLDER]
  And for query mask is set to [QUERY-MASK-PLACEHOLDER]
  When I send a GET request to /product/{productId}/version
  Then the response status code should be 200
  And the response should contain an array of Product objects
  And each Product object should have the optional properties: id, href, name, description, isBundle, isCustomerVisible, productOffering, productSpecification, productCharacteristic, productOfferingCharacteristic, status, startDate, terminationDate, orderDate, activationDate, lastUpdate, version, productPrice, productTotalPrice, billingAccount, relatedParty, place, productRelationship, product, productPromotion, rootProductId, primaryProductId, parentId, pathToRoot, productSerialNumber, quantity, statusChangeReason, previousStatus, previousStatusChangeReason, businessActivity, metadata, message, creationDate, externalIdentifier, highVolumeProductPromotion, note, nextAction, channel, agreement, attachment, productOrderItem, productPricePerUnit, contractCategory, rootProductOfferingId, statusChangeDate, versionObsolete
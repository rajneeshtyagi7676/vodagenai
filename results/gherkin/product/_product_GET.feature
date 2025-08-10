Feature: TMF637 Product Inventory Management - resource /product for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query filter is set to [QUERY-FILTER-PLACEHOLDER]
  And for query replacableProductOfferingId is set to [QUERY-REPLACABLEPRODUCTOFFERINGID-PLACEHOLDER]
  And for query productEnabledByProductId is set to [QUERY-PRODUCTENABLEDBYPRODUCTID-PLACEHOLDER]
  And for query offset is set to [QUERY-OFFSET-PLACEHOLDER]
  And for query limit is set to [QUERY-LIMIT-PLACEHOLDER]
  And for query after is set to [QUERY-AFTER-PLACEHOLDER]
  And for query searchAfterStrategy is set to [QUERY-SEARCHAFTERSTRATEGY-PLACEHOLDER]
  And for query calculatePrice is set to [QUERY-CALCULATEPRICE-PLACEHOLDER]
  And for query calculateTax is set to [QUERY-CALCULATETAX-PLACEHOLDER]
  And for query mask is set to [QUERY-MASK-PLACEHOLDER]
  And for query returnTotalCount is set to [QUERY-RETURNTOTALCOUNT-PLACEHOLDER]
  When I send a GET request to /product
  Then the response status code should be 200
  And the response should contain an array of Product objects
  And each Product object should have the optional properties: activationDate, agreement, attachment, billingAccount, businessActivity, channel, contractCategory, creationDate, description, extensions, externalIdentifier, highVolumeProductPromotion, href, id, isBundle, isCustomerVisible, lastUpdate, message, metadata, name, nextAction, note, orderDate, parentId, pathToRoot, place, previousStatus, previousStatusChangeReason, primaryProductId, product, productCharacteristic, productOffering, productOfferingCharacteristic, productOrderItem, productPrice, productPricePerUnit, productPromotion, productRelationship, productSerialNumber, productSpecification, productTerm, productTotalPrice, quantity, relatedParty, rootProductId, rootProductOfferingId, startDate, status, statusChangeDate, statusChangeReason, terminationDate, version, versionObsolete
  And the response header X-Pagination-Total-Pages should contain [RESPONSE-X-Pagination-Total-Pages-PLACEHOLDER]
  And the response header X-Result-Count should contain [RESPONSE-X-Result-Count-PLACEHOLDER]
  And the response header X-Total-Count should contain [RESPONSE-X-Total-Count-PLACEHOLDER]
  And the response header X-after should contain [RESPONSE-X-after-PLACEHOLDER]
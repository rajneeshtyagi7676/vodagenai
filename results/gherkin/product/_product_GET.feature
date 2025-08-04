Feature: TMF637 Product Inventory Management - resource /product for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product
    And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
    And valid Bearer authorization token
    And for query filter is set to [QUERY-filter-PLACEHOLDER]
    And for query replacableProductOfferingId is set to [QUERY-replacableProductOfferingId-PLACEHOLDER]
    And for query productEnabledByProductId is set to [QUERY-productEnabledByProductId-PLACEHOLDER]
    And for query offset is set to [QUERY-offset-PLACEHOLDER]
    And for query limit is set to [QUERY-limit-PLACEHOLDER]
    And for query after is set to [QUERY-after-PLACEHOLDER]
    And for query searchAfterStrategy is set to [QUERY-searchAfterStrategy-PLACEHOLDER]
    And for query calculatePrice is set to [QUERY-calculatePrice-PLACEHOLDER]
    And for query calculateTax is set to [QUERY-calculateTax-PLACEHOLDER]
    And for query mask is set to [QUERY-mask-PLACEHOLDER]
    And for query returnTotalCount is set to [QUERY-returnTotalCount-PLACEHOLDER]
    When I send a GET request to /product
    Then the response status code should be 200
    And the response should contain an array of Product objects
    And the response header X-Total-Count should contain [RESPONSE-X-Total-Count-PLACEHOLDER]
    And the response header X-Result-Count should contain [RESPONSE-X-Result-Count-PLACEHOLDER]
    And the response header X-Pagination-Total-Pages should contain [RESPONSE-X-Pagination-Total-Pages-PLACEHOLDER]
    And the response header X-after should contain [RESPONSE-X-after-PLACEHOLDER]
    And each Product object should have the optional properties: description, id, href, isBundle, isCustomerVisible, name, orderDate, productSerialNumber, startDate, status, statusChangeReason, statusChangeDate, previousStatus, previousStatusChangeReason, terminationDate, version, versionObsolete, rootProductId, rootProductOfferingId, pathToRoot, parentId, quantity, activationDate, primaryProductId, contractCategory, relatedParty, productCharacteristic, productOfferingCharacteristic, note, product, productRelationship, productPrice, productPricePerUnit, productTotalPrice, place, billingAccount, productOffering, productSpecification, externalIdentifier, channel, productOrderItem, productTerm, metadata, productPromotion, highVolumeProductPromotion, nextAction, businessActivity, attachment, agreement, message, creationDate, lastUpdate, extensions
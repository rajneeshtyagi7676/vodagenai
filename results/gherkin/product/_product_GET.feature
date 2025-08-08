Feature: TMF637 Product Inventory Management - resource /product for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product
    And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
    And valid Bearer authorization token
    And for body product is set to [BODY-product-PLACEHOLDER]
    When I send a POST request to /product
    Then the response status code should be 200
    And the response should contain a Product object
    And the Product object should have the required properties: id, href
    And the Product object should have the optional properties: description, isBundle, isCustomerVisible, name, orderDate, productSerialNumber, startDate, status, statusChangeReason, statusChangeDate, previousStatus, previousStatusChangeReason, terminationDate, version, versionObsolete, rootProductId, rootProductOfferingId, pathToRoot, parentId, quantity, activationDate, primaryProductId, contractCategory, relatedParty, productCharacteristic, productOfferingCharacteristic, note, product, productRelationship, productPrice, productPricePerUnit, productTotalPrice, place, billingAccount, productOffering, productSpecification, externalIdentifier, channel, productOrderItem, productTerm, metadata, productPromotion, highVolumeProductPromotion, nextAction, businessActivity, attachment, agreement, message, creationDate, lastUpdate, extensions
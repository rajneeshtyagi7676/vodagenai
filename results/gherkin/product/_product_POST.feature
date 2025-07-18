Feature: TMF637 Product Inventory Management - resource /product for response code 201 Created

Scenario: TMF637 Product Inventory Management - resource /product for response code 201 Created
    Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product
    And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
    And valid Bearer authorization token
    And for body product is set to [BODY-PRODUCT-PLACEHOLDER]
    When I send a POST request to /product
    Then the response status code should be 201
    And the response should contain a Product object
    And the Product object should have the required properties: id, rootProductId, productOrder
    And the Product object should have the optional properties: description, href, isBundle, isCustomerVisible, name, orderDate, productSerialNumber, startDate, status, statusChangeReason, statusChangeDate, previousStatus, previousStatusChangeReason, terminationDate, version, versionObsolete, rootProductOfferingId, pathToRoot, parentId, quantity, activationDate, primaryProductId, contractCategory, relatedParty, productCharacteristic, productOfferingCharacteristic, note, product, productRelationship, productPrice, productPricePerUnit, productTotalPrice, place, billingAccount, productOffering, productSpecification, externalIdentifier, channel, productOrderItem, productTerm, metadata, productPromotion, highVolumeProductPromotion, nextAction, businessActivity, attachment, agreement, message, creationDate, lastUpdate, extensions
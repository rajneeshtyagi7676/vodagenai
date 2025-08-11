Feature: TMF637 Product Inventory Management - resource /product for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /product for response code 200 OK
    Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /product
    And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
    And valid Bearer authorization token
    And for body product is set to [BODY-PRODUCT-PLACEHOLDER]
    When I send a POST request to /product
    Then the response status code should be 200
    And the response should contain a Product object
    And the Product object should have the required properties: id, name, status
    And the Product object should have the optional properties: activationDate, agreement, attachment, billingAccount, businessActivity, channel, contractCategory, creationDate, description, extensions, externalIdentifier, highVolumeProductPromotion, href, isBundle, isCustomerVisible, lastUpdate, message, metadata, nextAction, note, orderDate, parentId, pathToRoot, place, previousStatus, previousStatusChangeReason, primaryProductId, product, productCharacteristic, productOffering, productOfferingCharacteristic, productOrderItem, productPrice, productPricePerUnit, productPromotion, productRelationship, productSerialNumber, productSpecification, productTerm, productTotalPrice, quantity, relatedParty, rootProductId, rootProductOfferingId, startDate, statusChangeDate, statusChangeReason, terminationDate, version, versionObsolete
    And the Product object @baseType should contain [PRODUCT-@baseType-PLACEHOLDER]
    And the Product object @type should contain [PRODUCT-@type-PLACEHOLDER]
Scenario: TMF637 Product Inventory Management - resource /productPromotion for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /productPromotion
  And valid Bearer authorization token
  And for query filter is set to [QUERY-filter-PLACEHOLDER]
  And for query status is set to [QUERY-status-PLACEHOLDER]
  And for query dateFrom is set to [QUERY-dateFrom-PLACEHOLDER]
  And for query dateTo is set to [QUERY-dateTo-PLACEHOLDER]
  And for query promotionId is set to [QUERY-promotionId-PLACEHOLDER]
  And for query relatedPartyId is set to [QUERY-relatedPartyId-PLACEHOLDER]
  And for query offset is set to [QUERY-offset-PLACEHOLDER]
  And for query limit is set to [QUERY-limit-PLACEHOLDER]
  When I send a GET request to /productPromotion
  Then the response status code should be 200
  And the response should contain an array of ProductPromotion objects
  And the response header X-Total-Count should contain [RESPONSE-X-Total-Count-PLACEHOLDER]
  And the response header X-Result-Count should contain [RESPONSE-X-Result-Count-PLACEHOLDER]
  And the response header X-Pagination-Total-Pages should contain [RESPONSE-X-Pagination-Total-Pages-PLACEHOLDER]
  And each ProductPromotion object should have the optional properties: id, href, immediatePromotionId, previousPromotionId, state, status, startDate, lastUpdate, instanceManagementType, contractCategory, promotion, productPromotionCharacteristics, appliedBy, appliedReason, revokedBy, revokeReason, relatedParty, promotionRelatedParty, benefitProduct, triggerProduct, agreement, productPromotionRelationship, promotionProtection, metadata, extensions
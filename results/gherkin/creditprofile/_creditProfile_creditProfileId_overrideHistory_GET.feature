Feature: TMF629 Customer Management - resource /creditProfile/{creditProfileId}/overrideHistory for response code 200 OK

Scenario: TMF629 Customer Management - resource /creditProfile/{creditProfileId}/overrideHistory for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /creditProfile/{creditProfileId}/overrideHistory
  And for path creditProfileId is set to [PATH-creditProfileId-PLACEHOLDER]
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query characteristicId is set to [QUERY-characteristicId-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  When I send a GET request to /creditProfile/{creditProfileId}/overrideHistory
  Then the response status code should be 200
  And the response should contain an OverrideHistory object
  And the OverrideHistory object should have the required property: creditProfileId
  And the OverrideHistory object should have the required property: overrideRecord
  And each overrideRecord in the OverrideHistory should have the required properties: id, characteristicId, oldValue, newValue, overrideReason, activityDate, relatedParty
  And each relatedParty in the overrideRecord should have the required properties: id, role
  And each relatedParty in the overrideRecord should have the optional properties: href, name, '@baseType', '@schemaLocation', '@type', '@referredType', validFor
Feature: TMF637 Product Inventory Management - resource /exportResource for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /exportResource for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /exportResource
  And valid Bearer authorization token
  And for body resource is set to [BODY-resource-PLACEHOLDER]
  And for body topicName is set to [BODY-topicName-PLACEHOLDER]
  And for body operation is set to [BODY-operation-PLACEHOLDER]
  And for body jobDefinitionId is set to [BODY-jobDefinitionId-PLACEHOLDER]
  And for body jobInstanceId is set to [BODY-jobInstanceId-PLACEHOLDER]
  And for body productParameters.startDate is set to [BODY-productParameters.startDate-PLACEHOLDER]
  And for body productParameters.endDate is set to [BODY-productParameters.endDate-PLACEHOLDER]
  When I send a POST request to /exportResource
  Then the response status code should be 200
  And the response should contain an ExportJobDefinitionOutput object
  And the ExportJobDefinitionOutput object should have the properties: jobDefinitionId, jobInstanceId
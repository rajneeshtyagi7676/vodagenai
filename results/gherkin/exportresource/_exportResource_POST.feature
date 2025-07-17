Feature: TMF637 Product Inventory Management - resource /exportResource for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /exportResource for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /exportResource
  And valid Bearer authorization token
  And for body ExportJobDefinition is set to {
    "resource": "product",
    "topicName": "export-topic",
    "operation": "start",
    "jobDefinitionId": "pi-product-export-v4",
    "productParameters": {
      "startDate": "2023-01-01",
      "endDate": "2023-12-31"
    }
  }
  When I send a POST request to /exportResource
  Then the response status code should be 200
  And the response should contain an ExportJobDefinitionOutput object
  And the ExportJobDefinitionOutput object should have the properties: jobDefinitionId, jobInstanceId
  And the ExportJobDefinitionOutput jobDefinitionId should contain [EXPORT-JOBDEFINITIONID-PLACEHOLDER]
  And the ExportJobDefinitionOutput jobInstanceId should contain [EXPORT-JOBINSTANCEID-PLACEHOLDER]
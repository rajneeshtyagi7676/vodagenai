Feature: TMF637 Product Inventory Management - resource /exportResource for response code 200 OK

Scenario: TMF637 Product Inventory Management - resource /exportResource for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /productInventoryManagement/v4 and the resource /exportResource
  And valid Bearer authorization token
  And for body ExportJobDefinition is set to {
    "jobDefinitionId": "pi-product-export-v4",
    "operation": "start",
    "resource": "product",
    "topicName": "product-export-topic",
    "productParameters": {
      "startDate": "2023-01-01",
      "endDate": "2023-12-31"
    }
  }
  When I send a POST request to /exportResource
  Then the response status code should be 200
  And the response should contain an ExportJobDefinitionOutput object
  And the ExportJobDefinitionOutput object should have the properties: jobDefinitionId, jobInstanceId
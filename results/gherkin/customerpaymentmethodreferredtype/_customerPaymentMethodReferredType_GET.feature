Feature: TMF629 Customer Management - resource /customerPaymentMethodReferredType for response code 200 OK

Scenario: TMF629 Customer Management - resource /customerPaymentMethodReferredType for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customerPaymentMethodReferredType
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And for header If-Modified-Since is set to [HEADER-IF-MODIFIED-SINCE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query fields is set to [QUERY-FIELDS-PLACEHOLDER]
  And for query include is set to [QUERY-INCLUDE-PLACEHOLDER]
  And for query isDefault is set to [QUERY-ISDEFAULT-PLACEHOLDER]
  And for query customerPaymentMethodReferredType is set to [QUERY-CUSTOMERPAYMENTMETHODREFERREDTYPE-PLACEHOLDER]
  When I send a GET request to /customerPaymentMethodReferredType
  Then the response status code should be 200
  And the response should contain an array of CustomerPaymentMethodReferredType objects
  And each CustomerPaymentMethodReferredType object should have the required properties: @type
  And each CustomerPaymentMethodReferredType object should have the optional properties: active, default, fullLabelDisplay, href, selectionDisplay, shortLabelDisplay, customerPaymentMethodReferredType
  And the response header cache-control should contain [RESPONSE-CACHE-CONTROL-PLACEHOLDER]
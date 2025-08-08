Feature: TMF629 Customer Management - resource /customer/{customerId}/preference for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/preference for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/preference
  And for header Accept-Language is set to [HEADER-ACCEPT-LANGUAGE-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-SALESCHANNEL-PLACEHOLDER]
  And for query fields is set to [QUERY-FIELDS-PLACEHOLDER]
  And for path customerId is set to [PATH-CUSTOMERID-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/preference
  Then the response status code should be 200
  And the response should contain a CustomerPreference object
  And the CustomerPreference object should have the optional properties: engagedPartyPreference, billingAccountPreference, partyPrivacyProfilePreference, preferredPaymentMethod, notificationPreference, preferredContactMedium, extensions
  And if partyPrivacyProfilePreference is present, the user should have the "D1_PrivacyManagement_retrievePartyPrivacyProfiles" role
  And if partyPrivacyProfilePreference is absent and a message is included in the response, the user does not have the "D1_PrivacyManagement_retrievePartyPrivacyProfiles" role
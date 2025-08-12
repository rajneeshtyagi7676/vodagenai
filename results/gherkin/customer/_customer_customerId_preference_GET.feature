Feature: TMF629 Customer Management - resource /customer/{customerId}/preference for response code 200 OK

Scenario: TMF629 Customer Management - resource /customer/{customerId}/preference for response code 200 OK
  Given with the server api.test.asgw.sol-vf.de for api /customerManagement/v1 and the resource /customer/{customerId}/preference
  And for header Accept-Language is set to [HEADER-Accept-Language-PLACEHOLDER]
  And valid Bearer authorization token
  And for query salesChannel is set to [QUERY-salesChannel-PLACEHOLDER]
  And for query fields is set to [QUERY-fields-PLACEHOLDER]
  And for path customerId is set to [PATH-customerId-PLACEHOLDER]
  When I send a GET request to /customer/{customerId}/preference
  Then the response status code should be 200
  And the response should contain a CustomerPreference object
  And the CustomerPreference object should have the optional properties: billingAccountPreference, engagedPartyPreference, extensions, notificationPreference, partyPrivacyProfilePreference, preferredContactMedium, preferredPaymentMethod
  And if billingAccountPreference is present, it should be an array of AccountRefOrValue objects
  And if engagedPartyPreference is present, it should be a PartyRefOrValue object
  And if notificationPreference is present, it should be an array of NotificationPreferenceRefOrValue objects
  And if partyPrivacyProfilePreference is present, it should be an array of PartyPrivacyProfileRefOrValue objects
  And if preferredContactMedium is present, it should be an array of ContactMedium objects
  And if preferredPaymentMethod is present, it should be an array of PaymentMethodRefOrValue objects
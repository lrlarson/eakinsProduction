

<cfset requestBody = '{
  "eventName": "order.completed",
  "mode": "Test",
  "createdOn": "2015-02-25T01:42:52.3119556Z",
  "content": {
    "token": "ae3d266e-a3b2-4a31-b236-4fcf8750f479",
    "userId": "039b2f2d-4aee-4cf8-a179-683d55bbc6e7",
    "creationDate": "2015-02-25T01:33:05.717Z",
    "modificationDate": "2015-02-25T01:42:51.833Z",
    "completionDate": "2015-02-25T01:42:51.82Z",
    "status": "Processed",
    "paymentMethod": "CreditCard",
    "invoiceNumber": "152030",
    "email": "lrlarson@mac.com",
    "cardHolderName": "Larry Larson",
    "billingAddressName": "Larry Larson",
    "billingAddressCompanyName": null,
    "billingAddressAddress1": "151 Carrol St Apt 1A",
    "billingAddressAddress2": null,
    "billingAddressCity": "Brooklyn",
    "billingAddressCountry": "US",
    "billingAddressProvince": "NY",
    "billingAddressPostalCode": "11231",
    "billingAddressPhone": "9176868438",
    "notes": null,
    "billingAddressComplete": true,
    "shippingAddressName": "Larry Larson",
    "shippingAddressCompanyName": null,
    "shippingAddressAddress1": "151 Carrol St Apt 1A",
    "shippingAddressAddress2": null,
    "shippingAddressCity": "Brooklyn",
    "shippingAddressCountry": "US",
    "shippingAddressProvince": "NY",
    "shippingAddressPostalCode": "11231",
    "shippingAddressPhone": "9176868438",
    "shippingAddressSameAsBilling": true,
    "finalGrandTotal": 33.4,
    "shippingAddressComplete": true,
    "creditCardLast4Digits": "4242",
    "shippingFees": 5.83,
    "shippingMethod": "USPS First Class Mail",
    "shippingMethodComplete": true,
    "items": [
      {
        "uniqueId": "e32f7cb8-0b2a-42a5-adb4-f8d34bc3e94b",
        "token": "ae3d266e-a3b2-4a31-b236-4fcf8750f479",
        "id": "22",
        "name": "JUMBOMANIA",
        "price": 9.95,
        "originalPrice": 9.95,
        "quantity": 1,
        "url": "http://eakinspress-org.securec75.ezhostingserver.com/book.cfm?slug=jumbomania",
        "weight": 36.85,
        "description": null,
        "image": "",
        "initialData": "{\"itemDescription\":\"\",\"itemUrl\":\"http://eakinspress-org.securec75.ezhostingserver.com/book.cfm?slug=jumbomania\",\"itemWeight\":\"36.854380030\",\"itemPrice\":9.95,\"itemName\":\"JUMBOMANIA\",\"itemId\":22}",
        "stackable": true,
        "duplicatable": false,
        "maxQuantity": null,
        "addedOn": "2015-02-25T01:42:19.253Z",
        "shippable": true,
        "taxable": true,
        "totalPrice": 9.95,
        "totalWeight": 36.85,
        "customFields": [],
        "unitPrice": 9.95
      },
      {
        "uniqueId": "bd815868-4f19-4139-bb87-4364abe0c64a",
        "token": "ae3d266e-a3b2-4a31-b236-4fcf8750f479",
        "id": "89",
        "name": "Union Jack",
        "price": 15,
        "originalPrice": 15,
        "quantity": 1,
        "url": "http://eakinspress-org.securec75.ezhostingserver.com/book.cfm?slug=union-jack",
        "weight": 246.64,
        "description": null,
        "image": "",
        "initialData": "{\"itemDescription\":\"\",\"itemUrl\":\"http://eakinspress-org.securec75.ezhostingserver.com/book.cfm?slug=union-jack\",\"itemWeight\":\"246.640850970\",\"itemPrice\":\"15.00\",\"itemName\":\"Union Jack\",\"itemId\":89}",
        "stackable": true,
        "duplicatable": false,
        "maxQuantity": null,
        "addedOn": "2015-02-25T01:42:03.577Z",
        "shippable": true,
        "taxable": true,
        "totalPrice": 15,
        "totalWeight": 246.64,
        "customFields": [],
        "unitPrice": 15
      }
    ],
    "taxes": [
      {
        "token": "ae3d266e-a3b2-4a31-b236-4fcf8750f479",
        "taxName": "New York Sales Tax",
        "taxRate": 0.085,
        "amount": 2.62,
        "numberForInvoice": ""
      }
    ],
    "rebateAmount": 0,
    "subtotal": 24.95,
    "itemsTotal": 24.95,
    "taxableTotal": 24.95,
    "grandTotal": 33.4,
    "totalWeight": 283.49,
    "totalRebateRate": 0,
    "discounts": [],
    "willBePaidLater": false,
    "totalNumberOfItems": 0,
    "customFieldsJson": null,
    "customFields": [],
    "shippingEnabled": true,
    "numberOfItemsInOrder": 2,
    "paymentTransactionId": null,
    "cardType": "Visa",
    "paymentGatewayUsed": "Stripe",
    "taxesTotal": 2.62,
    "itemsCount": 2,
    "metadata": null
  }
}'>

<cfdump var="#requestBody#">

<cfhttp 
  result="result"
  method="post" 
  url="http://127.0.0.1:8501/eakins/data/webHook.cfm">

    <cfhttpparam type="header" name="content-type" value="application/json"/>
    <cfhttpparam type="body" value="#requestBody#"/>
</cfhttp>    
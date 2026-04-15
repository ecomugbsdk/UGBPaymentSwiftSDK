# UGBPaymentSwiftSDK


# Install
With Cocoapods

```ruby
pod 'UGBPaymentSwiftSDK', :git => 'https://github.com/ecomugbsdk/UGBPaymentSwiftSDK.git', :tag => '1.2.1'
```

While using UGBPaymentSwiftSDK, don’t forget:

```swift
import UGBPaymentSDK
```

# Requirements
iOS 12.0+ Required


# SDK configuration
Init the UGBPaymentSwiftSDK library. For example:

```swift
private let ugbPaymentSDK = UGBPaymentSDK()
```

Supported server **Environment**:  

```swift
public enum Environment {
    case development
    case production
}
```

<br>


# Customization 

You can easily customize the payment screen colors/texts Just implement `ColorSettings` or `ColorSettings` and pass into your application variable:

```swift

let customColors = ColorSettings()

// Colors for PayButton
customColors.buttonPayEnabledColor = UIColor.colorFromHex("#212529")
customColors.buttonPayDisabledColor = UIColor.colorFromHex("#cad4dd")
customColors.buttonPayTextColor = .white
customColors.buttonPayEnabledTextColor = .white
customColors.buttonPayDisabledTextColor = .white

// Colors and Fonts for InfoText
customColors.infoTextBackgroundColor = .clear
customColors.infoTextColor = .black

// Colors for PaymentSummary
customColors.summaryBackgroundColor = .white
customColors.summaryTextColor = UIColor.colorFromHex("#212529")
customColors.summarySeparatorColor = UIColor.colorFromHex("#E7F0F7")

// Colors for TextFields and Labels
customColors.textFieldColor = .black
customColors.textFieldPlaceholderColor = UIColor.colorFromHex("#9E9E9E")
customColors.textFieldActiveBorderColor = UIColor.colorFromHex("#212529")
customColors.textFieldInactiveBorderColor = UIColor.colorFromHex("#9E9E9E")
customColors.textFieldLabelTextColor = .black

// Colors for AlertText
customColors.alertGradientColors = [
    UIColor.colorFromHex("#DBC6B8").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#FFA3A3").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#FC8E8E").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#1F1BE0").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#2011D1").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#3018C2").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#3C16A8").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#572FCA").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#4512D5").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#4A1DCA").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#4718CF").withAlphaComponent(0.6).cgColor,
    UIColor.colorFromHex("#230A68").withAlphaComponent(0.6).cgColor
]

customColors.alertBackgroundColor = .white
customColors.alertEmojiLabelColor = .black
customColors.alertTextLabelColor = .black

// Colors for NavigationButton
customColors.navigationButtonColor = .black

// Colors for MyViewController
customColors.viewBackgroundColor = UIColor.colorFromHex("#E7F0F7")

// Colors for LoaderLongPollingManager
customColors.loaderDimmingBackgroundColor = UIColor.black.withAlphaComponent(0.4)
customColors.loaderStrokeColor = UIColor.colorFromHex("#E7F0F7")

// Colors for LongPollingManager's modals
customColors.modalViewSuccessBackgroundColor = UIColor.black.withAlphaComponent(0.4)
customColors.modalViewErrorBackgroundColor = UIColor.black.withAlphaComponent(0.4)

// Colors for ModalErrorViewController
customColors.errorResultViewBackgroundColor = UIColor.colorFromHex("#E7F0F7")
customColors.errorResultDefaultBackgroundColor = .white
customColors.errorResultShadowColor = .black
customColors.errorResultLabelColor = .black
customColors.errorResultButtonBorderColor = .black
customColors.errorResultButtonTitleColor = .black
customColors.errorResultButtonBackgrundColor = .clear

// Colors for ModalSuccessViewController
customColors.successResultViewBackgroundColor = UIColor.colorFromHex("#E7F0F7")
customColors.successResultDefaultBackgroundColor = .white
customColors.successResultShadowColor = .black
customColors.successResultLabelColor = .black
customColors.successResultButtonTitleColor = .black
customColors.successResultButtonBorderColor = .black
customColors.successResultButtonBackgroundColor = .clear

customColors.bottomPanelWithLogosColor = .white

// Apply these settings
ugbPaymentSDK.setColorSettings(customColors: customColors)

let customTextStrings = TextSettings()

// Texts for PayButton
customTextStrings.buttonPayEnabledTextString = "Сплатити"
customTextStrings.buttonPayDisabledTextString = "Сплатити"

// Texts for InfoText
customTextStrings.infoTextString = "Транзакція обробляється ПАТ «УКРГАЗБАНК». Натискаючи «Сплатити», ви погоджуєтесь з умовами Публічної оферти. Виникли питання?"
customTextStrings.infoTextLinkString = "Публічної оферти"
customTextStrings.infoTextLinkURLString = "https://www.ukrgasbank.com/upload/file/oferta_perekaz.pdf"

// Texts for PaymentSummary
customTextStrings.sumLabelTextString = "Сума до сплати:"
customTextStrings.commissionLabelTextString = "Комісія платіжної компанії:"
customTextStrings.totalLabelTextString = "Загалом:"

// Texts for TextFields and Labels
customTextStrings.cardNumberPlaceholderString = "0000 0000 0000 0000"
customTextStrings.expiryDatePlaceholderString = "Місяць/Рік"
customTextStrings.cvvPlaceholderString = "XXX"
customTextStrings.cardNumberLabelString = "Номер картки"
customTextStrings.expiryDateLabelString = "Строк дії"
customTextStrings.cvvLabelString = "Код CVV"
customTextStrings.toolbarDoneButtonString = "Done"

// Texts for AlertText
customTextStrings.alertTextString = "Дія не зберігає ваші платіжні дані."
customTextStrings.alertEmojiString = "☝️"

// Texts for NavigationButton
customTextStrings.navigationButtonString = "Разовий платіж карткою"

// Texts for ModalSuccessViewController
customTextStrings.successEmojiString = "👍"
customTextStrings.successMessageString = "Дякуємо, кошти зараховно"
customTextStrings.successHintString = "Кошти успішно зараховано на рахунок Національного банку України"
customTextStrings.continueButtonTitleString = "Продовжити"

// Texts for ModalErrorViewController
customTextStrings.errorEmojiString = "😟"
customTextStrings.errorMessageString = "Платіж не виконано"
customTextStrings.errorHintString = "Зверніться до банку, що видав картку"
customTextStrings.errorButtonTitleString = "Продовжити"



ugbPaymentSDK.setTextSettings(customTexts: customTextStrings)
```

For colors you can use standart SWIFT UIColors, for example .white, or UIColor.colorFromHex("#FFFFFF")

#  Prepare payment data for sending:
a) Create `MerchantConfig` object that contains merchant data settings

```swift
let merchantConfig = MerchantConfig(
        apiKey: "653s06d1-218f-447a-9025-a2e653f18b8d",
        merchantName: "your_merchant_name",
        sessionToken: "h.b.s"  // in format JWT (below is a specification of creating a signature)
    )
```

b) Create `AmountConfig` object that contains amount data settings

```swift
let amountConfig = AmountConfig(
        amount: "1.00",
        currency: "UAH",
        commission: "0.00"
    )
```

Please use format amount how present in example to correct work!

c) Create `TransactionConfig` object that contains transaction data settings

```swift
let transactionConfig = TransactionConfig(
    orderID: UUID().uuidString,
    action: PaymentAction.purchase
)
```

d) Create `PaymentData` object that contains all settings for you payment

```swift
let paymentData = PaymentData(
    merchantConfig: merchantConfig,
    amountConfig: amountConfig,
    transactionConfig: transactionConfig
)
```

#  Prepare payment data for sending(paymentInit):
a) Create json data to sending, it will contain payment information

```swift
 var paymentDataString : String = "{\n"
  "  \"apayConfig\": {\n" +
        "    \"merchantName\": \"DIIA\",\n" +
        "    \"merchantId\": \"merchant.ugbcheckout\",\n" +
        "    \"environment\": \"develop\"\n" +
        "  },\n" +
        "  \"paymentToken\":eyJhbGciOiJSUzI1kpXVCJ9.ekYXRhIjoie1wib3JkZXJJZFwiOlwiRE9ONzUxMTc5NDYwNDgyNDZcIixcImFtb3VudFwiOjEwMCxcImZlZVwiOjAsXCJ1c2VySWRcIjpcIjU3NGZkMGNlYzEyYTA4NjVjNDJmOWUzOGNmMTllZDlmMmE3YTAwZWRmZjBmOGJkZjQ1N2M1NTU1ZWEwYTA2ZWIwMzNjOWQ4Njc1MWQxNDk3ZDU2ZTg2NTgwM2M4MTU3YjY4NjhiOTY3ZDIzZDQwZDM3YjZhZGZiMmVmY2M5MTgzXCIsXCJkZXNjcmlwdGlvblwiOlwi0JHQu9Cw0LPQvtC00ZbQudC90LAg0LTQvtC_0L7QvNC-0LPQsCDQstGW0LnRgdGM0LrQvtCy0L7RgdC70YPQttCx0L7QstGG0Y_QvFwiLFwiXCI6XCIyMDI0LTA5LTE3VDEzOjQzOjI3LjY0M1pcIixcInVuaXhUaW1lU3RhbXBcIjoxNzI2NTgwNjA4LFwiY3VycmVuY3lcIjpcIlVBSFwiLFwicmVjaXBpZW50c1wiOlt7XCJvcmRlcl9yZWNpcGllbnRfaWRcIjpcIkRPTjc1MTE3OTQ2MDQ4MjQ2XzBcIixcIm1lcmNoYW50X25hbWVcIjpcInUyNF9kZWZlbmNlXCIsXCJiaWxsX3R5cGVcIjpcInUyNF9kZWZlbmNlXCIsXCJhbW91bnRcIjoxMDB9XX0iLCJpYXQiOjE3MjY1ODA2MDcsImV4cCI6MTcyNjU4NzgwN30.CTGhS9BaWQVaQ5nwxIoMzqnRYdoAvVLTPU0EZFI5kIOElRdF7o6m6yCCuTYL2qWNBBFteZBSuhRA77Rcf-9aOYH3QqVpGYRIptqC79vrfmivoG1OxSfFsTDrUoEsizxyCuF4QfpqCm4zFQ0DoXhY7jTpwZZP3CNTt7jGIkn-BMqz7nXOaIT6WWwG73cg6fe-u-Gli2IlfLwaJ-Iw0UXqWNuipHRyaHJMaMe0CbpWy5SyNHctAxCWXJr0BHXFxJLBssnI-Y2Ot2QA-YAXSJxpqhoLJq1xpuQ_XNcFp7wrG-nHiW6N8KJqC-p2S3lMs54puDTTU0rt4g\",\n" +
        "\"merchantId\": \"test_merchant\",\n" +
        "  \"orderId\": \"2895B8A8_5EC5_41C5_B865_EA6FFF82C320\",\n" +
        "    \"amount\": 100.00,\n" +
        "    \"merchantId\": \"test_merchant\",\n" +
        "    \"fee\": 0,\n" +
        "    \"userId\": \"574fd0cec12a0865c42f9e38cf19ed9f2a7a00edff0f8bdf457c5555ea0a06eb033c9d86751d1497d56e865803c8157b6868b967d23d40d37b6adfb2efcc9183\",\n" +
        "    \"description\": \"Test Payment\",\n" +
        "    \"initializationDate\": \"2024-09-13T13:43:27.643Z\",\n" +
        "    \"unixTimeStamp\": 1726580608,\n" +
        "    \"currency\": \"UAH\",\n" +
        "    \"recipients\": [\n" +
        "      {\n" +
        "        \"order_recipient_id\": \"TEST123456789_0\",\n" +
        "        \"merchant_name\": \"test_merchant\",\n" +
        "        \"bill_type\": \"test_merchant\",\n" +
        "        \"amount\": 100\n" +
        "      }\n" +
        "    ]\n" +
        "  }\n" +
        "}"
```

b) After you need use this data with apiKey and send request

```kotlin
ugbPaymentSDK.paymentInit(
        from: self,
        paymentDataString: paymentDataString,
        apiKey: "0b2a1987-934c-437c-a080-9fb65d7f1ecd"
    )
```

About `resultData` and function callback [information](#handling-payment-status).

# Specification of create JWT Token

This option is required in certain cases. Please contact with the administration about the need to use the token. 

`EXAMPLE RSA PRIVATE KEY` :

```EXAMPLE RSA PRIVATE KEY
-----BEGIN RSA PRIVATE KEY-----
MIIBOAIBAAJBAOOefHCTXucdN4NPA/fOGsQb608NsKEKNPncwxqu4rfutk4jcORF
G7KwRtBj/b+mPRXJ5xZgYK582/2o9xxYPWcCARECQELyYNXQ/cuBEFPL8hu1Fu5i
kICprGuZlxxP/SX3M5+B48vymQjaVefWtZ4oZ6GOip1aky7GjCjnzojVx4Il47kC
IQD4ooQSHDteYGAsOzeILuBsPCukOIWnnO7zE3dVuzvKpQIhAOpcmbzdI2YK3H3h
1khresZcNxs+0ULs4CqyjfsNAgYbAiAr4HGo18491MWtc9yfj81ARtqGZFPSSN7f
mgYAEft+HQIgNyTY4ST5RS+7aOnYEQo7AX8cBmkiLd1h6+3HDeTxatkCIQDVQrAy
6mGv7R9k07tA7qRnaoHI30t63VY65zgHAcJj2g==
-----END RSA PRIVATE KEY-----
```

`EXAMPLE HEADER for JWT` :

```json
{
    "alg": "RS256",
    "typ": "JWT"
}
```

`EXAMPLE DATA for JWT` :

```json
{
    "merchant_name": "prod_test",
    "order_id": "123456789TEST",
    "timestamp": "171213770346961"
}
```

If you used the correct settings and data to generate the signature, you will end up with a token like this based on the data above:

```
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJtZXJjaGFudF9uYW1lIjoicHJvZF90ZXN0Iiwib3JkZXJfaWQiOiIxMjM0NTY3ODlURVNUIiwidGltZXN0YW1wIjoiMTcxMjEzNzcwMzQ2OTYxIn0.xyJ35F3L7RxQmWYOFymXR05UmNcR036yBxD82qWtBvWQsQo1m2FUtXGnJup3RqEiO3zHKC_s1TJq1JZfehpTaA
```



# Make a request for payment processing

```swift
ugbPaymentSDK.presentLibraryViewController(
    from: self,
    toSuccess:   navigationControllerSuccess,
    toError:     navigationControllerError,
    environment: .development,
    paymentData: paymentData
)
```
`from` - UIViewController for displaying payment View

`toSuccess` - UIViewController where redirect user after success payment(can take nil value)

`toError` - UIViewController where redirect user after error payment(can take nil value)

`environment` - environment you want to use

`paymentData` - object that contains settings your payment

<br>

# Handling payment status

```swift
ugbPaymentSDK.paymentCompletion = { paymentData in
            
    print("paymentData.status: \(paymentData.status)")
    
    if let description = paymentData.description {
        print("paymentData.description: \(description)")
    } else {
        print("paymentData.description is nil")
    }
    
    if let rrn = paymentData.rrn {
        print("paymentData.rrn: \(rrn)")
    } else {
        print("paymentData.rrn is nil")
    }
    
    if let errorCode = paymentData.errorCode {
        print("paymentData.errorCode: \(errorCode)")
    } else {
        print("paymentData.errorCode is nil")
    }
    
    if let orderID = paymentData.orderID {
        print("paymentData.orderID: \(orderID)")
    } else {
        print("paymentData.orderID is nil")
    }
    
    if let currency = paymentData.currency {
        print("paymentData.currency: \(currency)")
    } else {
        print("paymentData.currency is nil")
    }
    
    if let termID = paymentData.termID {
        print("paymentData.termID: \(termID)")
    } else {
        print("paymentData.termID is nil")
    }
    
    if let amount = paymentData.amount {
        print("paymentData.amount: \(amount)")
    } else {
        print("paymentData.amount is nil")
    }

    if let timestamp = paymentData.timestamp {
        print("paymentData.timestamp: \(timestamp)")
    } else {
        print("paymentData.timestamp is nil")
    }
    
    if let transactionReference = paymentData.transactionReference {
        print("paymentData.transactionReference: \(transactionReference)")
    } else {
        print("paymentData.transactionReference is nil")
    }
}
```
> You get data when payment getting finnaly status

`PaymentInfoResponse` :
|Parameter    | Description |
| ----------- | ----------- |
|status| Transaction status|
|description	|Payment description|
|rrn| Unique identifier in processing|
|errorCode| SDK payment status code|
|order_id| Unique identifier of order you set|
|currency|	Transaction currency (ISO_4217)|
|termID| Payment termina under which the operation was performed|
|amount	| Transaction amount|
|timestamp |	Timestamp when transaction get finnaly status|
|transactionReference |	Reference your transaction|
|||


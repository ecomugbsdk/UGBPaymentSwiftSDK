# UGBPaymentSwiftSDK


# Install
With Cocoapods

```ruby
pod 'UGBPaymentSwiftSDK', :git => 'https://github.com/ecomugbsdk/UGBPaymentSwiftSDK.git', :tag => '0.1.0'
```

While using UGBPaymentSwiftSDK, don’t forget:

```swift
import UGBPaymentSDK
```

# Requirements
iOS 11.0+ Required


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
        sessionToken: "h.b.s"  // in format JWT
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

`toSuccess` - UIViewController where redirect user after success payment

`toError` - UIViewController where redirect user after error payment

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


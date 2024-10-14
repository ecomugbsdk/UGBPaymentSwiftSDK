Pod::Spec.new do |spec|

  spec.name         = "UGBPaymentSwiftSDK"
  spec.version      = "0.6.0"

  spec.summary      = "UGBPaymentSwiftSDK create for payments in app IOS."
  spec.description  = "UGBPaymentSwiftSDK see on https://github.com/ecomugbsdk/UGBPaymentSwiftSDK.git."

  spec.homepage     = "https://www.ukrgasbank.com/"

  spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  
  spec.platform     = :ios, "12.0"
  spec.author       = { "BohdanPotorochyn" => "bpotorochyn@ukrgasbank.com" }
  spec.source       = { :git => "https://github.com/ecomugbsdk/UGBPaymentSwiftSDK.git", :tag => "#{spec.version}" }

  spec.vendored_frameworks = 'Sources/*.xcframework'

end

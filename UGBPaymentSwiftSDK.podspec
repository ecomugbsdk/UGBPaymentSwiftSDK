pod::Spec.new do |spec|

  spec.name         = "UGBPaymentSwiftSDK"
  spec.version      = "0.0.2"

  spec.summary      = "UGBPaymentSwiftSDK create for payments in app IOS."
  spec.description  = "UGBPaymentSwiftSDK create for payments in app IOS."

  spec.homepage     = "https://www.ukrgasbank.com/"

  spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  
  spec.platform     = :ios, "11.0"
  spec.author       = { "BohdanPotorochyn" => "bpotorochyn@ukrgasbank.com" }
  spec.source       = { :git => "https://github.com/ecomugbsdk/UGBPaymentSwiftSDK", :tag => "#{spec.version}" }

  spec.vendored_frameworks = 'Sources/*.xcframework'

end

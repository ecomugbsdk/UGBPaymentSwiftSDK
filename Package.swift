// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "UGBPaymentSwiftSDK",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "UGBPaymentSwiftSDK",
            targets: ["UGBPaymentSwiftSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UGBPaymentSwiftSDK",
            path: "./Sources/UGBPaymentSwiftSDK.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
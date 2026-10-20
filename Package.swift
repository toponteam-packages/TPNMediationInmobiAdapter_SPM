// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationInmobiAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationInmobiAdapter",
            targets: ["TPNMediationInmobiAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", exact: "11.4.1")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkInmobiAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkInmobiAdapter/11.4.1.2.9/AnyThinkInmobiAdapter-11.4.1.2.9.zip",
            checksum: "1a29c44557a0fc7eb5d41db7e0cf2ea919afd2db4b05dd5523698cdc9994439c"
        ),
        .target(
            name: "TPNMediationInmobiAdapterTarget",
            dependencies: [
                "AnyThinkInmobiAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package")
            ],
            path: "Sources/TPNMediationInmobiAdapterTarget"
        )
    ]
)

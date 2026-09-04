// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MediaMelon-AVPlayer-SDK",

    platforms: [
        .iOS(.v15),
        .tvOS(.v15)
    ],

    products: [
        .library(
            name: "MediaMelon-AVPlayer-SDK",
            targets: [
                "MediaMelon_AVPlayer_SDK"
            ]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/MediamelonSDK/mm-ios-qoe-sdk",
            exact: "2.16.0"
        )
    ],

    targets: [
        .target(
            name: "MediaMelon_AVPlayer_SDK",

            dependencies: [
                .product(
                    name: "MediaMelonQoE",
                    package: "mm-ios-qoe-sdk"
                )
            ],

            path: "Source"
        )
    ]
)
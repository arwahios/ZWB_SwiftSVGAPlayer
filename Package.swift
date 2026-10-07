// swift-tools-version: 5.9
//
//  Package.swift
//  SwiftSVGAPlayer
//
//  Vendored from muskspace0806-prog/ZWB_SwiftSVGAPlayer 1.0.15 for EffectKit PoC.
//  Changes vs upstream: iOS 16+, no Kingfisher (remote image uses URLSession in player).
//

import PackageDescription

let package = Package(
    name: "SwiftSVGAPlayer",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "SwiftSVGAPlayer",
            targets: ["SwiftSVGAPlayer"]
        )
    ],
    targets: [
        .target(
            name: "SwiftSVGAPlayer",
            path: "Sources/SwiftSVGAPlayer",
            exclude: [
                "Protobuf/README.md"
            ],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .define("SWIFT_PACKAGE")
            ]
        )
    ]
)

// swift-tools-version: 5.9

//
//  Package.swift
//  SharedUI
//
//  Copyright (c) 2026, Salesforce, Inc.,
//  All rights reserved.
//  For full license text, see the TERMS_OF_USE.txt file
//

import PackageDescription

let package = Package(
    name: "SharedUI",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "SharedUI",
            targets: ["SharedUITarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/salesforce/SLDSIcons-iOS.git", from: "1.2.0"),
    ],
    targets: [
        .binaryTarget(
            name: "SharedUI",
            url: "https://github.com/salesforce/SharedUI-iOS/releases/download/1.2.0/SharedUI.xcframework.zip",
            checksum: "fd954923c005b1a2727479d28de7021a77273976638ece13ceeca95d2ce4388e"
        ),
        .target(
            name: "SharedUITarget",
            dependencies: [
                "SharedUI",
                .product(name: "SLDSIcons", package: "SLDSIcons-iOS"),
            ],
            path: "Sources/SharedUITarget"
        ),
    ]
)

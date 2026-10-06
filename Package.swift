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
        .package(url: "https://github.com/salesforce/SLDSIcons-iOS.git", from: "1.2.7"),
    ],
    targets: [
        .binaryTarget(
            name: "SharedUI",
            url: "https://github.com/salesforce/SharedUI-iOS/releases/download/1.6.10/SharedUI.xcframework.zip",
            checksum: "1b9e8eb08682f137248c90a435c1e746f4e1beeab3a58a0445bfe3978fca0937"
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

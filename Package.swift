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
        .package(url: "https://github.com/salesforce/SLDSIcons-iOS.git", from: "1.2.5"),
    ],
    targets: [
        .binaryTarget(
            name: "SharedUI",
            url: "https://github.com/salesforce/SharedUI-iOS/releases/download/1.5.6/SharedUI.xcframework.zip",
            checksum: "fe38f77bc4f72ae94d927991299a64672e915386d09db31efad02cdbfb959caa"
        ),
        .target(
            name: "SharedUITarget",
            dependencies: [
                "SharedUI",
                .product(name: "SLDSIcons", package: "SLDSIcons-iOS"),
            ],
            path: "Sources/SharedUITarget"
        ),
    ],
    swiftLanguageVersions: [.v5]
)

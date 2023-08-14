// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ServiceKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ServiceKit",
            targets: ["ServiceKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ServiceKit",
            dependencies: []
        ),
        .testTarget(
            name: "ServiceKitTests",
            dependencies: ["ServiceKit"]
        ),
    ]
)

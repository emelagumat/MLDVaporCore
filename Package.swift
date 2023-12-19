// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MLDVaporCore",
    platforms: [
       .macOS(.v13)
    ],
    products: [
        .library(name: "MLDVaporCore", targets: ["MLDVaporCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.77.1")
    ],
    targets: [
        .target(
            name: "MLDVaporCore",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
            ]
        )
    ]
)

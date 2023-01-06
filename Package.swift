// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOS Cloud Arca",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ios_cloud_arca",
            targets: ["ios_cloud_arca"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            from: Version(stringLiteral: "9.0.0")
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ios_cloud_arca",
            dependencies: [
                .product(name: "FirebaseAuth", package: "firebase-ios-sdk")
            ]
        ),
        .testTarget(
            name: "ios_cloud_arcaTests",
            dependencies: ["ios_cloud_arca"]),
    ]
)

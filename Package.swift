// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GW2API",
    platforms: [
      .iOS(.v12)
    ],
    products: [
        .library(
            name: "GW2API",
            targets: ["GW2API"]),
    ],
    dependencies: [
    .package(url: "https://github.com/Zhendryk/APIClient", from: Version(1, 3, 0))
    ],
    targets: [
        .target(
            name: "GW2API",
            dependencies: ["APIClient"],
            path: "Source"),
        .testTarget(
            name: "GW2APITests",
            dependencies: ["GW2API"],
            path: "Tests"),
    ],
    swiftLanguageVersions: [.v5]
)

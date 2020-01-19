// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "BungieNetAPI",
    products: [
        .library(name: "BungieNetAPI", targets: ["BungieNetAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.0")),
    ],
    targets: [
        .target(name: "BungieNetAPI", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)

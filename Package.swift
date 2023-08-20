// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: [
        //.package(url: "https://github.com/daltoniam/Starscream", .upToNextMinor(from: "4.0.0")),
        .package(url: "https://github.com/daltoniam/Starscream", .exact("4.0.4"))
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)

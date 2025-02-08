// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "SocketIO",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/Fluzzarn/Starscream.git", from: "1.2.0")
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ],
    swiftLanguageModes: [.v5]
)

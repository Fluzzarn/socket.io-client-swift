// swift-tools-version:6.0

import PackageDescription

let deps: [Package.Dependency]
#if !os(Linux)
    deps = [.package(url: "https://github.com/Fluzzarn/Starscream", from: "1.2.0")]
#else
    deps = [.package(url: "https://github.com/vapor/engine", from: "2.0.0")]
#endif

let package = Package(
    name: "SocketIO",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies:
        deps,
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ],
    swiftLanguageModes: [.v5]
)

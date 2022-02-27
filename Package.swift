// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSample",
    platforms: [.iOS(.v12), .macOS(.v10_15)],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "SwiftSample",
            dependencies: []),
        .testTarget(
            name: "SwiftSampleTests",
            dependencies: ["SwiftSample"]),
    ]
)

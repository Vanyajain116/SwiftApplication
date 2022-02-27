// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/// Represents a supported platform.
struct SupportedPlatform {
    static func macOS(_ version: MacOSVersion) -> SupportedPlatform
    static func macOS(_ versionString: String) -> SupportedPlatform

    static func iOS(_ version: IOSVersion) -> SupportedPlatform
    static func iOS(_ versionString: String) -> SupportedPlatform
}

/// List of known versions.
extension SupportedPlatform.MacOSVersion {
    static let v10_11: MacOSVersion
    static let v10_12: MacOSVersion
    static let v10_13: MacOSVersion
    static let v10_14: MacOSVersion
    static let v10_15: MacOSVersion
}

final class Package {
    init(
        name: String,
        platforms: [SupportedPlatform]? = nil,
    )
}

let package = Package(
    name: "SwiftSample",
    platforms: [.iOS(.v11), .macOS(.v10_15)],
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

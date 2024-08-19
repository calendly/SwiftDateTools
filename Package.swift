// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "DateToolsSwift",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "DateToolsSwift",
            targets: ["DateToolsSwift"])
    ],
    targets: [
        .target(
            name: "DateToolsSwift",
            path: "DateToolsSwift/DateTools",
            exclude: [
                "Examples",
                "DateToolsSwift/Examples"
            ],
            resources: [
                .copy("DateTools.bundle")
            ]
        ),
        .testTarget(
            name: "DateToolsSwiftTests",
            dependencies: ["DateToolsSwift"],
            path: "DateToolsSwift/Tests/DateToolsTests/DateToolsTestsTests",
            exclude: [
                "Info.plist"
            ],
            resources: [
                .copy("DateTools.bundle")
            ]
        )
    ]
)

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "NetworkingLibrary",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NetworkingLibrary",
            targets: ["NetworkingLibrary"]
        ),
    ],
    targets: [
        .target(
            name: "NetworkingLibrary",
            dependencies: []
        )
    ]
)



// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ZFPlayer",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_10),
    ],
    products: [
        .library(
            name: "ZFPlayer",
            targets: ["ZFPlayer"]
        ),
        .library(
            name: "ZFControlView",
            targets: ["ZFControlView"]
        ),
        .library(
            name: "ZFAVPlayer",
            targets: ["ZFAVPlayer"]
        ),
        .library(
            name: "ZFijkplayer",
            targets: ["ZFijkplayer"]
        )
    ],
    targets: [
        .target(
          name: "ZFPlayer",
          dependencies: [],
          path: "ZFPlayer/Classes/Core",
          publicHeadersPath: "."
        ),
        .target(
            name: "ZFControlView",
            dependencies: ["ZFPlayer"],
            path: "ZFPlayer/Classes/ControlView",
            resources: [.copy("ZFPlayer.bundle")],
            publicHeadersPath: "."
        ),
        .target(
            name: "ZFAVPlayer",
            dependencies: ["ZFPlayer"],
            path: "ZFPlayer/Classes/AVPlayer",
            publicHeadersPath: "."
        ),
        .target(
            name: "ZFijkplayer",
            dependencies: ["ZFPlayer"],
            path: "ZFPlayer/Classes/ijkplayer",
            publicHeadersPath: "."
        )
    ]
)

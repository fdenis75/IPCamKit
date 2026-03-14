// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "IPCamKit",
  platforms: [
 platforms: [.macOS(.v15), .iOS(.v15), .macCatalyst(.v15)],  ],
  products: [
    .library(
      name: "IPCamKit",
      targets: ["IPCamKit"]
    )
  ],
  targets: [
    .target(
      name: "IPCamKit",
      path: "Sources/IPCamKit"
    ),
    .executableTarget(
      name: "CameraViewer",
      dependencies: ["IPCamKit"],
      path: "Examples/CameraViewer"
    ),
    .testTarget(
      name: "IPCamKitTests",
      dependencies: ["IPCamKit"],
      path: "Tests/IPCamKitTests",
      resources: [.copy("TestData")]
    )
  ]
)

// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DashKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "DashKit",
            targets: ["DashKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/horizontalsystems/BitcoinCore.Swift.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/horizontalsystems/DashCrypto.Swift.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/horizontalsystems/HdWalletKit.Swift.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/horizontalsystems/HsToolKit.Swift.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/horizontalsystems/HsCryptoKit.Swift.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/horizontalsystems/HsExtensions.Swift.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "DashKit",
            dependencies: [
                "BigInt", "RxSwift",
                .product(name: "BitcoinCore", package: "BitcoinCore.Swift"),
                .product(name: "DashCrypto", package: "DashCrypto.Swift"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit.Swift"),
                .product(name: "HsExtensions", package: "HsExtensions.Swift"),
                .product(name: "HsToolKit", package: "HsToolKit.Swift"),
                .product(name: "HdWalletKit", package: "HdWalletKit.Swift"),
                .product(name: "GRDB", package: "GRDB.swift")
            ]
        ),
    ]
)
import PackageDescription

let package = Package(
  dependencies: [
    .Package(url: "https://github.com/mokagio/DateFactory.git", majorVersion: 1),
  ]
)

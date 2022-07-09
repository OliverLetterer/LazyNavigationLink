# LazyNavigationLink

[![Platforms](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS-green?style=flat-square)](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS-green?style=flat-square)
[![Swift](https://img.shields.io/badge/Swift-5.5-green?style=flat-square)](https://img.shields.io/badge/Swift-5.5-green?style=flat-square)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-critical?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-critical?style=flat-square)

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but LazyNavigationLink does support its use on supported platforms.

Once you have your Swift package set up, adding LazyNavigationLink as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/OliverLetterer/LazyNavigationLink.git", .upToNextMajor(from: "0.1.0"))
]
```

### Usage

Replace occurrences of NavigationLink with

```swift
struct MyView: View {
    var body: some View {
        List {
            NavigationLink("Next") {
                Text("Details")
            }
        }
    }
}

struct MyView: View {
    var body: some View {
        List {
            NavigationLink(label: Text("Next")) {
                Text("Details")
            }
        }
    }
}
```
.

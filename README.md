# SharedUI for iOS

## 📝 Overview

SharedUI is a comprehensive SwiftUI component library designed for Salesforce mobile applications. It provides a complete design system with themeable UI components, a robust theming architecture, and essential utilities to ensure consistent user experiences across mobile projects.

### Key Features

- **Production-Ready Components**: From basic elements like buttons and badges to complex layouts like collapsible cards and carousels
- **Comprehensive Theme System**: Protocol-based theming with complete Salesforce Cosmos implementation supporting light/dark modes
- **Accessibility First**: Full Dynamic Type support, VoiceOver compatibility, and WCAG compliance
- **SLDS V2 Compliant**: Follows Salesforce Lightning Design System Plus guidelines
- **SwiftUI Native**: Built specifically for SwiftUI with modern declarative patterns
- **Extensive Documentation**: Complete API documentation with practical examples for every component

### Architecture

The library is organized into three main modules:

- **Components**: Reusable UI components including navigation, input, display, and layout elements
- **Theme System**: Protocol-based theming with colors, fonts, dimensions, and shapes
- **Utilities**: Helper extensions for common operations like hex colors, system fonts, and accessibility

## 🚀 Installation

### Swift Package Manager

Add SharedUI to your project using Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/salesforce/SharedUI-iOS.git", from: "1.0.0")
]
```

### CocoaPods

Add SharedUI to your `Podfile`:

```ruby
source 'https://github.com/forcedotcom/SalesforceMobileSDK-iOS-Specs.git'

target 'YourApp' do
  use_frameworks!
  pod 'SharedUI', '~> 1.0'
end
```

Then run:

```bash
pod install
```

### Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## 📋 Available Components

| Component | Description |
|-----------|-------------|
| **Avatar** | Circular avatar displaying 2-letter initials |
| **Button** | Comprehensive button with multiple styles and configurations |
| **Checkbox** | Checkbox with mixed states and collection support |
| **Card** | Basic card container with ViewBuilder pattern |
| **Collapsable Card** | Collapsible card container with header and expandable content |
| **Field Value Tile** | Field-value pair display with edit and delete actions |
| **No Content** | Empty/loading/error state display with customizable styles |
| **Toggle Tile** | Selectable tile with label and value |
| **Utility Icon** | SLDS utility icon wrapper with sizing and coloring |
| **Toast** | Notification toast with multiple styles and actionable content |
| **Base Row** | Flexible base list row template with ViewBuilder content |
| **Search Row** | Search-related rows with different styles (suggestions, recent, show more) |
| **Contact Row** | Contact list row with avatar and details |
| **Badge** | Numeric badge with style variants and value limits |
| **Badge Row** | Generic row component with leading content, title, and numerical badge |
| **Bottom Half Sheet** | Modal half sheet container with automatic sizing |
| **Carousel** | Generic carousel component for displaying a series of content with page indicators |
| **Footer** | Footer component with action button |
| **Onboarding Carousel** | Carousel component for onboarding with multiple slides, indicators, and navigation |
| **Rich Text** | Rich text display component with formatting and styling support |

## 🎨 Theme System

SharedUI includes a comprehensive theming system based on Salesforce Cosmos design tokens:

### Using Themes

```swift
import SharedUI

// Apply theme to your app
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.sharedUITheme, SalesforceCosmosTheme())
        }
    }
}
```

### Available Design Tokens

- **Colors**: Primary, secondary, success, warning, error, neutral palettes
- **Typography**: Heading, body, caption styles with dynamic type support
- **Spacing**: Consistent spacing scale (4pt grid system)
- **Corner Radius**: Predefined corner radius values
- **Shadows**: Elevation system for depth

## 💡 Quick Start Example

```swift
import SwiftUI
import SharedUI

struct ExampleView: View {
    @State private var showToast = false

    var body: some View {
        VStack(spacing: 16) {
            SharedUIButton(
                text: "Primary Button",
                style: .primary,
                action: { showToast = true }
            )

            SharedUICard {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Card Title")
                        .font(.headline)
                    Text("Card content goes here")
                        .font(.body)
                }
            }

            SharedUIAvatar(
                initials: "JD",
                size: .large
            )
        }
        .padding()
        .toast(isPresented: $showToast) {
            SharedUIToast(
                message: "Action completed successfully!",
                style: .success
            )
        }
    }
}
```

## ♿️ Accessibility

All SharedUI components are built with accessibility as a priority:

- **Dynamic Type**: All text scales appropriately with user preferences
- **VoiceOver**: Comprehensive screen reader support with meaningful labels
- **Color Contrast**: WCAG AA compliant color combinations
- **Touch Targets**: Minimum 44x44pt touch targets on all interactive elements
- **Semantic Elements**: Proper use of accessibility traits and hints

## 📄 License

SharedUI is available under the terms specified in the [TERMS OF USE](TERMS%20OF%20USE) file.

Copyright 2026 Salesforce, Inc. All rights reserved.

## 🤝 Support

For bug reports and feature requests, please use the GitHub Issues section of this repository.

For Salesforce employees: Please refer to internal documentation for contribution guidelines and development setup.

## 🔗 Related Projects

- [SLDSIcons](https://github.com/salesforce/SLDSIcons-iOS) - Salesforce Lightning Design System icon library for iOS
- [Salesforce Lightning Design System](https://www.lightningdesignsystem.com/) - The official design system

---

**Note**: This library is provided as-is for use in mobile applications. See the TERMS OF USE for complete details on usage, warranty, and liability.

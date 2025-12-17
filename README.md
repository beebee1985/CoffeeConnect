# CoffeeConnect – Mobile Ordering App

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![iOS](https://img.shields.io/badge/iOS-14.0%2B-blue.svg)
![Xcode](https://img.shields.io/badge/Xcode-13.0%2B-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

A modern iOS mobile ordering application built with SwiftUI that provides a seamless coffee shop ordering experience.

## 📱 About The Project

CoffeeConnect is a comprehensive mobile ordering application modeled around a Tim Hortons ordering system. The app demonstrates advanced SwiftUI concepts, state management, navigation patterns, and UI polish to create a professional-level mobile ordering experience.

## 🎯 Problem Statement

Customers frequently experience delays in coffee shops due to long queues and limited customization options at the counter. CoffeeConnect provides a mobile solution that allows pre-ordering, rewards tracking, and personalized item customization to improve both customer satisfaction and operational efficiency.

## 🚀 Objectives

The main objectives of this project are to:

1. **Implement a user-friendly ordering system** where customers can browse menu items
2. **Develop a comprehensive cart feature** for adding, removing, and updating items
3. **Build an intuitive checkout process** that summarizes orders and calculates totals
4. **Introduce a loyalty rewards tracker** to simulate points collection
5. **Polish the user interface** with SwiftUI features including animations and navigation

## ✨ Features

### Core Functionality
- **📋 Menu Display**: Scrollable list of coffee and food items with names, images, and prices
- **🛒 Cart System**: Add, remove, and edit items with dynamic cart total updates
- **💳 Checkout Screen**: Comprehensive order summary including items, quantity, and cost breakdown
- **🏆 Rewards Tracker**: Simulated points system that increases with each order
- **👤 User Profile**: Basic profile page with saved preferences and order history

### Technical Features
- **SwiftUI Navigation**: Modern navigation patterns and user flows
- **State Management**: Efficient data flow and state updates across views
- **Local Data Persistence**: UserDefaults/Core Data for storing user preferences
- **Responsive Design**: Optimized for various iOS device sizes
- **Smooth Animations**: Enhanced user experience with SwiftUI animations

## 🛠️ Technologies Used

- **Xcode**: IDE for iOS development
- **SwiftUI**: Modern UI framework for iOS
- **Swift**: Primary programming language
- **GitHub**: Version control and collaboration
- **UserDefaults/Core Data**: Local data persistence
- **Combine**: Reactive programming framework

## 📋 Requirements

- iOS 14.0+
- Xcode 13.0+
- Swift 5.0+
- macOS 11.0+ (for development)

## 🚀 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/beebee1985/CoffeeConnect2.git
   ```

2. **Navigate to the project directory**
   ```bash
   cd CoffeeConnect2
   ```

3. **Open the project in Xcode**
   ```bash
   open CoffeeConnect.xcodeproj
   ```

4. **Select your target device or simulator**

5. **Build and run the project** (⌘+R)

## 📁 Project Structure

```
CoffeeConnect/
├── CoffeeConnect/                 # Main app source files
│   ├── Views/                     # SwiftUI Views
│   │   ├── ContentView.swift      # Main navigation view
│   │   ├── MenuView.swift         # Menu browsing interface
│   │   ├── CartView.swift         # Shopping cart management
│   │   ├── CheckoutView.swift     # Order checkout process
│   │   ├── ProfileView.swift      # User profile and settings
│   │   └── ...
│   ├── Models/                    # Data models
│   │   ├── MenuItem.swift         # Menu item data structure
│   │   ├── CartItem.swift         # Cart item with customizations
│   │   ├── UserProfile.swift      # User data model
│   │   └── ...
│   ├── ViewModels/               # Business logic
│   │   ├── MenuViewModel.swift    # Menu data management
│   │   ├── CartManager.swift      # Cart state management
│   │   └── ...
│   └── Assets.xcassets/          # App icons and images
├── CoffeeConnectTests/           # Unit tests
├── CoffeeConnectUITests/         # UI tests
└── README.md                     # Project documentation
```

## 🎯 Development Timeline

- **✅ Week 1**: Project setup, UI mockups, and menu screen implementation
- **✅ Week 2**: Cart functionality and comprehensive state management
- **✅ Week 3**: Checkout screen development and rewards tracker integration
- **✅ Week 4**: Final testing, UI polish, code documentation, and deployment

## 🖥️ Screenshots

*Screenshots will be added here showcasing the main features of the app*

## 🧪 Testing

Run the test suite using:

```bash
⌘+U (in Xcode)
```

The project includes:
- **Unit Tests**: Testing business logic and data models
- **UI Tests**: Automated testing of user interactions

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built upon concepts from the HIITFit SwiftUI tutorial
- Inspired by real-world mobile ordering systems
- Thanks to the Swift and iOS development community

## 📞 Contact

**beebee1985** - rukkybb85@gmail.com

Project Link: [https://github.com/beebee1985/CoffeeConnect](https://github.com/beebee1985/CoffeeConnect)

---

**CoffeeConnect** - Bringing the coffee shop experience to your fingertips! ☕️

# 🧩 Flutter Layout Practice

## 🚀 Project Overview

A Flutter application demonstrating various UI layouts, widgets, and API integration techniques. This project serves as a practical exploration of Flutter's rich UI capabilities, providing examples of different layouts, components, and state management approaches for building mobile applications.

> **Note:** This project was created during my early days of learning Flutter development. The content and components are intentionally basic, focusing on fundamental concepts and building blocks of Flutter UI development.

## ✨ Features

- 🎨 Multiple screen layouts and UI components
- 🔄 API integration with JSONPlaceholder
- 📱 Responsive navigation with drawer
- 📊 Data display using various list views
- 📷 Image handling and display
- 📝 Form input management
- 🔔 Badge notifications UI

## 🛠️ Tech Stack

- ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
- ![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
- Material Design 3
- HTTP for API integration
- JSON serialization

## 📚 Learning Objectives

This project demonstrates:
- How to implement various Flutter layouts and widgets
- How to fetch and display data from RESTful APIs
- How to implement navigation in Flutter applications
- How to create custom UI components
- How to manage state with StatefulWidget
- How to handle user input in forms

## 🏗️ Project Structure

The project follows a clean, organized structure:

- **Screens**: UI components representing different application screens
  - `home_screen.dart`: Main navigation hub with drawer
  - `fetch_data_screen.dart`: API data fetching and display
  - `buttons_screen.dart`: Various button widgets demonstration
  - `image_screen.dart`: Image handling and display
  - `input_screen.dart`: User input forms and validation
  - `badge.view.dart`: Badge notifications UI
  - `navbar.dart`: Navigation bar implementation
  - `dynamic_appbar.dart`: Dynamic app bar with actions

- **Models**: Data classes that represent the application's data
  - `user.model.dart`: User data structure with JSON serialization

- **Classes**: Utility classes for application functionality
  - `api.class.dart`: API integration utilities

## 📱 Screens and Components

### Home Screen
- Main navigation hub with drawer menu
- Navigation to all feature screens

### Fetch Data Screen
- Demonstrates API integration with JSONPlaceholder
- FutureBuilder for asynchronous data loading
- Multiple list views to display user data
- Handles loading, error, and success states

### Buttons Screen
- Showcases various button types (Elevated, Text, Filled, Outlined, Icon)
- Material Design 3 button styling

### Image Screen
- Image loading from network and assets
- Grid layout for image gallery

### Input Screen
- Text input fields with controllers
- Form styling and validation
- Custom input decorations

### Badge View
- Custom notification badge implementation
- Positioned widgets and stacking

### Navbar
- Bottom navigation bar implementation
- Custom navigation icons and labels

### Dynamic Appbar
- Customizable app bar with dynamic actions
- Flexible header implementation

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

```bash
# Clone the repository
git clone https://github.com/Alok-Sci/flutter--layout-practice

# Navigate to project directory
cd flutter--layout-practice

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## 📝 Key Concepts Demonstrated

- Flutter widget hierarchy and composition
- State management with StatefulWidget
- Asynchronous programming with Future and FutureBuilder
- RESTful API integration
- JSON parsing and serialization
- Material Design components
- Navigation patterns (drawer, routes, navigation bar)
- Custom widget creation and reuse
- Responsive layout techniques

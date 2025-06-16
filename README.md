# Orders - Flutter Application

A modern Flutter application for managing and displaying orders with a data grid interface.

## Overview

This Flutter application provides a sophisticated interface for managing orders using Syncfusion's data grid components. The application is built with a focus on clean architecture, maintainable code, and a modern user interface.

## Features

- Data grid interface for order management
- Modern UI with custom SF Pro font integration
- Cross-platform support (iOS, Android)
- Responsive design

## Project Structure

```
lib/
├── components/     # Reusable UI components
├── screens/        # Application screens/pages
└── main.dart       # Application entry point

assets/
├── images/         # Image assets
└── fonts/          # Custom fonts (SF Pro)
```

## Dependencies

- Flutter SDK (^3.7.2)
- syncfusion_flutter_datagrid (^29.2.10)
- syncfusion_flutter_core (^29.2.10)
- cupertino_icons (^1.0.8)

## Getting Started

### Prerequisites

- Flutter SDK (version 3.7.2 or higher)
- Dart SDK
- IDE (VS Code, Android Studio, or IntelliJ IDEA)
- Git

### Installation

1. Clone the repository:

   ```bash
   git clone [repository-url]
   cd orders
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

## Development

### Code Style

The project follows Flutter's recommended code style and uses the `flutter_lints` package for code quality enforcement. The linting rules are defined in `analysis_options.yaml`.

### Assets

- Images should be placed in the `assets/images/` directory
- Custom fonts (SF Pro) are included in the `assets/fonts/` directory

## Acknowledgments

- Flutter team for the amazing framework
- Syncfusion for the data grid components
- SF Pro font family by Apple

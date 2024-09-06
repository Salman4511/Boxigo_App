# Boxigo App

## Overview
This Flutter project demonstrates a simple leads management app that displays and manages leads, including fetching data from an API, displaying it in various categories, and expanding/collapsing sections to show detailed information about the lead.

## Features
- Fetching lead data from an API
- Tab-based navigation between different categories
- Expansion panels to show/hide detailed lead information
- Use of `Provider` for state management
- Use MVC for architecture.

## Project Structure

```
lib/
├── main.dart
├── models/
|
├── views/
|
├── controllers/
│  
├── services/
│   
├── widgets/
│  
└── utils/
   
```

## Architecture

The app follows the MVC (Model-View-Controller) architecture pattern, ensuring a clean and organized codebase. The `Provider` package is used for state management, making it easier to manage and update the state across different app parts.

## Dependencies

This project uses the following dependencies:

- **http (`^1.2.2`)**: For making HTTP requests to fetch data from APIs.
- **intl (`^0.19.0`)**: For internationalization and localization of strings, dates, and other formats.
- **json_annotation (`^4.9.0`)**: Annotations to help with JSON serialization/deserialization.
- **json_serializable (`^6.8.0`)**: Code generator for JSON serialization.
- **provider (`^6.1.2`)**: For state management, helping separate business logic from UI.

### Dev Dependencies

- **build_runner (`^2.4.12`)**: For running code generation (such as generating code for JSON serialization).

Make sure to run the following commands after modifying or adding dependencies:

```bash
flutter pub get
```

If you're using code generation (like JSON serialization):

```bash
flutter pub run build_runner build
```

This will generate the necessary code for serializing/deserializing JSON into your model classes.

## Screenshots

<img src="https://github.com/user-attachments/assets/c857e10f-ff3b-4cd1-b57f-b872dd767974" alt="" width="300px">
<img src="https://github.com/user-attachments/assets/55c7291b-0bca-4f5d-b262-266a3ea9f9f4" alt="" width="300px">
<img src="https://github.com/user-attachments/assets/000816e5-3feb-4c5a-b76e-70318f2d12de" alt="" width="300px">
<img src="https://github.com/user-attachments/assets/bb212624-f38b-4753-85a1-38fbb5c2d53b" alt="" width="300px">
<img src="https://github.com/user-attachments/assets/15dfd799-5606-48cb-86f9-c3e0aff2d950" alt="" width="300px">


## How to Run

1. Clone the repository:

```bash
git clone <repo-url>
```

2. Navigate into the project directory:

```bash
cd <your-project-directory>
```

3. Install dependencies:

```bash
flutter pub get
```

4. If you’re using code generation, build the generated files:

```bash
flutter pub run build_runner build
```

5. Run the app:

```bash
flutter run
```

## Contact details

 salmanulfaris4511@gmail.com,
 9895840715

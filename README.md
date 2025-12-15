# Doctor Reservation App

A Flutter application for booking doctor appointments with ease.

## Features

### 🏠 Home Page
- Welcome screen with app branding
- Quick navigation to find doctors or view reservations

### 👨‍⚕️ Doctor List Page
- Browse available doctors by specialty
- View doctor ratings and hospital information
- Direct booking buttons for each doctor

### 📅 Reservation Page
- Select preferred doctor from dropdown
- Choose appointment date using date picker
- Select appointment time using time picker
- Confirmation dialog before booking
- Success feedback after booking

## Getting Started

1. Make sure Flutter is installed on your system
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app

## App Structure

```
lib/
├── main.dart          # App entry point and routing
└── pages/
    ├── home_page.dart     # Welcome screen
    ├── doctor_list_page.dart  # Doctor browsing
    └── reservation_page.dart  # Appointment booking
```

## Sample Data

The app includes sample data for 5 doctors across different specialties:
- Dr. Sarah Johnson (Cardiologist)
- Dr. Michael Chen (Dermatologist)
- Dr. Emily Davis (Pediatrician)
- Dr. Robert Wilson (Orthopedic Surgeon)
- Dr. Lisa Anderson (Gynecologist)

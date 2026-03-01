# TripMitra 🌍

**TripMitra** is a travel recommendation mobile app developed using **Flutter** with **Firebase** backend integration.

It helps users explore tourist places, view detailed information, access Google Maps locations, view live weather updates, and book spots directly from the app. The app supports **user authentication** (Login/Register) and offers a **Guest Explore** mode for browsing without creating an account.

**Currently available for**: Mumbai, Goa, Delhi, Manali, Shimla, Jaipur, and more!

---

## 🎯 Project Description

TripMitra aims to make travel exploration easy and enjoyable. Users can:

- ✅ Create an account or log in securely using Firebase Authentication
- ✅ Explore city-based attractions (beaches, forts, hills, markets, cafes)
- ✅ View detailed information including descriptions, images, and user reviews
- ✅ Check live weather updates for tourist destinations
- ✅ Access Google Map locations for each place
- ✅ Browse as a Guest without needing to log in
- ✅ Book and save favorite spots

The app is designed to offer an intuitive, smooth, and visually appealing experience tailored for travelers.

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-----------|
| **Frontend** | Flutter, Dart |
| **Backend** | Firebase (Authentication & Firestore Database) |
| **Location Services** | Google Maps API |
| **Weather** | OpenWeatherMap API |
| **Local Storage** | SharedPreferences |
| **Version Control** | Git & GitHub |

---

## 📂 Project Structure

```
TripMitra-App/
│
├── lib/
│   ├── main.dart                 # App entry point
│   ├── login.dart                # Login Page UI and logic
│   ├── register.dart             # Registration Page UI and logic
│   ├── asGuest.dart              # Guest Explore Mode
│   ├── home.dart                 # Home Page with user greeting
│   ├── explore.dart              # Explore cities and attractions
│   ├── city_detail.dart          # Detailed view of tourist spots
│   └── models/                   # Data models for types and structures
│
├── assets/
│   ├── images/                   # App images, icons, and logos
│   └── data/                     # JSON or static data files
│
├── android/                      # Android-specific configuration
├── ios/                          # iOS-specific configuration
│
├── pubspec.yaml                  # Flutter dependencies and configuration
├── pubspec.lock                  # Locked dependency versions
├── README.md                     # Project documentation (this file)
├── LICENSE                       # Open-source license
├── .gitignore                    # Git ignore file
└── docs/                         # Screenshots and additional docs
```

---

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:
- Flutter SDK (latest stable version)
- Dart SDK (comes with Flutter)
- Android Studio or Xcode (for emulator/device)
- Git

### Installation & Setup

**1. Clone the Repository**
```bash
git clone https://github.com/your-username/TripMitra-App.git
cd TripMitra-App
```

**2. Install Flutter Packages**
```bash
flutter pub get
```

**3. Configure Firebase**
- Create a Firebase project at [Firebase Console](https://console.firebase.google.com)
- Add an Android and/or iOS app to your Firebase project
- Download configuration files:
  - Android: `google-services.json` → `android/app/`
  - iOS: `GoogleService-Info.plist` → `ios/Runner/`
- Enable **Email/Password Authentication** in Firebase Authentication

**4. Add API Keys**
- Get a **Google Maps API Key** from [Google Cloud Console](https://console.cloud.google.com)
- Get an **OpenWeatherMap API Key** from [OpenWeatherMap](https://openweathermap.org/api)
- Create a `.env` file in the project root or store keys securely in constants

**5. Run the Application**
```bash
flutter run
```

For specific platform targets:
```bash
flutter run -d android    # Android emulator/device
flutter run -d ios        # iOS simulator/device
```

---

## 📹 Demo

🎬 **[View TripMitra Demo Recording](https://your-demo-link.com)**

*To add your demo:*
- Record your app walkthrough
- Upload to Google Drive, YouTube, or Loom
- Replace the link above

---

## ✨ Key Features

- 🔐 **Secure Authentication** - Login and Registration with Firebase
- 🏞️ **Explore by City** - Browse attractions categorized by location
- 🗺️ **Google Maps Integration** - View exact locations of places
- 🌤️ **Live Weather** - Real-time weather information
- 🔍 **Search & Filter** - Find places by categories and preferences
- 👤 **Guest Mode** - Explore without creating an account
- 📱 **Responsive UI** - Beautiful and intuitive interface
- ⭐ **User Reviews** - Read and leave reviews for places

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

Please ensure your code follows Flutter best practices and is well-documented.

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

You are free to use, modify, and distribute this project with proper attribution.

---

## 👨‍💻 About the Developer

Built with ❤️ using Flutter and Firebase.

For questions, suggestions, or collaborations, feel free to reach out!

# TripMitra 🌍

**TripMitra** is a travel recommendation mobile app developed using **Flutter** with **Firebase** backend integration.  
It helps users explore tourist places, view detailed information, access Google Maps location, see live weather, and even book spots directly from the app.  
The app supports **user authentication** (Login/Register) and also offers **Guest Explore** mode.  
Currently available for cities like **Mumbai, Goa, Delhi, Manali, Shimla, Jaipur**, and more!

---

## 🚀 Project Description

TripMitra aims to make travel exploration easy and enjoyable.  
Users can:
- Create an account or log in securely using Firebase Authentication.
- Explore city-based attractions like beaches, forts, hills, markets, and cafes.
- View place details including **description**, **images**, **user reviews**, **live weather updates**, and **Google Map** location.
- Access an **Explore page** with different cities and categories (Coastal, Hill Station).
- Browse as a **Guest** without needing to log in.

The app is designed to offer an intuitive, smooth, and visually appealing experience, keeping travelers' needs in mind.

---

## 🛠️ Tech Stack

- **Flutter** (Frontend, Mobile App)
- **Firebase** (Authentication and Database)
- **Google Maps API** (for maps integration)
- **OpenWeatherMap API** (for live weather info)
- **SharedPreferences** (for local credential storage)
- **Dart** (Programming Language)

---

## 📂 Project Structure

```
TripMitra/
|
|├── lib/
|   ├── main.dart               # App entry point
|   ├── login.dart               # Login Page
|   ├── register.dart            # Registration Page
|   ├── home.dart                # Home Page with user greeting and location
|   ├── explore.dart             # Explore different cities and tourist spots
|   ├── city_detail.dart         # Detailed view for each tourist spot
|   ├── models/                  # (optional) Data models for places
|
|├── assets/
|   ├── images/                  # All app images (places, icons, logos)
|
|├── test/                        # Test cases (if any)
|
|├── android/                     # Android specific files
|├── ios/                         # iOS specific files
|
|├── pubspec.yaml                 # Dependencies and assets declaration
|├── pubspec.lock                 # Dependency lock file
|├── README.md                    # Project Documentation
|├── LICENSE                      # Open-source License (if any)
|├── .gitignore                   # Files to be ignored by Git
└── docs/                        # App screenshots, diagrams (optional)
```

---

## 🌟 How to Run Locally

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/TripMitra.git
   cd TripMitra
   ```

2. **Install Flutter packages**
   ```bash
   flutter pub get
   ```

3. **Setup Firebase**
   - Create a Firebase project.
   - Add Android/iOS app to Firebase.
   - Download and place `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) into your project.
   - Enable Email/Password Authentication in Firebase Console.

4. **Add APIs**
   - Get a **Google Maps API Key** and **OpenWeatherMap API Key**.
   - Save keys securely in environment files (use `.env`).

5. **Run the App**
   ```bash
   flutter run
   ```

---

## 📸 Project Demo

🔗 **[Click here to view the TripMitra Demo Recording](https://your-link-to-recording.com)**  
*(Upload your app screen recording on Google Drive, YouTube, or Loom and paste the link here)*

---

## ✨ Features Summary

- 🔐 User Login and Registration
- 🏞️ Explore Places by City and Category
- 🗺 View on Google Maps
- ☀️ Live Weather Information
- 🔎 Search and Filter Places
- 👥 Guest Explore Mode
- 📱 Responsive and Clean UI

---

## 🤝 Contribution

Contributions are welcome!  
Feel free to open an issue or submit a pull request if you'd like to improve TripMitra.

---

## 📓 License

This project is licensed under the MIT License.  
Feel free to use and modify with proper credits!

---

# 🌟 Thank you for exploring TripMitra!


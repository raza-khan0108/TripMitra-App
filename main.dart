import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'login.dart';
import 'register.dart';
import 'asGuest.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TripMitra',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/asGuest': (context) => GuestPage(),
      },
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TripMitra',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'Roboto',
            )),
        backgroundColor: const Color(0xFF6A1B9A),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            child: Text('Login', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/register'),
            child: Text('Register', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B9A), Color(0xFF1976D2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Explore Beautiful Destinations',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: Text('Login', style: TextStyle(color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(200, 50),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: Text('Register', style: TextStyle(color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(200, 50),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/asGuest'),
                child: Text('Continue as Guest',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> places = [
    {
      'name': 'Gateway of India',
      'desc': 'Historic monument in Mumbai facing the Arabian Sea.',
      'detail': 'Built during the 20th century in honor of King George V and Queen Mary.',
      'image': '"assets/images/Gateway-to-India_0.jpg"',
      'link': 'https://www.booking.com/searchresults.en-gb.html?ss=Gateway+of+India+Mumbai',
      'maps': 'https://www.google.com/maps/place/Gateway+of+India/@18.921984,72.834654,17z',
      'lat': 18.921984,
      'lon': 72.834654,
      'reviews': [
        "Iconic landmark with breathtaking views of the sea",
        "Great place for photography but can get crowded",
        "Beautiful architecture, best visited in the evening"
      ],
    },
    {
      'name': 'Marine Drive',
      'desc': 'Scenic sea-facing promenade in South Mumbai.',
      'detail': 'assets/images/1644821221Marine_Lines_Mumbai_2021.jpg"',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Marine_Drive_Mumbai.jpg',
      'link': 'https://www.booking.com/searchresults.en-gb.html?ss=Marine+Drive+Mumbai',
      'maps': 'https://www.google.com/maps/place/Marine+Drive/@18.9430,72.8235,17z',
      'lat': 18.9430,
      'lon': 72.8235,
      'reviews': [
        "Perfect place for a peaceful evening walk",
        "The sea breeze is so refreshing here",
        "Lovely views, especially when the lights come on"
      ],
    },
    {
      'name': 'Elephanta Caves',
      'desc': 'Ancient cave temples dedicated to Lord Shiva.',
      'detail': 'UNESCO World Heritage Site. Great for history lovers.',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/e/e2/Elephanta_Caves_Sculpture.jpg',
      'link': 'https://www.booking.com/searchresults.en-gb.html?ss=Elephanta+Caves+Mumbai',
      'maps': 'https://www.google.com/maps/place/Elephanta+Caves/@18.9633,72.9316,17z',
      'lat': 18.9633,
      'lon': 72.9316,
      'reviews': [
        "Fascinating historical site worth the boat ride",
        "The carvings are incredible - bring a guide to understand better",
        "Hot and humid but the caves are amazing"
      ],
    },
    {
      'name': 'Sanjay Gandhi National Park',
      'desc': 'Green oasis in the heart of Mumbai.',
      'detail': 'Home to flora, fauna, and Kanheri Caves.',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/2/28/Sanjay_Gandhi_National_Park_entrance.jpg',
      'link': 'https://www.booking.com/searchresults.en-gb.html?ss=Sanjay+Gandhi+National+Park+Mumbai',
      'maps': 'https://www.google.com/maps/place/Sanjay+Gandhi+National+Park/@19.2147,72.9106,17z',
      'lat': 19.2147,
      'lon': 72.9106,
      'reviews': [
        "Great escape from the city noise",
        "The lion safari is a must-do experience",
        "Beautiful trails for nature lovers"
      ],
    },
    {
      'name': 'Chhatrapati Shivaji Maharaj Vastu Sangrahalaya',
      'desc': 'A heritage museum formerly Prince of Wales Museum.',
      'detail': 'Ancient sculptures, miniature paintings & more.',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/3/37/Prince_of_Wales_Museum.jpg',
      'link': 'https://www.booking.com/searchresults.en-gb.html?ss=Chhatrapati+Shivaji+Maharaj+Vastu+Sangrahalaya+Mumbai',
      'maps': 'https://www.google.com/maps/place/Chhatrapati+Shivaji+Maharaj+Vastu+Sangrahalaya/@18.9260,72.8327,17z',
      'lat': 18.9260,
      'lon': 72.8327,
      'reviews': [
        "Excellent collection of Indian artifacts",
        "The building itself is a work of art",
        "Well-maintained galleries with good information"
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mumbai Attractions'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B9A), Color(0xFF1976D2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: places.map((place) => buildPlaceCard(context, place)).toList(),
        ),
      ),
    );
  }

  Widget buildPlaceCard(BuildContext context, Map<String, dynamic> place) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              place['image'],
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place['name'],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                SizedBox(height: 6),
                Text(
                  place['desc'],
                  style: TextStyle(color: Colors.grey[800]),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(place: place),
                      ),
                    );
                  },
                  child: Text('View Details'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> place;

  DetailPage({required this.place});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Map<String, dynamic>? weatherData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    final apiKey = 'fa29417faaab4c3306b5fbb4cca00164'; // Replace with your actual API key
    final lat = widget.place['lat'];
    final lon = widget.place['lon'];
    final url = 'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        setState(() {
          weatherData = json.decode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final reviews = widget.place['reviews'] as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place['name'], style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B9A), Color(0xFF1976D2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(widget.place['image'], height: 250, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.place['detail'], style: TextStyle(fontSize: 16)),
                  SizedBox(height: 16),
                  Text("🌤️ Current Weather", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  if (isLoading)
                    Center(child: CircularProgressIndicator())
                  else if (weatherData != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Temperature: ${weatherData!['main']['temp']}°C", style: TextStyle(fontSize: 14)),
                        Text("Conditions: ${weatherData!['weather'][0]['description']}", style: TextStyle(fontSize: 14)),
                        Text("Humidity: ${weatherData!['main']['humidity']}%", style: TextStyle(fontSize: 14)),
                        Text("Wind: ${weatherData!['wind']['speed']} m/s", style: TextStyle(fontSize: 14)),
                      ],
                    )
                  else
                    Text("Weather data unavailable", style: TextStyle(fontSize: 14)),
                  SizedBox(height: 16),
                  Text("⭐ Visitor Reviews", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  ...reviews.map((review) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text("• $review", style: TextStyle(fontSize: 14)),
                  )),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => launchUrl(Uri.parse(widget.place['link']), mode: LaunchMode.externalApplication),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Book Now on Booking.com'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => launchUrl(Uri.parse(widget.place['maps']), mode: LaunchMode.externalApplication),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Open in Google Maps'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

<<<<<<< HEAD
// Stateful Widget für die Navigation
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

=======
// Weil sich die angezeigte Seite ändern kann -> StatefulWidget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  //_HomeScreenState-Instanz, die den Zustand verwaltet
>>>>>>> 7eefc11 (AppBar & BottomSheet added)
  @override
  HomeScreenState createState() => HomeScreenState();
}

<<<<<<< HEAD
class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Liste der Seiten (Home, Gallery, Settings)
  static final List<Widget> _pages = <Widget>[
    const GalleryPage(), // Hier fügen wir die neue Seite mit GridView ein
    const Center(child: Text('Settings')),
  ];

=======
//  Klasse speichert den aktuellen Zustand der Seite
class HomeScreenState extends State<HomeScreen> {
  // Speicherung der ausgewählten Seite
  // Hier wird gespeichert, welcher Tab gerade aktiv ist
  // 0 zeigt die erste Seite
  int _selectedIndex = 0;

  // Liste der möglichen Seiten vom BottonSheet
  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Home Page')),
    Center(child: Text('Gallery')),
    Center(child: Text('Settings')),
  ];

  // Methode zur Änderung der Seite
  // Bei jedem Klick wird der Wert auf den angegebenen Tap gesetzt
>>>>>>> 7eefc11 (AppBar & BottomSheet added)
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text("Kevins Gallery"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
=======
        title: Text("Kevins Gallery"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _pages[_selectedIndex], // Je nach Wert wird Seite x angezeigt
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
>>>>>>> 7eefc11 (AppBar & BottomSheet added)
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Gallery'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
<<<<<<< HEAD
      ),
    );
  }
}

//  GalleryPage mit GridView
class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 Spalten
          crossAxisSpacing: 10, // Abstand zwischen den Spalten
          mainAxisSpacing: 10, // Abstand zwischen den Zeilen
        ),
        itemCount: 10, // Anzahl der Bilder (hier Dummy-Daten)
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Bild ${index + 1}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
=======
>>>>>>> 7eefc11 (AppBar & BottomSheet added)
      ),
    );
  }
}

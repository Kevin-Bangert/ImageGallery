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

// Weil sich die angezeigte Seite ändern kann -> StatefulWidget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  //_HomeScreenState-Instanz, die den Zustand verwaltet
  @override
  HomeScreenState createState() => HomeScreenState();
}

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
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kevins Gallery"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _pages[_selectedIndex], // Je nach Wert wird Seite x angezeigt
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Gallery'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}

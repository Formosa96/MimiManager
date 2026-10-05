import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'task_screen.dart';
import 'map_screen.dart';
import 'notes_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();

}

class _NavigationScreenState extends State<NavigationScreen>
{
  int selectedIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const TasksScreen(),
    const MapScreen(),
    const NotesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar:  BottomNavigationBar(

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Zadania',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Notatki',
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mimimanager/screens/navigation_screen.dart';

void main() {
  runApp(const MimiManagerApp());
}

class MimiManagerApp extends StatelessWidget {
  const MimiManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MimiManager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
        useMaterial3: true,
      ),
      home: const NavigationScreen(),
    );
  }
}
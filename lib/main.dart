import 'package:flutter/material.dart';
import 'package:mimimanager/screens/navigation_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: 'https://ufvbrioltjiyrmtuqebg.supabase.com',
      publishableKey: 'sb_publishable_LFgVHK8Ja83PE8Q7wBqgUA_wJPwoQWz');
  runApp(const MimiManagerApp());
}

class MimiManagerApp extends StatelessWidget {
  const MimiManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MimiManager',
      home: const NavigationScreen(),
    );
  }
}
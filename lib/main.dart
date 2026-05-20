import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Tienda App',
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(
        fontFamily: 'Helvetica Neue',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8CC63F)),
        useMaterial3: true,
      ),
      home: const LoginPage(), 
    );
  }
}
 
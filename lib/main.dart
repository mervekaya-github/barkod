import 'package:flutter/material.dart';
//import 'package:mysql1/mysql1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:barkod_sistemi/screens/login_screen.dart'; // login_screen.dart'ı projenin klasör yapısına göre import et

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Burada LoginScreen widget'ını çağırıyoruz
    );
  }
}

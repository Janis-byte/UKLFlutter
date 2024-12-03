import 'package:flutter/material.dart';
import 'package:ukl/Cinema.dart';
import 'package:ukl/MyBooking.dart';
import 'package:ukl/dashboard.dart';
import 'package:ukl/login.dart';
import 'package:ukl/loginn.dart';
import 'package:ukl/movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/Login': (context) => LoginView(),
        '/DashBoard': (context) => Dashboard(),
        '/MyBooking': (context) => MyBookingScreen(),
        '/Movies': (context) => MovieScreen(),
        '/Cinema': (context) => Cinema(),
      },
    );
  }
}

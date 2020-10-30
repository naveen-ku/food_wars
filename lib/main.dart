import 'package:flutter/material.dart';
import 'package:food_wars/screens/auth.dart';
import 'package:food_wars/screens/foodcourt.dart';
import 'package:food_wars/screens/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (BuildContext context) => LandingScreen(),
        '/auth': (BuildContext context) => AuthScreen(),
        '/foodcourt': (BuildContext context) => FoodCourtScreen(),
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => FoodCourtScreen());
      },
    );
  }
}

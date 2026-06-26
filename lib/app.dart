import 'package:flutter/material.dart';
import 'package:water_delivery_app/screens/splash/splash_screen.dart';

class WaterDeliveryApp extends StatelessWidget {
  const WaterDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Delivery 💧',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        fontFamily: 'Roboto',
      ),

      home: const SplashScreen(),
    );
  }
}

import 'package:water_delivery_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:water_delivery_app/screens/splash/splash_screen.dart';

class WaterDeliveryApp extends StatelessWidget {
  const WaterDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Delivery 💧',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      ),

      home: const SplashScreen(),
    );
  }
}

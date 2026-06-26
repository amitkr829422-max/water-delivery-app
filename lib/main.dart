import 'package:flutter/material.dart';

void main() {
  runApp(const WaterDeliveryApp());
}

class WaterDeliveryApp extends StatelessWidget {
  const WaterDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Delivery',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.water_drop,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              "Water Delivery💧",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text("Pure Water Delivered"),
          ],
        ),
      ),
    );
  }
}

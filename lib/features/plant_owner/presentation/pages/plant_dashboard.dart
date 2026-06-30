import 'package:flutter/material.dart';

class PlantDashboard extends StatelessWidget {
  const PlantDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plant Owner Dashboard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Plant Owner",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: const Icon(Icons.water_drop, color: Colors.blue),
                title: const Text("Water Stock"),
                subtitle: const Text("150 Jars Available"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_cart, color: Colors.green),
                title: const Text("Today's Orders"),
                subtitle: const Text("25 Orders"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.people, color: Colors.orange),
                title: const Text("Customers"),
                subtitle: const Text("120 Active Customers"),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Manage Orders"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomerDashboard extends StatelessWidget {
  const CustomerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final bottles = [
      {"name": "20L Water Jar", "price": "₹50"},
      {"name": "Mineral Water", "price": "₹30"},
      {"name": "1L Bottle", "price": "₹20"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Dashboard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text("Available Water Products"),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: bottles.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: const Icon(
                        Icons.water_drop,
                        color: Colors.blue,
                      ),
                      title: Text(bottles[index]["name"]!),
                      subtitle: Text(bottles[index]["price"]!),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Order"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
